require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)
drink_list = ingredients['drinks']
drink_list.each do |drink|
  Ingredient.create(name: "#{drink['strIngredient1']}")
end

Cocktail.create(name: 'Caipirinha', remote_photo_url: 'caipirinha.jpg')
Cocktail.create(name: 'Caipiroska', remote_photo_url: 'caipiroska.jpg')
Cocktail.create(name: 'Kir Royale', remote_photo_url: 'Kir-Royale.jpg')
Cocktail.create(name: 'Sangria', remote_photo_url: 'sangria.jpg')
Cocktail.create(name: 'Mojito', remote_photo_url: 'mojito.jpg')
Cocktail.create(name: 'Bellini', remote_photo_url: 'bellini.jpg')
