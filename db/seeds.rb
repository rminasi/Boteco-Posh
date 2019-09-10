require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)
drink_list = ingredients['drinks']
drink_list.each do |drink|
  Ingredient.create(name: "#{drink['strIngredient1']}")
end

Cocktail.create(name: 'Caipirinha', remote_photo_url: 'https://www.creative-culinary.com/wp-content/uploads/caipirinha-3.jpg')
Cocktail.create(name: 'Caipiroska', remote_photo_url: 'https://i.pinimg.com/originals/b0/88/d7/b088d7172bcc4a2ec56667c9de93ecda.jpg')
Cocktail.create(name: 'Kir Royale', remote_photo_url: 'https://www.bakingbeauty.net/wp-content/uploads/2019/04/kir-royale-1-of-1-3-700x1050.jpg')
Cocktail.create(name: 'Long Islan', remote_photo_url: 'https://images.kitchenstories.io/recipeImages/LongIslandIcedTea_4x3/LongIslandIcedTea_4x3-large-landscape-150.jpg')
Cocktail.create(name: 'Sangria', remote_photo_url: 'https://images.unsplash.com/photo-1536935338788-846bb9981813?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
Cocktail.create(name: 'Mojito', remote_photo_url: 'https://images.unsplash.com/photo-1501199532894-9449c0a85a77?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
