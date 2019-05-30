# HELPER FUNCTION FOR IMAGES

# def open_asset(file_name)
#   File.open(Rails.root.join('db', 'seed_assets', file_name))
# end

# # Only run on development (local) instances not on production, etc.
unless Rails.env.development?
  puts "Development seeds only (for now)!"
  exit 0
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Dropping all table data"

User.destroy_all
Ingredient.destroy_all
Recipe.destroy_all
Quantity.destroy_all
Book.destroy_all

puts "Seeding Data ..."

# TEST

user1 = User.create!({ name: "test" })

# INGREDIENTS

puts "Re-creating Ingredients ..."

ing1 = Ingredient.create!({
  name:      "cauliflower",
  unit:      "head",
  food_type: "vegetable"
})

ing2 = Ingredient.create!({
  name:      "vegetable oil",
  unit:      "mL",
  food_type: "sauce"
})

ing3 = Ingredient.create!({
  name:      "garlic powder",
  unit:      "g",
  food_type: "spice"
})

ing4 = Ingredient.create!({
  name:      "onion powder",
  unit:      "g",
  food_type: "spice"
})

ing5 = Ingredient.create!({
  name:      "paprika powder",
  unit:      "g",
  food_type: "spice"
})

ing6 = Ingredient.create!({
  name:      "salt",
  unit:      "g",
  food_type: "spice"
})

ing7 = Ingredient.create!({
  name:      "black pepper",
  unit:      "g",
  food_type: "spice"
})

ing8 = Ingredient.create!({
  name:      "dates",
  unit:      "whole",
  food_type: "fruit"
})

ing9 = Ingredient.create!({
  name:      "oats",
  unit:      "g",
  food_type: "grain"
})

ing10 = Ingredient.create!({
  name:      "almond butter",
  unit:      "mL",
  food_type: "sauce"
})

ing11 = Ingredient.create!({
  name:      "ground flaxseed",
  unit:      "g",
  food_type: "grain"
})

ing12 = Ingredient.create!({
  name:      "ground cinnamon",
  unit:      "g",
  food_type: "spice"
})

ing13 = Ingredient.create!({
  name:      "yogurt",
  unit:      "mL",
  food_type: "dairy"
})

ing14 = Ingredient.create!({
  name:      "frozen berries",
  unit:      "g",
  food_type: "fruit"
})

ing15 = Ingredient.create!({
  name:       "cooked lentils",
  unit:       "g",
  food_type:  "grain"
})

ing16 = Ingredient.create!({
  name:       "cooked chickpeas",
  unit:       "g",
  food_type:  "grain"
})

ing17 = Ingredient.create!({
  name:       "celery",
  unit:       "whole",
  food_type:  "vegetable"
})

ing18 = Ingredient.create!({
  name:       "carrot",
  unit:       "whole",
  food_type:  "vegetable"
})

ing19 = Ingredient.create!({
  name:       "bell pepper",
  unit:       "whole",
  food_type:  "vegetable"
})

ing20 = Ingredient.create!({
  name:       "red onion",
  unit:       "whole",
  food_type:  "vegetable"
})

ing21 = Ingredient.create!({
  name:       "dill",
  unit:       "g",
  food_type:  "spice"
})

ing22 = Ingredient.create!({
  name:       "sunflower seeds",
  unit:       "g",
  food_type:  "grain"
})

ing23 = Ingredient.create!({
  name:       "pickle",
  unit:       "whole",
  food_type:  "vegetable"
})

ing24 = Ingredient.create!({
  name:       "capers",
  unit:       "g",
  food_type:  "spice"
})

ing25 = Ingredient.create!({
  name:       "lemon",
  unit:       "mL",
  food_type:  "fruit"
})

ing26 = Ingredient.create!({
  name:       "tahini",
  unit:       "g",
  food_type:  "sauce"
})

ing27 = Ingredient.create!({
  name:       "mustard",
  unit:       "g",
  food_type:  "sauce"
})

ing28 = Ingredient.create!({
  name:       "tomato",
  unit:       "whole",
  food_type:  "vegetable"
})

ing29 = Ingredient.create!({
  name:       "basil",
  unit:       "whole",
  food_type:  "spice"
})

ing30 = Ingredient.create!({
  name:       "balsamic vinegar",
  unit:       "mL",
  food_type:  "sauce"
})

ing31 = Ingredient.create!({
  name:       "olive oil",
  unit:       "mL",
  food_type:  "sauce"
})

ing32 = Ingredient.create!({
  name:       "garlic",
  unit:       "whole",
  food_type:  "vegetable"
})

ing33 = Ingredient.create!({
  name:       "mushroom",
  unit:       "whole",
  food_type:  "vegetable"
})

ing34 = Ingredient.create!({
  name:       "rice",
  unit:       "g",
  food_type:  "grain"
})

ing35 = Ingredient.create!({
  name:       "bouillon",
  unit:       "whole",
  food_type:  "spice"
})

ing36 = Ingredient.create!({
  name:       "zucchini",
  unit:       "whole",
  food_type:  "vegetable"
})

ing37 = Ingredient.create!({
  name:       "chia seeds",
  unit:       "g",
  food_type:  "grain"
})

ing38 = Ingredient.create!({
  name:       "coconut milk",
  unit:       "mL",
  food_type:  "dairy"
})

ing39 = Ingredient.create!({
  name:       "vanilla extract",
  unit:       "mL",
  food_type:  "spice"
})

ing40 = Ingredient.create!({
  name:       "pomegranate",
  unit:       "whole",
  food_type:  "fruit"
})

ing41 = Ingredient.create!({
  name:       "banana",
  unit:       "whole",
  food_type:  "fruit"
})

ing42 = Ingredient.create!({
  name:       "pumpkin seeds",
  unit:       "g",
  food_type:  "grain"
})

ing43 = Ingredient.create!({
  name:       "kidney beans",
  unit:       "g",
  food_type:  "grain"
})

ing44 = Ingredient.create!({
  name:       "water",
  unit:       "mL",
  food_type:  "sauce"
})

ing45 = Ingredient.create!({
  name:       "oregano",
  unit:       "g",
  food_type:  "spice"
})

ing46 = Ingredient.create!({
  name:       "paprika",
  unit:       "g",
  food_type:  "spice"
})

ing47 = Ingredient.create!({
  name:       "chili pepper",
  unit:       "g",
  food_type:  "spice"
})

ing48 = Ingredient.create!({
  name:       "hot sauce",
  unit:       "mL",
  food_type:  "sauce"
})

ing49 = Ingredient.create!({
  name:       "tortilla",
  unit:       "whole",
  food_type:  "grain"
})

ing50 = Ingredient.create!({
  name:       "cabbage",
  unit:       "whole",
  food_type:  "vegetable"
})

ing51 = Ingredient.create!({
  name:       "green onion",
  unit:       "whole",
  food_type:  "vegetable"
})

ing52 = Ingredient.create!({
  name:       "cilantro",
  unit:       "whole",
  food_type:  "spice"
})

# RECIPES

puts "Re-creating Recipes ..."

rec1 = Recipe.create!({
  name:        "Cauliflower Lentil Curry",
  image:       "https://static.wixstatic.com/media/26357d_c27847b36be6429ba735bd715378bd59~mv2_d_6000_4000_s_4_2.jpg/v1/fill/w_1260,h_840,al_c,q_85,usm_0.66_1.00_0.01/26357d_c27847b36be6429ba735bd715378bd59~mv2_d_6000_4000_s_4_2.webp",
  servings:    6,
  time:        70,
  preparation: "\n 1. Preheat the oven to 400 F/ 210 C. \n 2. Toss the cauliflower with the oil and spices until coated. \n 3. Spread evenly on a baking tray lined with baking paper or tinfoil. \n 4. Roast for 40-50 minutes, until crispy and golden, stopping to mix once halfway. \n 5. In a large pot on medium heat, cook the onions in the oil, until soft and slightly golden. \n 6. Add splashes of water if needed to prevent burning or sticking in the pot. \n 7. Once soft, add the garlic and all the spices, and stir until fragrant (about 1 minutes). \n 8. Add the can of tomatoes and diced tomatoes, and stir to combine everything. \n 9. Allow to simmer for 5 minutes. \n 10. Finally, add the coconut milk, lentils, spinach, and roasted cauliflower, and mix until everything is combined and heated through, about 5 minutes. \n 12. Serve with rice, and enjoy!",
  meal_type:   "meal"
})

rec2 = Recipe.create!({
  name:        "Yogurt Breakfast Bars",
  image:       "https://static.wixstatic.com/media/26357d_90b4cade532243748568d864fbc229f9~mv2_d_3582_5373_s_4_2.jpg/v1/fill/w_1260,h_1890,al_c,q_90,usm_0.66_1.00_0.01/26357d_90b4cade532243748568d864fbc229f9~mv2_d_3582_5373_s_4_2.webp",
  servings:     8,
  time:         15,
  preparation:  "\n 1. First, stew the berries until soft, set aside to cool. \n 2. In a food processor, blend the dates until they are smooth, scraping down the sides as needed. Add the oatmeal, ground flaxseed, almond butter, and cinnamon and combine, scraping down the sides once or twice. \n 3. Transfer the mix to a parchment lined baking dish and press the base into the dish. \n 4. Top with the yogurt and spread out evenly. \n 5. Dot the yogurt with the stewed berries and use a knife to swirl. \n 6. Place into the freezer and let freeze for 1-2 hours, or until the bars are solid enough to cut. \n 7. When removed from the freezer, cut into squares or bars of desired size. \n 8. Let thaw for 3-5 minutes before eating. Enjoy!",
  meal_type:    "breakfast"
})

rec3 = Recipe.create!({
  name:        "Chickpea Dill Dip",
  image:       "https://static.wixstatic.com/media/26357d_9ea67e5914e34c3c83dd6a79adf376ed~mv2_d_6000_4000_s_4_2.jpg/v1/fill/w_1260,h_840,al_c,q_85,usm_0.66_1.00_0.01/26357d_9ea67e5914e34c3c83dd6a79adf376ed~mv2_d_6000_4000_s_4_2.webp",
  servings:     4,
  time:         15,
  preparation:  "\n 1. Add chickpeas to a large bowl and mash with a fork until all chickpeas are broken. \n 2. Add the remaining ingredients to the bowl and mix, mashing slightly. Chill before serving, if possible, to enhance flavours. Enjoy as-is like a salad, or with crackers and veggies, or spread onto a sandwich!",
  meal_type:    "snack"
})

rec4 = Recipe.create!({
  name:         "Bruschetta",
  image:        "https://static.wixstatic.com/media/26357d_215a204c72164417a9e8c10f9187d3ad~mv2_d_6000_4000_s_4_2.jpg/v1/fill/w_1260,h_840,al_c,q_85,usm_0.66_1.00_0.01/26357d_215a204c72164417a9e8c10f9187d3ad~mv2_d_6000_4000_s_4_2.webp",
  servings:     10,
  time:         10,
  preparation:  "\n 1. Add all ingredients to a medium bowl and gently toss until combined. \n 2. When adding the tomatoes, allow any juice that seeped out when cutting to remain on the cutting board; do not add this to the bowl. \n 3. Although you can enjoy immediately, it’s best to cover and let sit in the fridge for at least 2 hours to allow the flavours to meld. \n 4. Serve fresh on toasted bread, or even toast together in the oven for a warm bruschetta. \n 5. Personally, I enjoyed it best when spreading some hummus on the toasted bread before adding the mixture on top. \n 6.Garnish with fresh basil if desired. Enjoy!",
  meal_type:     "snack"
})

rec5 = Recipe.create!({
  name:         "Mushroom Risotto",
  image:        "https://static.wixstatic.com/media/26357d_d79c01a32e744205bceece8aed0b309d~mv2_d_6000_4000_s_4_2.jpg/v1/fill/w_1260,h_840,al_c,q_85,usm_0.66_1.00_0.01/26357d_d79c01a32e744205bceece8aed0b309d~mv2_d_6000_4000_s_4_2.webp",
  servings:     4,
  time:         50,
  preparation:  "\n 1. In a pot on high heat, add the olive oil, onion, garlic, mushrooms + 2 Tbsp (30 mL) water to the large pot on high heat, and sauté until all the moisture released from the mushrooms evaporates, about 8 minutes. \n 2. Then add 1/3 of the rice, bouillon cubes plus 2 cups (500 mL) boiling water. Bring to a boil then reduce to a simmer, partially cover and allow to sit for 10 minutes. \n 3. After this, add the rest of the rice and zucchini to the pot, stirring frequently and scraping the bottom of the pot with a wooden spatula to avoid burning. Continue for about 5 minutes, before adding the tomatoes. \n 4. With the heat at medium-high, continue to stir, adding water as needed, until the rice is al dente and a risotto consistency is achieved. This will take about 10-15 minutes. Serve while hot, garnish and serve with a side of salad if desire and enjoy!",
  meal_type:    "meal"
})

rec6 = Recipe.create!({
  name:         "Breakfast Pudding",
  image:        "https://static.wixstatic.com/media/26357d_7195fe55859040cba59576d838a24ec8~mv2_d_5184_3456_s_4_2.jpg/v1/fill/w_1260,h_840,al_c,q_85,usm_0.66_1.00_0.01/26357d_7195fe55859040cba59576d838a24ec8~mv2_d_5184_3456_s_4_2.webp",
  servings:     1,
  time:         60,
  preparation:  "\n 1. Combine all pudding ingredients in a bowl or jar, stirring to combine. \n 2. Let sit for 5-10 minutes and the stir again to prevent clumping. \n 3. Cover and chill in the fridge for 1-2 hours, or overnight (yay make-ahead breakfasts!). \n 4. Stir well before serving. Portion into bowl(s) and add desired toppings. Mine were bananas, pomegranate seeds, pumpkin seeds and sunflower seeds.",
  meal_type:    "breakfast"
})

rec7 = Recipe.create!({
  name:        "Purple Burrito Bowl",
  image:       "https://static.wixstatic.com/media/26357d_8a9d235d4b924579857cfe2fd7a23364~mv2.jpg/v1/fill/w_1024,h_683,al_c,q_85/26357d_8a9d235d4b924579857cfe2fd7a23364~mv2.webp",
  servings:    4,
  time:        20,
  preparation: "\n 1. Add oil, beans, and chopped tomato to a medium-sized pot on medium-high heat. Stir to combine. Continue to stir for 3-5 minutes until the tomatoes and beans have heated and softened. \n 2. Reduce to medium heat and add the water and bean-filling spices. Partially cover. \n 3. While the beans are marinating in spices on the stove, place all salsa ingredients into a bowl and mix to combine. \n 4. Return periodically to the beans and stir to avoid burning. Feel free to mash beans into a chunky puree of desired. \n 5. After 10-15 minutes on the stove, the beans are ready. Until ready to serve, reduce the heat to low and add a splash of water if needed to allow the spices to continue to infuse into the beans. \n 6. Toast the tortilla wraps, cut the cabbage and prepare the garnish.",
  meal_type:   "meal"
})

# QUANTITIES

puts "Re-creating Quantities ..."

q1 = Quantity.create!({
  ingredient_id: ing1.id,
  recipe_id:     rec1.id,
  quantity:      1
})

q2 = Quantity.create!({
  ingredient_id: ing2.id,
  recipe_id:     rec1.id,
  quantity:      15
})

q3 = Quantity.create!({
  ingredient_id: ing3.id,
  recipe_id:     rec1.id,
  quantity:      5
})

q4 = Quantity.create!({
  ingredient_id: ing4.id,
  recipe_id:     rec1.id,
  quantity:      5
})

q5 = Quantity.create!({
  ingredient_id: ing5.id,
  recipe_id:     rec1.id,
  quantity:      1.5
})

q6 = Quantity.create!({
  ingredient_id: ing6.id,
  recipe_id:     rec1.id,
  quantity:      0.75
})

q7 = Quantity.create!({
  ingredient_id: ing7.id,
  recipe_id:     rec1.id,
  quantity:      0.75
})

q8 = Quantity.create!({
  ingredient_id: ing8.id,
  recipe_id:     rec2.id,
  quantity:      12
})

q9 = Quantity.create!({
  ingredient_id: ing9.id,
  recipe_id:     rec2.id,
  quantity:      180
})

q10 = Quantity.create!({
  ingredient_id: ing10.id,
  recipe_id:     rec2.id,
  quantity:      250
})

q11 = Quantity.create!({
  ingredient_id: ing11.id,
  recipe_id:     rec2.id,
  quantity:      28
})

q12 = Quantity.create!({
  ingredient_id: ing12.id,
  recipe_id:     rec2.id,
  quantity:      5
})

q13 = Quantity.create!({
  ingredient_id: ing13.id,
  recipe_id:     rec2.id,
  quantity:      375
})

q14 = Quantity.create!({
  ingredient_id: ing14.id,
  recipe_id:     rec2.id,
  quantity:      100
})

q15 = Quantity.create!({
  ingredient_id: ing15.id,
  recipe_id:     rec3.id,
  quantity:      200
})

q16 = Quantity.create!({
  ingredient_id: ing16.id,
  recipe_id:     rec3.id,
  quantity:      240
})

q17 = Quantity.create!({
  ingredient_id: ing17.id,
  recipe_id:     rec3.id,
  quantity:      1
})

q18 = Quantity.create!({
  ingredient_id: ing18.id,
  recipe_id:     rec3.id,
  quantity:      1
})

q19 = Quantity.create!({
  ingredient_id: ing19.id,
  recipe_id:     rec3.id,
  quantity:      1.25
})

q20 = Quantity.create!({
  ingredient_id: ing20.id,
  recipe_id:     rec3.id,
  quantity:      1.25
})

q21 = Quantity.create!({
  ingredient_id: ing21.id,
  recipe_id:     rec3.id,
  quantity:      12
})

q22 = Quantity.create!({
  ingredient_id: ing22.id,
  recipe_id:     rec3.id,
  quantity:      10
})

q23 = Quantity.create!({
  ingredient_id: ing23.id,
  recipe_id:     rec3.id,
  quantity:      1
})

q24 = Quantity.create!({
  ingredient_id: ing24.id,
  recipe_id:     rec3.id,
  quantity:      5
})

q25 = Quantity.create!({
  ingredient_id: ing25.id,
  recipe_id:     rec3.id,
  quantity:      15
})

q26 = Quantity.create!({
  ingredient_id: ing26.id,
  recipe_id:     rec3.id,
  quantity:      45
})

q27 = Quantity.create!({
  ingredient_id: ing27.id,
  recipe_id:     rec3.id,
  quantity:      2.5
})

q28 = Quantity.create!({
  ingredient_id: ing6.id,
  recipe_id:     rec3.id,
  quantity:      1.25
})

q29 = Quantity.create!({
  ingredient_id: ing7.id,
  recipe_id:     rec3.id,
  quantity:      1.25
})

q30 = Quantity.create!({
  ingredient_id: ing28.id,
  recipe_id:     rec4.id,
  quantity:      7
})

q31 = Quantity.create!({
  ingredient_id: ing29.id,
  recipe_id:     rec4.id,
  quantity:      25
})

q32 = Quantity.create!({
  ingredient_id: ing30.id,
  recipe_id:     rec4.id,
  quantity:      15
})

q33 = Quantity.create!({
  ingredient_id: ing31.id,
  recipe_id:     rec4.id,
  quantity:      5
})

q34 = Quantity.create!({
  ingredient_id: ing3.id,
  recipe_id:     rec4.id,
  quantity:      2.5
})

q35 = Quantity.create!({
  ingredient_id: ing6.id,
  recipe_id:     rec4.id,
  quantity:      1.25
})

q36 = Quantity.create!({
  ingredient_id: ing7.id,
  recipe_id:     rec4.id,
  quantity:      1.25
})

q37 = Quantity.create!({
  ingredient_id: ing31.id,
  recipe_id:     rec5.id,
  quantity:      5
})

q38 = Quantity.create!({
  ingredient_id: ing20.id,
  recipe_id:     rec5.id,
  quantity:      2
})

q39 = Quantity.create!({
  ingredient_id: ing32.id,
  recipe_id:     rec5.id,
  quantity:      3
})

q40 = Quantity.create!({
  ingredient_id: ing33.id,
  recipe_id:     rec5.id,
  quantity:      20
})

q41 = Quantity.create!({
  ingredient_id: ing34.id,
  recipe_id:     rec5.id,
  quantity:      285
})

q42 = Quantity.create!({
  ingredient_id: ing35.id,
  recipe_id:     rec5.id,
  quantity:      2
})

q43 = Quantity.create!({
  ingredient_id: ing36.id,
  recipe_id:     rec5.id,
  quantity:      1
})

q44 = Quantity.create!({
  ingredient_id: ing28.id,
  recipe_id:     rec5.id,
  quantity:      2
})

q45 = Quantity.create!({
  ingredient_id: ing37.id,
  recipe_id:     rec6.id,
  quantity:      45
})

q46 = Quantity.create!({
  ingredient_id: ing38.id,
  recipe_id:     rec6.id,
  quantity:      250
})

q47 = Quantity.create!({
  ingredient_id: ing8.id,
  recipe_id:     rec6.id,
  quantity:      7
})

q48 = Quantity.create!({
  ingredient_id: ing39.id,
  recipe_id:     rec6.id,
  quantity:      5
})

q49 = Quantity.create!({
  ingredient_id: ing40.id,
  recipe_id:     rec6.id,
  quantity:      0.5
})

q50 = Quantity.create!({
  ingredient_id: ing41.id,
  recipe_id:     rec6.id,
  quantity:      1
})

q51 = Quantity.create!({
  ingredient_id: ing42.id,
  recipe_id:     rec6.id,
  quantity:      30
})

q52 = Quantity.create!({
  ingredient_id: ing2.id,
  recipe_id:     rec7.id,
  quantity:      5
})

q53 = Quantity.create!({
  ingredient_id: ing43.id,
  recipe_id:     rec7.id,
  quantity:      560
})

q54 = Quantity.create!({
  ingredient_id: ing28.id,
  recipe_id:     rec7.id,
  quantity:      1
})

q55 = Quantity.create!({
  ingredient_id: ing44.id,
  recipe_id:     rec7.id,
  quantity:      60
})

q56 = Quantity.create!({
  ingredient_id: ing4.id,
  recipe_id:     rec7.id,
  quantity:      7
})

q57 = Quantity.create!({
  ingredient_id: ing45.id,
  recipe_id:     rec7.id,
  quantity:      4
})

q58 = Quantity.create!({
  ingredient_id: ing29.id,
  recipe_id:     rec7.id,
  quantity:      4
})

q59 = Quantity.create!({
  ingredient_id: ing46.id,
  recipe_id:     rec7.id,
  quantity:      7.2
})

q60 = Quantity.create!({
  ingredient_id: ing7.id,
  recipe_id:     rec7.id,
  quantity:      1.8
})

q61 = Quantity.create!({
  ingredient_id: ing47.id,
  recipe_id:     rec7.id,
  quantity:      1.8
})

q62 = Quantity.create!({
  ingredient_id: ing48.id,
  recipe_id:     rec7.id,
  quantity:      30
})

q63 = Quantity.create!({
  ingredient_id: ing49.id,
  recipe_id:     rec7.id,
  quantity:      4
})

q64 = Quantity.create!({
  ingredient_id: ing50.id,
  recipe_id:     rec7.id,
  quantity:      0.5
})

q65 = Quantity.create!({
  ingredient_id: ing19.id,
  recipe_id:     rec7.id,
  quantity:      1
})

q66 = Quantity.create!({
  ingredient_id: ing51.id,
  recipe_id:     rec7.id,
  quantity:      2
})

q67 = Quantity.create!({
  ingredient_id: ing52.id,
  recipe_id:     rec7.id,
  quantity:      15
})

# BOOKS

puts "Re-creating BOOKS ..."

b1 = Book.create!({
  user_id:    user1.id,
  recipe_id:  rec1.id
})

