# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 
 
  Song.create(title:"A new day has come", singer:"Celine Dion", writer: "Celine Dion", 
    release_date: "25-Nov-2001", genere: "Classic", length:"3.2")


####
song_list = [
  [ "Love Sotry", "Taylor", "Taylor Swift", "25-Nov-2010", "Country", "3.5"],
  [ "Chasing Cars", "Snow Patrol", "Snow", "September 2007", "Classic", "3.51"]
]

song_list.each do |title, singer, writer, date, genere, length|
  Song.create( title: title, singer: singer, writer: writer, 
    release_date: date, genere: genere, length: length)
end 


##
song_list = [
  {:title => "Chasing Pavements", :singer => "Adele", :writer => "Adele", 
    :release_date => "Nov 2010", :genere => "Classic", :length =>"3.2"},
  {:title => "Clarity", :singer => "Glee", :writer => "Glee", 
    :release_date => "2009", :genere => "Pop", :length =>"2.59"}
]


song_list.each do |movie|
  Song.create!(movie)
end