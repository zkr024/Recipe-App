# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create(email: 'test@test.com', password: 'password', password_confirmation: 'password')

#food
Food.create(name: 'Apple', measurement_unit: 'units', price: '10', quantity: '10', user_id: user1.id )
Food.create(name: 'Orange', measurement_unit: 'units', price: '10', quantity: '10', user_id: user1.id )
x = Food.create(name: 'Salt', measurement_unit: 'grams', price: '10', quantity: '10', user_id: user1.id )
Food.create(name: 'Sugar', measurement_unit: 'grams', price: '10', quantity: '10', user_id: user1.id )
Food.create(name: 'Coffee', measurement_unit: 'grams', price: '10', quantity: '10', user_id: user1.id )

#recipes
f = Recipe.create(name: 'Spageti', preparation_time: '1', cooking_time: '0.5', description: 'Spaghetti is a long, thin, solid, cylindrical pasta. It is a staple food of traditional Italian cuisine. Like other pasta, spaghetti is made of milled wheat and water and sometimes enriched with vitamins and minerals. Italian spaghetti is typically made from durum wheat semolina.', public: false, user_id: user1.id)
Recipe.create(name: 'Hamburguer', preparation_time: '.5', cooking_time: '0.5', description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially", public: false, user_id: user1.id)
Recipe.create(name: 'Pizza', preparation_time: '.5', cooking_time: '0.75', description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially", public: true, user_id: user1.id)
Recipe.create(name: 'Chicken', preparation_time: '1.5', cooking_time: '1', description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially", public: true, user_id: user1.id)
Recipe.create(name: 'Lassagna', preparation_time: '2', cooking_time: '1.5', description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially", public: false, user_id: user1.id)

#recipesFoods
RecipeFood.create(recipe_id: f.id, food_id: x.id, quantity: '1')