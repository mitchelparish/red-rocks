class RedRocks::Concert
  attr_accessor :name, :opener, :date, :time, :tickets_URL

  def self.next_show
    self.scrape_concert
  end

  def self.scrape_concert
    doc = Nokogiri::HTML(open("https://www.redrocksonline.com/"))
    concert = self.new
    concert.name = doc.search("h1.summary").text
    concert.opener = doc.search("h2").text
    concert.date = doc.search("span.m-date__singleDate").first.text
    concert.time = doc.search("span.m-doors").first.text.gsub("Doors","").strip
    concert.tickets_URL = doc.search("div.m-ticket a").attr("href").text

    concert
  end
end
