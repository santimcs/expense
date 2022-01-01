# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

groups = ["Apparel", "Communication","Edutainment","Food","Luxury","Medicine",
"Others","Parent","Shelter","Transportation"]
groups.each{|d| Group.where(:name => d).first_or_create}

  CSV.foreach(Rails.root.join("db/categories.csv"), headers: true) do |row|

      Category.find_or_create_by(sequence: row[0], name: row[1], default: row[2],
      group_id: row[3])

  end