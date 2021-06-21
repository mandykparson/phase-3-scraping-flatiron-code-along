require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper

  
  def get_page
    doc = Nokogiri::HTML(open("https://github.com/mandykparson/phase-3-scraping-flatiron-code-along.git"))

  end

  def get_courses
    Course.all.each do |course|
      puts course
    end
  end

  def make_courses(title, schedule, description)
    Course.all.each do |course|
      title = course.title
      schedule.course.schedule
      description = course.description
      Course.create(title: title, schedule: schedule, description: description)
    end
  end
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  
end



