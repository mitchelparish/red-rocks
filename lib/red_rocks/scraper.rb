require 'pry'

class RedRocks::Scraper

  def self.scrape
    doc = Nokogiri::HTML(open("https://www.redrocksonline.com/"))


    doc.css.each do |concert|

      name = concert.css("h1.summary").text
      opener = concert.css("h2").text
      date = concert.css("span.m-date__singleDate").text
      time = concert.css("span.m-doors").text.gsub("Doors","").strip
      tickets_URL = concert.css("div.m-ticket a").attr("href").text

      RedRocks::Concert.new(name, opener, date, time, tickets_URL)

    end
  end
end
