
module BnewsScraper
  
  class Magic

    attr_accessor :source, :doc  

    def initialize
      @source = "http://nytimes.com"
    end

    def call
      @doc = Nokogiri::HTML(open(self.source))
      
      result = [{"business_news"=>"id(\"top-news\")/div[3]/div[1]/div[1]/div[1]/article[1]/h2[1]/a[1]"}].collect do |v| 
        set_value(v)
      end
      
      BnewsScraper::Info.new(result)
    end

    private

    def set_value(hash)
      key, value = hash.first
      result = get_data_by(key, value)
      if result.empty?
        result = get_data_by(key, strip_tbody(value))
      end
      {key => result}
    end

    def get_data_by(method_name, path)
      method_type_hash = {"business_news"=>"Text"}
      if method_type_hash[method_name] == "Text"
        self.doc.xpath(path).text.strip
      elsif method_type_hash[method_name] == "Links"
        self.doc.xpath(path).attr('href').text
      elsif method_type_hash[method_name] == "Media"
        self.doc.xpath(path).attr('src').text
      end
    end

    def strip_tbody(path)
      path.gsub(/tbody[.]/,"") if !path.nil?
    end

  end

end

