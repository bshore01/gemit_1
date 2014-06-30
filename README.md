
# Bnews_scraper

scrapes b news kana;l

## Installation

Clone bnews_scraper's git repository and install it as a gem.

    $ git clone https://github.com/bshore01/gemit_1.git

    $ cd gemit_1

    $ gem install bnews_scraper

## Command Line Usage

Use bnews_scraper in your command line to print out the data whenever you want.

    $ bnews_scraper

## Ruby Usage

Require bnews_scraper in your app to return an object with the data included. 

    $ require 'bnews_scraper'

Alternatively, require it directly from Github. Don't forget to bundle to add it to your Gemfile.lock.

    $ gem 'bnews_scraper', :git => 'git://github.com/bshore01/gemit_1.git'

    $ bundle

Instantiate an instance of Bnews Scraper to use it in your Ruby app.

    $ BnewsScraper::Magic.new.call

Save that instance in a variable and call any of your defined methods (business_news) on it.

Bnews_scraper was cut with love, by [Gem It](http://gemit.us/).

