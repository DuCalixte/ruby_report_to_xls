# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require File.expand_path('../../lib/app/models/seed_generator', __FILE__)
require('faker')

@projects = RubyReportToXls::App::Models::SeedGenerator.createProject()
@projects.each do |project| 
	project.builds = RubyReportToXls::App::Models::SeedGenerator.createBuilds(project.id, 20 + SecureRandom.random_number(10))
end	