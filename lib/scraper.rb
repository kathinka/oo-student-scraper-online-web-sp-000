require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url="https://learn-co-curriculum.github.io/student-scraper-test-page/")

    #les siden med nokogiri
    html = open(index_url)
    @doc = Nokogiri::HTML(html)
    #hent alle studentene
    #lag loop på antall student card
    @doc.css(".student-card")
    #student navn, lokasjon og url
    #hent ut denne info og lagre i array
    #lag variabel/keys for lagring av info
    puts @doc.css(".student-name")
    puts @doc.css(".student-location")
    puts @doc.css(".student-card a")

    #opprett array med hash
    # :name, :location, :profile_url
    #populer array med hash med verdier hentet fra siden
    #returner array med hash for hver student i listen


  end

  def self.scrape_profile_page(profile_url)

    #hent
  end

end
