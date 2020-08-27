# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Designer.destroy_all
puts 'creating designer'
designer1 = Designer.create(name: "Benu", description: "Uniforms converge in flowing forms; single linear leather pieces manifest themselves in vivid structures. Gentle flowing plissé out of parachutes complete the collection. Coral and lime refresh the colour palette. With „Make Love Not Fashion“ we get back to the origin of the term “fashion”: The art of craftmanship.")
designer2 = Designer.create(name: "BUKI AKOMOLAFE", description: "The label stands for Contemporary high-end women’s clothing with a slight hint to androgyny, precise tailoring and high quality eco materials." )
designer3 = Designer.create(name: "Cruba", description: "We strive to combine art and functionality. We are committed to fostering a wholesome environment - meaning on a human scale, with respect to the natural resources, climate, environment, durability and collaboration. We source the finest fabrics from all over Europe - because we love Europe! ")
#designerphoto2 = URI.open('http://bukiakomolafe.com/wp-content/uploads/2014/10/buki_akomolafe24182.jpg')
#designer1.photo.attach(io: designerphoto2, filename: 'Buki.jpg', content_type: 'image/jpg')
puts "designer created"
category1 = Category.create(name: "Tops", gender: "women")
product1 = Product.new(name: "Vest", price: "75", color: "navy blue", category: category1)
product1.designer = designer1
product1.save!




