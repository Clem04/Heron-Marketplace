puts 'seeding'

#Clear Database
User.destroy_all
Merchant.destroy_all
Products.destroy_all
Label.destroy_all
Category.destroy_all
SubCategory.destroy_all

# User
clem = User.create!(first_name: 'Clem', last_name: 'Paiement',
  email: 'clem@heronmarket.ca', password: '123456',
  address: '5333 Casgrain Ave #102, Montreal, Quebec H2T 1X3', points: '300')
rose = User.create!(first_name: 'Rose', last_name: 'Grondin',
  email: 'rose@heronmarket.ca', password: '123456',
  address: '5333 Casgrain Ave #102, Montreal, Quebec H2T 1X3', points: '300')
nour = User.create!(first_name: 'Nour', last_name: 'Souid',
  email: 'nour@heronmarket.ca', password: '123456',
  address: '5333 Casgrain Ave #102, Montreal, Quebec H2T 1X3', points: '300')
ines = User.create!(first_name: 'ines', last_name: 'Belghiti',
  email: 'ines@heronmarket.ca', password: '123456',
  address: '5333 Casgrain Ave #102, Montreal, Quebec H2T 1X3', points: '300')

# Categories
fashion = Category.create!(name: 'Fashion')
# SubCategories - Fashion
tops = SubCategory.create!(name: 'Tops', category: fashion)
bottoms = SubCategory.create!(name: 'Bottoms', category: fashion)
underwears = SubCategory.create!(name: 'Underwears', category: fashion)
shoes = SubCategory.create!(name: 'Shoes', category: fashion)
jewelleries = SubCategory.create!(name: 'Jewelleries', category: fashion)
bags = SubCategory.create!(name: 'Bags', category: fashion)
scarves_and_belts = SubCategory.create!(name: 'Scarves and Belts', category: fashion)
fashion_sales = SubCategory.create!(name: 'Sales', category: fashion)


beauty_and_wellness = Category.create!(name: 'Beauty and Wellness')
# SubCategories - BeautyAndWellness
makeup = SubCategory.create!(name: 'Makeup', category: beauty_and_wellness)
skin_care = SubCategory.create!(name: 'Skin Care', category: beauty_and_wellness)
hair_care = SubCategory.create!(name: 'Hair Care', category: beauty_and_wellness)
body_care = SubCategory.create!(name: 'Body Care', category: beauty_and_wellness)
candles_and_essential_oils = SubCategory.create!(name: 'Candle and Essential Oils', category: beauty_and_wellness)
accessories = SubCategory.create!(name: 'Accessories', category: beauty_and_wellness)
bundles = SubCategory.create!(name: 'Bundles', category: beauty_and_wellness)
beauty_sales = SubCategory.create!(name: 'sales', category: beauty_and_wellness)


food = Category.create!(name: 'Food')
# SubCategories - Food
vegetables = SubCategory.create!(name: 'Vegetables', category: food)
fruits = SubCategory.create!(name: 'Fruits', category: food)
meat_and_fish = SubCategory.create!(name: 'Meat and Fish', category: food)
dairy_and_eggs = SubCategory.create!(name: 'Dairy and Eggs', category: food)
bread_and_bakery = SubCategory.create!(name: 'Bread and Bakery', category: food)
organic_goods = SubCategory.create!(name: 'Organic Food', category: food)
beverages = SubCategory.create!(name: 'Beverages', category: food)
snacks_cookies = SubCategory.create!(name: 'Snacks and Cookies', category: food)
food_sales = SubCategory.create!(name: 'Sales', category: food)


home_decor = Category.create!(name: 'Home Decor')
# SubCategories - HomeDecor
wall_decor = SubCategory.create!(name: 'Wall Decor', category: home_decor)
throws_and_blankets = SubCategory.create!(name: 'Throws and Blankets', category: home_decor)
planters_and_vases = SubCategory.create!(name: 'Planters and Vases', category: home_decor)
home_accessories = SubCategory.create!(name: 'Home Accessories', category: home_decor)
plates_and_bowls = SubCategory.create!(name: 'Plates and Bowls', category: home_decor)
glassware_and_mugs = SubCategory.create!(name: 'Glassware and Mugs', category: home_decor)
serveware = SubCategory.create!(name: 'Serveware', category: home_decor)
cultery_and_ustensiles = SubCategory.create!(name: 'Cultery and Ustensiles', category: home_decor)
towels = SubCategory.create!(name: 'Towels', category: home_decor)
storage = SubCategory.create!(name: 'Storage', category: home_decor)
eco_friendly = SubCategory.create!(name: 'Eco-Friendly', category: home_decor)
home_decor_sales = SubCategory.create!(name: 'Sales', category: home_decor)


# Merchant - Fashion
boutique_sleek_chic = Merchant.create!(name: 'Boutique sleek Chic',
  description: 'Excepteur duis deserunt qui tempor velit veniam eu cupidatat
  irure consectetur occaecat duis. In duis consectetur occaecat tempor minim
  consectetur sint ', location: 'Montreal, Qc Canada',
  public_email: 'info@boutiquesleekchic.com', facebook: 'www.facebook.com',
  instagram: 'www.instagram.com', comment: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.',
  website: 'https://www.sleekchic.net')
# Products - Fashion


# Merchant - Beauty and Wellness
bare_beauty = Merchant.create!(name: 'Bare Beauty',
  description: 'Excepteur duis deserunt qui tempor velit veniam eu cupidatat
  irure consectetur occaecat duis. In duis consectetur occaecat tempor minim
  consectetur sint ', location: 'Montreal, Qc Canada',
  public_email: 'info@boutiquesleekchic.com', facebook: 'www.facebook.com',
  instagram: 'www.instagram.com', comment: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.',
  website: 'https://www.barebeauty.ca')
# Products - Beauty and Wellness


# Merchant - Food
rustic_grocery = Merchant.create!(name: 'Rustic Grocery',
  description: 'Excepteur duis deserunt qui tempor velit veniam eu cupidatat
  irure consectetur occaecat duis. In duis consectetur occaecat tempor minim
  consectetur sint ', location: 'Montreal, Qc Canada',
  public_email: 'info@boutiquesleekchic.com', facebook: 'www.facebook.com',
  instagram: 'www.instagram.com', comment: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.',
  website: 'https://www.rusticgrocery.com')
# Products - Food


# Merchant - Home Decor
wild_bungalow = Merchant.create!(name: 'Wild Bungalow',
  description: 'Excepteur duis deserunt qui tempor velit veniam eu cupidatat
  irure consectetur occaecat duis. In duis consectetur occaecat tempor minim
  consectetur sint ', location: 'Montreal, Qc Canada',
  public_email: 'info@boutiquesleekchic.com', facebook: 'www.facebook.com',
  instagram: 'www.instagram.com', comment: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.',
  website: 'https://www.wildbungalow.com')
# Products - Home Decor



# Labels
organic = Label.create!(description: 'This brand uses/offers organic fabrics,
  ingredients and/or comply with standards of organic farming.')
made_in_canada = Label.create!(description: 'At least 70 percent of this brand
  merchandise is produced in Canada.')
fair_trade = Label.create!(description: 'This brand helps artisans in developing
  countries achieve good trading and improves social and environmental standards.')
cruelty_free = Label.create!(description: 'This brand does not manufacture or
  offer products made by methods that involve experimentation on animals.')
vegan = Label.create!(description: 'This brand does not produce products that
  comes from animals or goods containing animal products.')
paraben_free = Label.create!(description: 'This brand offers and/or produces
  paraben free products')
green_and_clean = Label.create!(description: 'This brand offers and/or produces products with
  environmentally friendly ingredients and their procedures are designed to
  preserve human health and environmental quality.')
recycle_material = Label.create!(description: 'This brand offers and/or manufures
  products made of recycled materials(s)')
transparent = Label.create!(description: 'This brand is transparent about its
  business activities.')
ethical = Label.create!(description: 'This brand follows ethical pratices regarding
  their workplace and production activities.')
women_founded = Label.create!(description: 'This brands is women founded and/or owned.')

puts 'completed'
