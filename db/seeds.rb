# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'roo/excel'

xlsx = Roo::Excelx.new(File.expand_path('../../JABot/Recruiters/googleunirecruiters.xlsx'))

xlsx.each_row_streaming(offset: 1) do |row|
  Recruiter.find_or_create_by(first_name: row[2].value, last_name: row[3].value, current_postion: row[4].value)
end