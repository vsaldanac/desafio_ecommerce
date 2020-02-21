# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.destroy_all

tatara_father = Category.create(name: 'clothing') # or tatara_mother

tatara_father.children << Category.new(name: 'dresses')
tatara_father.children << Category.new(name: 'pants')
tatara_father.children << Category.new(name: 'shoes')

Category.find_by(name: 'dresses').children << Category.new(name: 'summer dresses')
Category.find_by(name: 'dresses').children << Category.new(name: 'winter dresses')
Category.find_by(name: 'dresses').children << Category.new(name: 'spring dresses')

Category.find_by(name: 'spring dresses').children << Category.new(name: 'vegan dresses')
Category.find_by(name: 'spring dresses').children << Category.new(name: 'ovolactic dresses')




