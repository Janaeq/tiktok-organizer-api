# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# CATEGORIES
coffee = Category.create(id: 1, name: "Coffee")

# VIDEOS
sample_video = Video.create(url: "https://www.tiktok.com/@caffeinication/video/6940339533191957765", category_id: 1)