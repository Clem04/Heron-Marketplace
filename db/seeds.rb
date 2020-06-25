puts 'seeding'

require "open-uri"

#Clear Database
Admin.destroy_all
User.destroy_all
LabelProduct.destroy_all
Product.destroy_all
Merchant.destroy_all
Label.destroy_all
Category.destroy_all
SubCategory.destroy_all

#Admins
stephane = Admin.create!(email: 'stephane@lewagon.ca', password: 'abcdefg')

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
katell = User.create!(first_name: 'Katell', last_name: 'Goaer',
  email: 'katell@heronmarket.ca', password: '123456',
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
fashion_accessories = SubCategory.create!(name: 'Scarves & Belts', category: fashion)
fashion_sales = SubCategory.create!(name: 'Sales', category: fashion)


beauty_and_wellness = Category.create!(name: 'Beauty & Wellness')
# SubCategories - BeautyAndWellness
makeup = SubCategory.create!(name: 'Makeup', category: beauty_and_wellness)
skin_care = SubCategory.create!(name: 'Skin Care', category: beauty_and_wellness)
hair_care = SubCategory.create!(name: 'Hair Care', category: beauty_and_wellness)
body_care = SubCategory.create!(name: 'Body Care', category: beauty_and_wellness)
candles_and_essential_oils = SubCategory.create!(name: 'Candle & Essential Oils', category: beauty_and_wellness)
accessories_tools = SubCategory.create!(name: 'Accessories', category: beauty_and_wellness)
bundles = SubCategory.create!(name: 'Bundles', category: beauty_and_wellness)
beauty_sales = SubCategory.create!(name: 'sales', category: beauty_and_wellness)


food = Category.create!(name: 'Food')
# SubCategories - Food
vegetables = SubCategory.create!(name: 'Vegetables', category: food)
fruits = SubCategory.create!(name: 'Fruits', category: food)
meat_and_fish = SubCategory.create!(name: 'Meat & Fish', category: food)
dairy_and_eggs = SubCategory.create!(name: 'Dairy & Eggs', category: food)
bread_and_bakery = SubCategory.create!(name: 'Bread & Bakery', category: food)
organic_goods = SubCategory.create!(name: 'Organic Food', category: food)
beverages = SubCategory.create!(name: 'Beverages', category: food)
snacks_cookies = SubCategory.create!(name: 'Snacks & Cookies', category: food)
food_sales = SubCategory.create!(name: 'Sales', category: food)


home_decor = Category.create!(name: 'Home Decor')
# SubCategories - HomeDecor
wall_decor = SubCategory.create!(name: 'Wall Decor', category: home_decor)
throws_and_blankets = SubCategory.create!(name: 'Throws & Blankets', category: home_decor)
plants_and_vases = SubCategory.create!(name: 'Planters & Vases', category: home_decor)
home_accessories = SubCategory.create!(name: 'Home Accessories', category: home_decor)
plates_and_bowls = SubCategory.create!(name: 'Plates & Bowls', category: home_decor)
glassware_and_mugs = SubCategory.create!(name: 'Glassware & Mugs', category: home_decor)
serveware = SubCategory.create!(name: 'Serveware', category: home_decor)
cultery_and_ustensiles = SubCategory.create!(name: 'Cultery & Ustensiles', category: home_decor)
towels = SubCategory.create!(name: 'Towels', category: home_decor)
storage = SubCategory.create!(name: 'Storage', category: home_decor)
eco_friendly = SubCategory.create!(name: 'Eco-Friendly', category: home_decor)
home_decor_sales = SubCategory.create!(name: 'Sales', category: home_decor)


# Merchant - Fashion
boutique_sleek_chic = Merchant.create!(name: 'Boutique sleek Chic',
  password: '232323', email: 'admin@boutiquesleekchic.ca', description: 'Excepteur duis deserunt qui tempor velit veniam eu cupidatat
  irure consectetur occaecat duis. In duis consectetur occaecat tempor minim
  consectetur sint ', location: 'Montreal, Qc Canada',
  public_email: 'info@boutiquesleekchic.com', facebook: 'www.facebook.com',
  instagram: 'www.instagram.com', comment: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.',
  website: 'https://www.sleekchic.net',
  picture_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588091050/Heron-Market/merchants/SleekChic-Photo1_uc0pfn.jpg',
  picture_2: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588091025/Heron-Market/merchants/SleekChic-Photo2_rajrqi.jpg',
  picture_3: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588091042/Heron-Market/merchants/SleekChic-Photo3_vpkq9q.jpg',
  picture_4: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588091028/Heron-Market/merchants/SleekChic-Photo4_at7ecu.jpg')


# Products - Fashion
high_rise_jeans_367 = Product.create!(name: 'High Rise Jeans 367',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 79.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: bottoms.id)

  high_rise_jeans_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588099235/Heron-Market/Products/Fashion/High-Rise-Jeans_nfax9y.jpg')
  high_rise_jeans_367.photos.attach(io: high_rise_jeans_photo_1, filename: 'High-Rise-Jeans_nfax9y.jpg', content_type: 'image/jpg')
xsmall = ProductVariant.create(size: "XS", stock_qty: 3, product_id: high_rise_jeans_367.id)

black_backpack = Product.create!(name: 'Black Backpack',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 50.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: bags.id)

  black_backpack_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175277/Heron-Market/Products/Fashion/Black-Backpack_qnkoe5.jpg')
  black_backpack.photos.attach(io: black_backpack_photo_1, filename: 'Black-Backpack_qnkoe5.jpg', content_type: 'image/jpg')

red_dress = Product.create!(name: 'Red Dress',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 120.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id)

  red_dress_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175245/Heron-Market/Products/Fashion/Dress-Red-Front_znsbup.jpg')
  red_dress_photo_2 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175269/Heron-Market/Products/Fashion/Dress-Red-Back_jf1hrm.jpg')
  red_dress_photo_3 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175271/Heron-Market/Products/Fashion/Dress-Red-Details-Back_fww2ud.jpg')
  red_dress.photos.attach(io: red_dress_photo_1, filename: 'Dress-Red-Front_znsbup.jpg', content_type: 'image/jpg')
  red_dress.photos.attach(io: red_dress_photo_2, filename: 'Dress-Red-Back_jf1hrm.jpg', content_type: 'image/jpg')
  red_dress.photos.attach(io: red_dress_photo_3, filename: 'Dress-Red-Details-Back_fww2ud.jpg', content_type: 'image/jpg')

pink_heels = Product.create!(name: 'Pink Heels',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 118.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: shoes.id)

  pink_heels_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175271/Heron-Market/Products/Fashion/Pink-Heels_xwtoy9.jpg')
  pink_heels.photos.attach(io: pink_heels_photo_1, filename: 'Pink-Heels_xwtoy9.jpg', content_type: 'image/jpg')

scarf_blue = Product.create!(name: 'Blue Scarf',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 25.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: fashion_accessories.id)

  scarf_blue_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175267/Heron-Market/Products/Fashion/Scarf-Blue_eoastr.jpg')
  scarf_blue.photos.attach(io: scarf_blue_photo_1, filename: 'Scarf-Blue_eoastr.jpg', content_type: 'image/jpg')

scarf_red = Product.create!(name: 'Red Scarf',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 25.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: fashion_accessories.id)

  scarf_red_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175207/Heron-Market/Products/Fashion/Scarf-Red_pisovv.jpg')
  scarf_red.photos.attach(io: scarf_red_photo_1, filename: 'Scarf-Red_pisovv.jpg', content_type: 'image/jpg')

satin_blouse = Product.create!(name: 'Satin Blouse',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 89.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id)

  satin_blouse_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175183/Heron-Market/Products/Fashion/Satin-Blouse-Front_ud14op.jpg')
  satin_blouse_photo_2 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175171/Heron-Market/Products/Fashion/Satin-Blouse-Details-Front_hrnoc9.jpg')
  satin_blouse_photo_3 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175177/Heron-Market/Products/Fashion/Satin-Blouse-Back_bpbqxb.jpg')
  satin_blouse.photos.attach(io: satin_blouse_photo_1, filename: 'Satin-Blouse-Front_ud14op.jpg', content_type: 'image/jpg')
  satin_blouse.photos.attach(io: satin_blouse_photo_2, filename: 'Satin-Blouse-Details-Front_hrnoc9.jpg', content_type: 'image/jpg')
  satin_blouse.photos.attach(io: satin_blouse_photo_3, filename: 'Satin-Blouse-Back_bpbqxb.jpg', content_type: 'image/jpg')

mid_rise_jeans = Product.create!(name: 'Mid-Rise Jeans 367',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 75.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: bottoms.id)

  mid_rise_jeans_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588098951/Heron-Market/Products/Fashion/Mid-Rise-Jeans367_n4eict.jpg')
  mid_rise_jeans.photos.attach(io: mid_rise_jeans_photo_1, filename: 'Mid-Rise-Jeans367_n4eict.jpg', content_type: 'image/jpg')

sweater_pink = Product.create!(name: 'Pink Sweater',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 67.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id)

  sweater_pink_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588098951/Heron-Market/Products/Fashion/pink-sweater_m8pyvw.jpg')
  sweater_pink.photos.attach(io: sweater_pink_photo_1, filename: 'pink-sweater_m8pyvw.jpg', content_type: 'image/jpg')

over_the_knee_boots = Product.create!(name: 'Suede Over-the-Knee Boots',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 110.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: shoes.id)

  over_the_knee_boots_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175207/Heron-Market/Products/Fashion/Over-The-Knee-Boots_dms3zy.jpg')
  over_the_knee_boots.photos.attach(io: over_the_knee_boots_photo_1, filename: 'ver-The-Knee-Boots_dms3zy.jpg', content_type: 'image/jpg')

pastel_blazer = Product.create!(name: 'Pastel Blazer',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 89.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id)

  pastel_blazer_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189613/Heron-Market/Products/Fashion/Pastel-Spring-Blazer-Front_ihnh1t.png')
  pastel_blazer_photo_2 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189611/Heron-Market/Products/Fashion/Pastel-Spring-Blazer-Outfit_hanmwe.jpg')
  pastel_blazer_photo_3 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189608/Heron-Market/Products/Fashion/Pastel-Srping-Blazer-Outfit-2_yiu9qi.jpg')
  pastel_blazer.photos.attach(io: pastel_blazer_photo_1, filename: 'Pastel-Spring-Blazer-Front_ihnh1t.png', content_type: 'image/jpg')
  pastel_blazer.photos.attach(io: pastel_blazer_photo_2, filename: 'Pastel-Spring-Blazer-Outfit_hanmwe.jpg', content_type: 'image/jpg')
  pastel_blazer.photos.attach(io: pastel_blazer_photo_3, filename: 'Pastel-Srping-Blazer-Outfit-2_yiu9qi.jpg', content_type: 'image/jpg')

tims_blue = Product.create!(name: 'Blue Tims',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 150.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: shoes.id)

  tims_blue_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189623/Heron-Market/Products/Fashion/Tims-Blue_cv96hm.png')
  tims_blue_photo_2 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189600/Heron-Market/Products/Fashion/Tims-Blue-2_cngeg3.png')
  tims_blue_photo_3 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189655/Heron-Market/Products/Fashion/Times-Blue-3_ddcg4a.png')
  tims_blue.photos.attach(io: tims_blue_photo_1, filename: 'Tims-Blue_cv96hm.png', content_type: 'image/jpg')
  tims_blue.photos.attach(io: tims_blue_photo_2, filename: 'Tims-Blue-2_cngeg3.png', content_type: 'image/jpg')
  tims_blue.photos.attach(io: tims_blue_photo_3, filename: 'Times-Blue-3_ddcg4a.png', content_type: 'image/jpg')

studded_flats = Product.create!(name: 'Studded Flats',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 200.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: shoes.id)

  studded_flats_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588190413/Heron-Market/Products/Fashion/Studded-Flats_zqzjxi.png')
  studded_flats.photos.attach(io: studded_flats_photo_1, filename: 'Studded-Flats_zqzjxi.png', content_type: 'image/jpg')

washed_jeans = Product.create!(name: 'Washed Jeans',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 155.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: bottoms.id)

  washed_jeans_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588190609/Heron-Market/Products/Fashion/Washed-Jeans_s5lmgp.png')
  washed_jeans.photos.attach(io: washed_jeans_photo_1, filename: 'Washed-Jeans_s5lmgp.png', content_type: 'image/jpg')

pink_silhettos = Product.create!(name: 'Pink Silhetto',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 250.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: shoes.id)

  pink_silhettos_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189638/Heron-Market/Products/Fashion/Pink_Silhetto_mjmt1u.png')
  pink_silhettos.photos.attach(io: pink_silhettos_photo_1, filename: 'Pink_Silhetto_mjmt1u.png', content_type: 'image/jpg')

panama_hat = Product.create!(name: 'Panama Hat',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 45.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: fashion_accessories.id)

  panama_hat_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189623/Heron-Market/Products/Fashion/Panama-Hat_lfr2g4.jpg')
  panama_hat.photos.attach(io: panama_hat_photo_1, filename: 'Panama-Hat_lfr2g4.jpg', content_type: 'image/jpg')

jean_short = Product.create!(name: 'Jean Short',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 50.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: bottoms.id)

  jean_short_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189673/Heron-Market/Products/Fashion/Jean-Short-Outfit_tfhcsr.jpg')
  jean_short.photos.attach(io: jean_short_photo_1, filename: 'Jean-Short-Outfit_tfhcsr.jpg', content_type: 'image/jpg')

red_shoes = Product.create!(name: 'Red Shoes',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 175.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: shoes.id)

  red_shoes_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189600/Heron-Market/Products/Fashion/Red-Shoes_leldby.jpg')
  red_shoes.photos.attach(io: red_shoes_photo_1, filename: 'Red-Shoes_leldby.jpg', content_type: 'image/jpg')

leather_jacket = Product.create!(name: 'Leather Jacket',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 350.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id)


  leather_jacket_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189654/Heron-Market/Products/Fashion/Leather-Jacket_fh8yj7.jpg')
  leather_jacket_photo_2 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189663/Heron-Market/Products/Fashion/Leather-Jacket-Angle_ycr6pz.jpg')
  leather_jacket_photo_3 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189658/Heron-Market/Products/Fashion/Leather-Jacket-Outfit_o5sfcj.jpg')
  leather_jacket.photos.attach(io: leather_jacket_photo_1, filename: 'Leather-Jacket_fh8yj7.jpg', content_type: 'image/jpg')
  leather_jacket.photos.attach(io: leather_jacket_photo_2, filename: 'Leather-Jacket-Angle_ycr6pz.jpg', content_type: 'image/jpg')
  leather_jacket.photos.attach(io: leather_jacket_photo_3, filename: 'Leather-Jacket-Outfit_o5sfcj.jpg', content_type: 'image/jpg')

white_shirt = Product.create!(name: 'Crispy White Shirt',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 79.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id)

  white_shirt_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189599/Heron-Market/Products/Fashion/White-Shirt-Front_ndwyxk.jpg')
  white_shirt_photo_2 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189599/Heron-Market/Products/Fashion/White-Shirt-Details_fglcw8.jpg')
  white_shirt_photo_3 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189598/Heron-Market/Products/Fashion/White-Shirt-Outfit_hzkqj3.jpg')
  white_shirt.photos.attach(io: white_shirt_photo_1, filename: 'White-Shirt-Front_ndwyxk.jpg', content_type: 'image/jpg')
  white_shirt.photos.attach(io: white_shirt_photo_2, filename: 'White-Shirt-Details_fglcw8.jpg', content_type: 'image/jpg')
  white_shirt.photos.attach(io: white_shirt_photo_3, filename: 'White-Shirt-Outfit_hzkqj3.jpg', content_type: 'image/jpg')

bra_pantie_kit = Product.create!(name: 'Sexy Bra Panti Kit',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 135.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: underwears.id)

  bra_pantie_kit_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189707/Heron-Market/Products/Fashion/Bra-Pantie-Kit_kxa4nr.jpg')
  bra_pantie_kit.photos.attach(io: bra_pantie_kit_photo_1, filename: 'Bra-Pantie-Kit_kxa4nr.jpg', content_type: 'image/jpg')

lingerie_set = Product.create!(name: 'Cute Lingerie Set',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 275.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: underwears.id)

  lingerie_set_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189652/Heron-Market/Products/Fashion/Lingerie-Set_afrsve.jpg')
  lingerie_set.photos.attach(io: lingerie_set_photo_1, filename: 'Lingerie-Set_afrsve.jpg', content_type: 'image/jpg')

blue_shirt = Product.create!(name: 'Blue Shirt',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 78.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id)

  blue_shirt_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189706/Heron-Market/Products/Fashion/Blue-Shirt-Front_pxy7a5.jpg')
  blue_shirt_photo_2 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189696/Heron-Market/Products/Fashion/Blue-Shirt-Side_ptmqnf.jpg')
  blue_shirt_photo_3 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189692/Heron-Market/Products/Fashion/Blue-Shirt-Details_i5entx.jpg')
  blue_shirt.photos.attach(io: blue_shirt_photo_1, filename: 'Blue-Shirt-Front_pxy7a5.jpg', content_type: 'image/jpg')
  blue_shirt.photos.attach(io: blue_shirt_photo_2, filename: 'Blue-Shirt-Side_ptmqnf.jpg', content_type: 'image/jpg')
  blue_shirt.photos.attach(io: blue_shirt_photo_3, filename: 'Blue-Shirt-Details_i5entx.jpg', content_type: 'image/jpg')

embroided_Top = Product.create!(name: 'Embroided White Shirt',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 75.95,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id)

  embroided_Top_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189686/Heron-Market/Products/Fashion/Embroided-Top-Front_cxj3hk.jpg')
  embroided_Top_photo_2 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189681/Heron-Market/Products/Fashion/Embroided-Top-Side_gpyvs5.jpg')
  embroided_Top.photos.attach(io: embroided_Top_photo_1, filename: 'Embroided-Top-Front_cxj3hk.jpg', content_type: 'image/jpg')
  embroided_Top.photos.attach(io: embroided_Top_photo_2, filename: 'Embroided-Top-Side_gpyvs5.jpg', content_type: 'image/jpg')

light_pink_purse = Product.create!(name: 'Light Pink Purse',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 89.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: fashion_accessories.id)

  light_pink_purse_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189642/Heron-Market/Products/Fashion/Light-Pink-Purse_ckgxal.jpg')
  light_pink_purse.photos.attach(io: light_pink_purse_photo_1, filename: 'Light-Pink-Purse_ckgxal.jpg', content_type: 'image/jpg')

red_bag = Product.create!(name: 'Mini Red Bag',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 125.95,
  merchant_id: boutique_sleek_chic.id, sub_category_id: fashion_accessories.id)

  red_bag_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189605/Heron-Market/Products/Fashion/Red-Bag_jrtx51.jpg')
  red_bag.photos.attach(io: red_bag_photo_1, filename: 'Red-Bag_jrtx51.jpg', content_type: 'image/jpg')

jean_coat = Product.create!(name: 'Jean Coat',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 189.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id)

  jean_coat_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189663/Heron-Market/Products/Fashion/Jean-Coat_eaw4j6.png')
  jean_coat.photos.attach(io: jean_coat_photo_1, filename: 'Jean-Coat_eaw4j6.png', content_type: 'image/jpg')

sexy_red_pump = Product.create!(name: 'Sexy Red Pump',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 225.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: shoes.id)

  sexy_red_pump_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189600/Heron-Market/Products/Fashion/Sexy-Red-Pump_vud4ri.png')
  sexy_red_pump.photos.attach(io: sexy_red_pump_photo_1, filename: 'Sexy-Red-Pump_vud4ri.png', content_type: 'image/jpg')

light_brown_clutch = Product.create!(name: 'Mini Light Brown Clutch',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 330.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: fashion_accessories.id)

  light_brown_clutch_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189648/Heron-Market/Products/Fashion/Light-Brown-Clutch_v0femp.jpg')
  light_brown_clutch.photos.attach(io: light_brown_clutch_photo_1, filename: 'Light-Brown-Clutch_v0femp.jpg', content_type: 'image/jpg')

marble_earrings = Product.create!(name: 'Marble Earrings',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 225.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: jewelleries.id)

  marble_earrings_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189661/Heron-Market/Products/Fashion/marble-earrings_1_w5mmyl.jpg')
  marble_earrings_photo_2 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189706/Heron-Market/Products/Fashion/marble-earrings_dvdcsd.jpg')
  marble_earrings.photos.attach(io: marble_earrings_photo_1, filename: 'marble-earrings_1_w5mmyl.jpg', content_type: 'image/jpg')
  marble_earrings.photos.attach(io: marble_earrings_photo_2, filename: 'marble-earrings_dvdcsd.jpg.jpg', content_type: 'image/jpg')

pearl_earrings = Product.create!(name: 'Pearl Earrings',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 175.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: jewelleries.id)

  pearl_earrings_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189707/Heron-Market/Products/Fashion/Pearl-Earrings_narsws.jpg')
  pearl_earrings.photos.attach(io: pearl_earrings_photo_1, filename: 'Pearl-Earrings_narsws.jpg', content_type: 'image/jpg')

gold_chocker = Product.create!(name: 'Gold Chocker',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 45.95,
  merchant_id: boutique_sleek_chic.id, sub_category_id: jewelleries.id)

  gold_chocker_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189693/Heron-Market/Products/Fashion/Gold-Chocker_ik9oys.jpg')
  gold_chocker.photos.attach(io: gold_chocker_photo_1, filename: 'Gold-Chocker_ik9oys.jpg', content_type: 'image/jpg')

gold_bracelet = Product.create!(name: 'Gold Bracelet',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 165.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: jewelleries.id)

  gold_bracelet_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189676/Heron-Market/Products/Fashion/Gold-Bracelet_ctafq7.jpg')
  gold_bracelet.photos.attach(io: gold_bracelet_photo_1, filename: 'Gold-Bracelet_ctafq7.jpg', content_type: 'image/jpg')

gold_necklace = Product.create!(name: 'Dainty Gold Necklace',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 185.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: jewelleries.id)

  gold_necklace_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189704/Heron-Market/Products/Fashion/dainty-gold-necklace_qlvzqa.jpg')
  gold_necklace.photos.attach(io: gold_necklace_photo_1, filename: 'dainty-gold-necklace_qlvzqa.jpg', content_type: 'image/jpg')



# Merchant - Beauty and Wellness
bare_beauty = Merchant.create!(name: 'Bare Beauty',
  password: '232323', email: 'admin@barebeauty.ca', description: 'Excepteur duis deserunt qui tempor velit veniam eu cupidatat
  irure consectetur occaecat duis. In duis consectetur occaecat tempor minim
  consectetur sint ', location: 'Montreal, Qc Canada',
  public_email: 'info@boutiquesleekchic.com', facebook: 'www.facebook.com',
  instagram: 'www.instagram.com', comment: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.',
  website: 'https://www.barebeauty.ca',
  picture_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588091074/Heron-Market/merchants/BareBeauty-BathInspo_b25zkz.jpg',
  picture_2: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588091010/Heron-Market/merchants/BareBeauty-Product_kcnuud.jpg',
  picture_3: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588091036/Heron-Market/merchants/BareBeauty-NailPolisg_mthses.jpg',
  picture_4: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588091047/Heron-Market/merchants/BareBeauty-EssentialOils_jkwoq5.jpg')


# Products - Beauty and Wellness
infuser_oil = Product.create!(name: 'Essential Oil Infuser',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 75.00,
  merchant_id: bare_beauty.id, sub_category_id: candles_and_essential_oils.id)

  infuser_oil_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257714/Heron-Market/Products/beautywellness/Essential-Oils-Infuser_bq6auj.jpg')
  infuser_oil.photos.attach(io: infuser_oil_photo_1, filename: 'Essential-Oils-Infuser_bq6auj.jpg', content_type: 'image/jpg')

  quantity_ml = ProductVariant.create(size: "75ml", stock_qty: 3, product_id: infuser_oil.id)


flask_induser = Product.create!(name: 'Flask Difuser',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 28.65,
  merchant_id: bare_beauty.id, sub_category_id: candles_and_essential_oils.id)

  flask_induser_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257688/Heron-Market/Products/beautywellness/flask-infuser_kfpvms.jpg')
  flask_induser.photos.attach(io: flask_induser_photo_1, filename: 'flask-infuser_kfpvms.jpg', content_type: 'image/jpg')

aroma_candle = Product.create!(name: 'Aroma Candle',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 45.00,
  merchant_id: bare_beauty.id, sub_category_id: candles_and_essential_oils.id)

  aroma_candle_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257740/Heron-Market/Products/beautywellness/Aroma-Candles_byvhbj.jpg')
  aroma_candle.photos.attach(io: aroma_candle_photo_1, filename: 'Aroma-Candles_byvhbj.jpg', content_type: 'image/jpg')

eyeshadow = Product.create!(name: 'Classic Nude Shadows',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 45.95,
  merchant_id: bare_beauty.id, sub_category_id: makeup.id)

  eyeshadow_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257697/Heron-Market/Products/beautywellness/Eyeshadow_uqpwkb.jpg')
  eyeshadow.photos.attach(io: eyeshadow_photo_1, filename: 'Eyeshadow_uqpwkb.jpg', content_type: 'image/jpg')

soy_candle = Product.create!(name: 'Jasmin Soy Candle',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 80.00,
  merchant_id: bare_beauty.id, sub_category_id: candles_and_essential_oils.id)

  soy_candle_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257664/Heron-Market/Products/beautywellness/Soy_andle_inxlws.jpg')
  soy_candle.photos.attach(io: soy_candle_photo_1, filename: 'Soy_andle_inxlws.jpg', content_type: 'image/jpg')

skincare_bundle = Product.create!(name: 'One Skincare Bundle',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 40.95,
  merchant_id: bare_beauty.id, sub_category_id: skin_care.id)

  skincare_bundle_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257660/Heron-Market/Products/beautywellness/skincare-bundle_lwicqh.jpg')
  skincare_bundle.photos.attach(io: skincare_bundle_photo_1, filename: 'skincare-bundle_lwicqh.jpg', content_type: 'image/jpg')

countour_palette = Product.create!(name: 'Aly Countour Palette',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 55.00,
  merchant_id: bare_beauty.id, sub_category_id: makeup.id)

  countour_palette_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257733/Heron-Market/Products/beautywellness/contour-palette_t8rs64.jpg')
  countour_palette.photos.attach(io: countour_palette_photo_1, filename: 'contour-palette_t8rs64.jpg', content_type: 'image/jpg')

makeup_brush = Product.create!(name: 'Chelsea Makeup Brushes',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 75.96,
  merchant_id: bare_beauty.id, sub_category_id: accessories_tools.id)

  makeup_brush_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257672/Heron-Market/Products/beautywellness/Makeup-brush_fz9hqu.jpg')
  makeup_brush.photos.attach(io: makeup_brush_photo_1, filename: 'Makeup-brush_fz9hqu.jpg', content_type: 'image/jpg')

lipstick = Product.create!(name: 'Pinky Chicky Lipstick',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 65.00,
  merchant_id: bare_beauty.id, sub_category_id: makeup.id)

  lipstick_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257668/Heron-Market/Products/beautywellness/lipstick_zlkrhj.jpg')
  lipstick.photos.attach(io: lipstick_photo_1, filename: 'lipstick_zlkrhj.jpg', content_type: 'image/jpg')

shampoo = Product.create!(name: 'Apothecary87 Shampoo',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 32.95,
  merchant_id: bare_beauty.id, sub_category_id: hair_care.id)

  shampoo_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257698/Heron-Market/Products/beautywellness/Shampoo_z7bga5.jpg')
  shampoo.photos.attach(io: shampoo_photo_1, filename: 'Shampoo_z7bga5.jpg', content_type: 'image/jpg')

facial_roller = Product.create!(name: 'Sculpt Facial Roller',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 58.99,
  merchant_id: bare_beauty.id, sub_category_id: accessories_tools.id)

  facial_roller_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257738/Heron-Market/Products/beautywellness/Faceroller_eb0l9u.jpg')
  facial_roller.photos.attach(io: facial_roller_photo_1, filename: 'Faceroller_eb0l9u.jpg', content_type: 'image/jpg')

body_oil = Product.create!(name: 'Rose Body Oil',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 25.95,
  merchant_id: bare_beauty.id, sub_category_id: body_care.id)

  body_oil_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257704/Heron-Market/Products/beautywellness/Body-Oil_b2pt39.jpg')
  body_oil.photos.attach(io: body_oil_photo_1, filename: 'Body-Oil_b2pt39.jpg', content_type: 'image/jpg')

one_beauty = Product.create!(name: 'One Beauty Moisturizing Serum',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 48.99,
  merchant_id: bare_beauty.id, sub_category_id: skin_care.id)

  one_beauty_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257660/Heron-Market/Products/beautywellness/One-Beauty-Skincare_vas7to.jpg')
  one_beauty.photos.attach(io: one_beauty_photo_1, filename: 'One-Beauty-Skincare_vas7to.jpg', content_type: 'image/jpg')

mascara = Product.create!(name: 'Pink Lash Mascara',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 18.90,
  merchant_id: bare_beauty.id, sub_category_id: makeup.id)

  mascara_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257708/Heron-Market/Products/beautywellness/Mascara_ydaba2.jpg')
  mascara.photos.attach(io: mascara_photo_1, filename: 'Mascara_ydaba2.jpg', content_type: 'image/jpg')

face_sculpte = Product.create!(name: 'Quartz Luxury Face Sculpt',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 38.99,
  merchant_id: bare_beauty.id, sub_category_id: accessories_tools.id)

  face_sculpte_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257695/Heron-Market/Products/beautywellness/face-sculpte_dsmm0m.jpg')
  face_sculpte.photos.attach(io: face_sculpte_photo_1, filename: 'face-sculpte_dsmm0m.jpg', content_type: 'image/jpg')



# Merchant - Food
rustic_grocery = Merchant.create!(name: 'Rustic Grocery',
  password: '232323', email: 'admin@rusticgrocery.ca', description: 'Excepteur duis deserunt qui tempor velit veniam eu cupidatat
  irure consectetur occaecat duis. In duis consectetur occaecat tempor minim
  consectetur sint ', location: 'Montreal, Qc Canada',
  public_email: 'info@boutiquesleekchic.com', facebook: 'www.facebook.com',
  instagram: 'www.instagram.com', comment: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.',
  website: 'https://www.rusticgrocery.com',
  picture_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588091074/Heron-Market/merchants/RusticGrocery-Front-Store_qtrofr.jpg',
  picture_2: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588091080/Heron-Market/merchants/RusticGrocery-Fruits-Picking_lx92dc.jpg',
  picture_3: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588091071/Heron-Market/merchants/RusticGrocery-Bakery_kl0ycx.jpg',
  picture_4: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588091058/Heron-Market/merchants/RusticGrocery-Meat_ac5n8b.jpg')


# Products - Food
bread_loaf = Product.create!(name: 'Sweet Bread Loaf',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 9.90,
  merchant_id: rustic_grocery.id, sub_category_id: bread_and_bakery.id)

  bread_loaf_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197581/Heron-Market/Products/Food/Bread-Loaf_olrezn.jpg')
  bread_loaf.photos.attach(io: bread_loaf_photo_1, filename: 'Bread-Loaf_olrezn.jpg', content_type: 'image/jpg')

  bread_loaf_variant = ProductVariant.create(stock_qty: 100, product_id: bread_loaf.id)

granola_bites = Product.create!(name: 'Sweet Granola Bar',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 6.99,
  merchant_id: rustic_grocery.id, sub_category_id: snacks_cookies.id)

  granola_bites_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197511/Heron-Market/Products/Food/granola-bites_ykgxlh.jpg')
  granola_bites.photos.attach(io: granola_bites_photo_1, filename: 'granola-bites_ykgxlh.jpg', content_type: 'image/jpg')

chocovanilla_cake = Product.create!(name: 'Chocovanilla Cake',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 30.95,
  merchant_id: rustic_grocery.id, sub_category_id: bread_and_bakery.id)

  chocovanilla_cake_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197568/Heron-Market/Products/Food/Chocovanilla-Cake_cj43uv.jpg')
  chocovanilla_cake.photos.attach(io: chocovanilla_cake_photo_1, filename: 'Chocovanilla-Cake_cj43uv.jpg', content_type: 'image/jpg')

reusable_bag = Product.create!(name: 'Brown Reusable Bag',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 5.99,
  merchant_id: rustic_grocery.id, sub_category_id: organic_goods.id)

  reusable_bag_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197447/Heron-Market/Products/Food/Reusable-Bag_vqvjwd.jpg')
  reusable_bag.photos.attach(io: reusable_bag_photo_1, filename: 'Reusable-Bag_vqvjwd.jpg', content_type: 'image/jpg')

coffee = Product.create!(name: 'Dark Coffe Beans',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 25.90,
  merchant_id: rustic_grocery.id, sub_category_id: beverages.id)

  coffee_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197543/Heron-Market/Products/Food/coffee_akhhag.jpg')
  coffee.photos.attach(io: coffee_photo_1, filename: 'coffee_akhhag.jpg', content_type: 'image/jpg')

cookies_snack = Product.create!(name: 'Apple Cookies',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 8.00,
  merchant_id: rustic_grocery.id, sub_category_id: snacks_cookies.id)

  cookies_snack_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197569/Heron-Market/Products/Food/Cookies-Snacks_gnskae.jpg')
  cookies_snack.photos.attach(io: cookies_snack_photo_1, filename: 'Cookies-Snacks_gnskae.jpg', content_type: 'image/jpg')

cupcake = Product.create!(name: 'Straberry & Vanilla Cupcake',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 18.99,
  merchant_id: rustic_grocery.id, sub_category_id: bread_and_bakery.id)

  cupcake_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197549/Heron-Market/Products/Food/cupcake_j5fbeh.jpg')
  cupcake.photos.attach(io: cupcake_photo_1, filename: 'cupcake_j5fbeh.jpg', content_type: 'image/jpg')

eart_juice = Product.create!(name: 'Earthy Juice',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 9.97,
  merchant_id: rustic_grocery.id, sub_category_id: beverages.id)

  eart_juice_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197542/Heron-Market/Products/Food/Earth-Juice_n40mln.jpg')
  eart_juice.photos.attach(io: eart_juice_photo_1, filename: 'Earth-Juice_n40mln.jpg', content_type: 'image/jpg')

habit_drink = Product.create!(name: 'Habit Healthy Juice',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 8.67,
  merchant_id: rustic_grocery.id, sub_category_id: beverages.id)

  habit_drink_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197540/Heron-Market/Products/Food/Habit-Drinks_lzhkgw.jpg')
  habit_drink.photos.attach(io: habit_drink_photo_1, filename: 'Habit-Drinks_lzhkgw.jpg', content_type: 'image/jpg')

maccaron = Product.create!(name: 'Sweet French Maccaron',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 14.99,
  merchant_id: rustic_grocery.id, sub_category_id: bread_and_bakery.id)

  maccaron_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197489/Heron-Market/Products/Food/Maccaron_mbuplk.jpg')
  maccaron.photos.attach(io: maccaron_photo_1, filename: 'Maccaron_mbuplk.jpg', content_type: 'image/jpg')

mixed_granola = Product.create!(name: 'Mixed Granola',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 7.99,
  merchant_id: rustic_grocery.id, sub_category_id: snacks_cookies.id)

  mixed_granola_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197465/Heron-Market/Products/Food/mixed-granola_pfmxdj.jpg')
  mixed_granola.photos.attach(io: mixed_granola_photo_1, filename: 'mixed-granola_pfmxdj.jpg', content_type: 'image/jpg')

organic_oil = Product.create!(name: 'Zen Organic Oil',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 10.98,
  merchant_id: rustic_grocery.id, sub_category_id: organic_goods.id)

  organic_oil_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197501/Heron-Market/Products/Food/Organic_Oil_kalw6t.jpg')
  organic_oil.photos.attach(io: organic_oil_photo_1, filename: 'Organic_Oil_kalw6t.jpg', content_type: 'image/jpg')

popcorn = Product.create!(name: 'Buttery Popcorn',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 6.90,
  merchant_id: rustic_grocery.id, sub_category_id: snacks_cookies.id)

  popcorn_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197444/Heron-Market/Products/Food/popcorn_qbb81a.jpg')
  popcorn.photos.attach(io: popcorn_photo_1, filename: 'popcorn_qbb81a.jpg', content_type: 'image/jpg')

pressed_juice = Product.create!(name: 'Fruity Pressed Juice',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 7.90,
  merchant_id: rustic_grocery.id, sub_category_id: beverages.id)

  pressed_juice_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197497/Heron-Market/Products/Food/Pressed_Juice_fqt2ij.jpg')
  pressed_juice.photos.attach(io: pressed_juice_photo_1, filename: 'Pressed_Juice_fqt2ij.jpg', content_type: 'image/jpg')

milk_bottle = Product.create!(name: 'Cow Milk',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 6.90,
  merchant_id: rustic_grocery.id, sub_category_id: dairy_and_eggs.id)

  milk_bottle_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197477/Heron-Market/Products/Food/Milk-Bottle_r10nvu.jpg')
  milk_bottle.photos.attach(io: milk_bottle_photo_1, filename: 'Milk-Bottle_r10nvu.jpg', content_type: 'image/jpg')

brocoli = Product.create!(name: 'Brocoli',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 3.99,
  merchant_id: rustic_grocery.id, sub_category_id: vegetables.id)

  brocoli_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197580/Heron-Market/Products/Food/brocoli_d0s3ke.jpg')
  brocoli.photos.attach(io: brocoli_photo_1, filename: 'brocoli_d0s3ke.jpg', content_type: 'image/jpg')

cheese = Product.create!(name: 'Creamy Cheese',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 11.69,
  merchant_id: rustic_grocery.id, sub_category_id: dairy_and_eggs.id)

  cheese_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197575/Heron-Market/Products/Food/cheese_vkjnqv.jpg')
  cheese.photos.attach(io: cheese_photo_1, filename: 'cheese_vkjnqv.jpg', content_type: 'image/jpg')

mushroom = Product.create!(name: 'Wild Mushrooms',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 3.99,
  merchant_id: rustic_grocery.id, sub_category_id: vegetables.id)

  mushroom_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197469/Heron-Market/Products/Food/mushrooms_nxoar1.jpg')
  mushroom.photos.attach(io: mushroom_photo_1, filename: 'mushrooms_nxoar1.jpg', content_type: 'image/jpg')

eggs = Product.create!(name: 'Wild Eggs',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 3.99,
  merchant_id: rustic_grocery.id, sub_category_id: dairy_and_eggs.id)

  eggs_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197555/Heron-Market/Products/Food/eggs_auoxy3.jpg')
  eggs.photos.attach(io: eggs_photo_1, filename: 'eggs_auoxy3.jpg', content_type: 'image/jpg')

grapes = Product.create!(name: 'Red Grapes',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 4.99,
  merchant_id: rustic_grocery.id, sub_category_id: fruits.id)

  grapes_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197535/Heron-Market/Products/Food/grapes_tuzmwl.jpg')
  grapes.photos.attach(io: grapes_photo_1, filename: 'grapes_tuzmwl.jpg', content_type: 'image/jpg')

noodles = Product.create!(name: 'Spaghetti Noodles',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 3.90,
  merchant_id: rustic_grocery.id, sub_category_id: bread_and_bakery.id)

  noodles_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197504/Heron-Market/Products/Food/noodles_q0k1hy.jpg')
  noodles.photos.attach(io: noodles_photo_1, filename: 'noodles_q0k1hy.jpg', content_type: 'image/jpg')

pineapple = Product.create!(name: 'Pineapple',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 6.90,
  merchant_id: rustic_grocery.id, sub_category_id: fruits.id)

  pineapple_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197494/Heron-Market/Products/Food/pineapple_kn2o9z.jpg')
  pineapple.photos.attach(io: pineapple_photo_1, filename: 'pineapple_kn2o9z.jpg', content_type: 'image/jpg')

salmon = Product.create!(name: 'Wild Salmon',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 14.90,
  merchant_id: rustic_grocery.id, sub_category_id: meat_and_fish.id)

  salmon_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197456/Heron-Market/Products/Food/salmon_omrjqm.jpg')
  salmon.photos.attach(io: salmon_photo_1, filename: 'salmon_omrjqm.jpg', content_type: 'image/jpg')

steak = Product.create!(name: 'Juicy Steak',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 17.68,
  merchant_id: rustic_grocery.id, sub_category_id: meat_and_fish.id)

  steak_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197450/Heron-Market/Products/Food/steak_bedj8k.jpg')
  steak.photos.attach(io: steak_photo_1, filename: 'steak_bedj8k.jpg', content_type: 'image/jpg')


# Merchant - Home Decor
wild_bungalow = Merchant.create!(name: 'Wild Bungalow',
  password: '232323', email: 'admin@wildbungalow.ca', description: 'Excepteur duis deserunt qui tempor velit veniam eu cupidatat
  irure consectetur occaecat duis. In duis consectetur occaecat tempor minim
  consectetur sint ', location: 'Montreal, Qc Canada',
  public_email: 'info@boutiquesleekchic.com', facebook: 'www.facebook.com',
  instagram: 'www.instagram.com', comment: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.',
  website: 'https://www.wildbungalow.com',
  picture_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588091027/Heron-Market/merchants/HomeDecor-Photo1_f1w93m.jpg',
  picture_2: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588091086/Heron-Market/merchants/HomeDecor-Photo2_yhe9ww.jpg',
  picture_3: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588091042/Heron-Market/merchants/HomeDecor-Photo3_z9xjo8.jpg',
  picture_4: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588091063/Heron-Market/merchants/HomeDecor-Photo4_vofz6u.jpg')



# Products - Home Decor
basket = Product.create!(name: 'Bath Basket',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 22.90,
  merchant_id: wild_bungalow.id, sub_category_id: storage.id)

  basket_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257838/Heron-Market/Products/homedecor/Basket_izrdyx.jpg')
  basket.photos.attach(io: basket_photo_1, filename: 'Basket_izrdyx.jpg', content_type: 'image/jpg')
    basket_variant = ProductVariant.create(stock_qty: 100, product_id: basket.id)

bed_lamp = Product.create!(name: 'Bed Lamp', description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 55.00,
  merchant_id: wild_bungalow.id, sub_category_id: home_decor_sales.id)

  bed_lamp_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257826/Heron-Market/Products/homedecor/Bed-lamp_tu9dda.jpg')
  bed_lamp.photos.attach(io: bed_lamp_photo_1, filename: 'Bed-lamp_tu9dda.jpg', content_type: 'image/jpg')

black_frame = Product.create!(name: 'Black Frame',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 16.90,
  merchant_id: wild_bungalow.id, sub_category_id: wall_decor.id)

  black_frame_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257826/Heron-Market/Products/homedecor/black-frame_evkzaz.jpg')
  black_frame.photos.attach(io: black_frame_photo_1, filename: 'black-frame_evkzaz.jpg', content_type: 'image/jpg')

# black_serveware = Product.create!(name: 'Black Serveware Set',
#   description: 'Elit labore dolore voluptate
#   pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
#   do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
#   dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
#   Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
#   reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 110.00,
#   merchant_id: wild_bungalow.id, sub_category_id: serveware.id)

#   black_serveware_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257805/Heron-Market/Products/homedecor/Black-servewareset_cmgupp.jpg')
#   black_serveware.photos.attach(io: black_serveware_photo_1, filename: 'Black-servewareset_cmgupp.jpg', content_type: 'image/jpg')

clear_vases = Product.create!(name: 'Clear Vases',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 25.50,
  merchant_id: wild_bungalow.id, sub_category_id: plants_and_vases.id)

  clear_vases_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257812/Heron-Market/Products/homedecor/Clear-Vases_djjnao.jpg')
  clear_vases.photos.attach(io: clear_vases_photo_1, filename: 'Clear-Vases_djjnao.jpg', content_type: 'image/jpg')

coffee_mug = Product.create!(name: 'Rustic Coffee Mug',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 20.00,
  merchant_id: wild_bungalow.id, sub_category_id: glassware_and_mugs.id)

  coffee_mug_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257827/Heron-Market/Products/homedecor/coffee-mug_zewcsh.jpg')
  coffee_mug.photos.attach(io: coffee_mug_photo_1, filename: 'coffee-mug_zewcsh.jpg', content_type: 'image/jpg')

coffe_table_book = Product.create!(name: 'Minimalist Coffe Table Book',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 77.00,
  merchant_id: wild_bungalow.id, sub_category_id: home_accessories.id)

  coffe_table_book_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257812/Heron-Market/Products/homedecor/Coffe-table-Books_kei4yg.jpg')
  coffe_table_book.photos.attach(io: coffe_table_book_photo_1, filename: 'Coffe-table-Books_kei4yg.jpg', content_type: 'image/jpg')

decorative_chair = Product.create!(name: 'Soft Decorative Chair',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 165.50,
  merchant_id: wild_bungalow.id, sub_category_id: home_decor_sales.id)

  decorative_chair_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257813/Heron-Market/Products/homedecor/Decorative-Chair_cor3uw.jpg')
  decorative_chair.photos.attach(io: decorative_chair_photo_1, filename: 'Decorative-Chair_cor3uw.jpg', content_type: 'image/jpg')

gold_frame = Product.create!(name: 'Gold Picture Frame',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 16.90,
  merchant_id: wild_bungalow.id, sub_category_id: wall_decor.id)

  gold_frame_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257828/Heron-Market/Products/homedecor/Gold-Frame_h0jeex.jpg')
  gold_frame.photos.attach(io: gold_frame_photo_1, filename: 'Gold-Frame_h0jeex.jpg', content_type: 'image/jpg')

houseplant = Product.create!(name: 'House Plant',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 28.00,
  merchant_id: wild_bungalow.id, sub_category_id: plants_and_vases.id)

  houseplant_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257803/Heron-Market/Products/homedecor/houseplant-on-stool_njkjih.jpg')
  houseplant.photos.attach(io: houseplant_photo_1, filename: 'houseplant-on-stool_njkjih.jpg', content_type: 'image/jpg')

key_holder = Product.create!(name: 'Car Key Holder',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 18.50,
  merchant_id: wild_bungalow.id, sub_category_id: home_accessories.id)

  key_holder_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257798/Heron-Market/Products/homedecor/key-holder_fxltmb.jpg')
  key_holder.photos.attach(io: key_holder_photo_1, filename: 'key-holder_fxltmb.jpg', content_type: 'image/jpg')

modern_globe = Product.create!(name: 'Modern Globe',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 23.50,
  merchant_id: wild_bungalow.id, sub_category_id: home_accessories.id)

  modern_globe_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257796/Heron-Market/Products/homedecor/Modern-White-Globe_aamkon.jpg')
  modern_globe.photos.attach(io: modern_globe_photo_1, filename: 'Modern-White-Globe_aamkon.jpg', content_type: 'image/jpg')

# mortier = Product.create!(name: 'Mortier',
#   description: 'Elit labore dolore voluptate
#   pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
#   do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
#   dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
#   Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
#   reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 16.50,
#   merchant_id: wild_bungalow.id, sub_category_id: cultery_and_ustensiles.id)

#   mortier_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257791/Heron-Market/Products/homedecor/mortier_l7suqf.jpg')
#   mortier.photos.attach(io: mortier_photo_1, filename: 'mortier_l7suqf.jpg', content_type: 'image/jpg')

oversize_wallart = Product.create!(name: 'Oversized Black and White Art',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 250.90,
  merchant_id: wild_bungalow.id, sub_category_id: wall_decor.id)

  oversize_wallart_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257803/Heron-Market/Products/homedecor/Oversize-WallArt_whjcrw.jpg')
  oversize_wallart.photos.attach(io: oversize_wallart_photo_1, filename: 'Oversize-WallArt_whjcrw.jpg', content_type: 'image/jpg')

plant = Product.create!(name: 'Green Plant',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 20.90,
  merchant_id: wild_bungalow.id, sub_category_id: home_decor_sales.id)

  plant_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257792/Heron-Market/Products/homedecor/Plant_ed17wy.jpg')
  plant.photos.attach(io: plant_photo_1, filename: 'Plant_ed17wy.jpg', content_type: 'image/jpg')

round_cup = Product.create!(name: 'Round Coffee Cup',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 18.90,
  merchant_id: wild_bungalow.id, sub_category_id: glassware_and_mugs.id)

  round_cup_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257788/Heron-Market/Products/homedecor/Round-White-Cup_trccbl.jpg')
  round_cup.photos.attach(io: round_cup_photo_1, filename: 'Round-White-Cup_trccbl.jpg', content_type: 'image/jpg')

serveware_set = Product.create!(name: 'Golden Serveware Set',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 45.50,
  merchant_id: wild_bungalow.id, sub_category_id: serveware.id)

  serveware_set_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257800/Heron-Market/Products/homedecor/serveware-set_vxu90t.jpg')
  serveware_set.photos.attach(io: serveware_set_photo_1, filename: 'serveware-set_vxu90t.jpg', content_type: 'image/jpg')

sheer_brown_vase = Product.create!(name: 'Sheer Brown Vase',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 60.50,
  merchant_id: wild_bungalow.id, sub_category_id: plants_and_vases.id)

  sheer_brown_vase_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257788/Heron-Market/Products/homedecor/Sheer-Brown-Vase_yxx3ve.jpg')
  sheer_brown_vase.photos.attach(io: sheer_brown_vase_photo_1, filename: 'Sheer-Brown-Vase_yxx3ve.jpg', content_type: 'image/jpg')

towels_bathroom = Product.create!(name: 'Bathroom Towels',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 35.00,
  merchant_id: wild_bungalow.id, sub_category_id: towels.id)

  towels_bathroom_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257773/Heron-Market/Products/homedecor/towels-batroom_c9z94u.jpg')
  towels_bathroom.photos.attach(io: towels_bathroom_photo_1, filename: 'towels-batroom_c9z94u.jpg', content_type: 'image/jpg')

ustensiles_gw = Product.create!(name: 'White Golden Ustensiles',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 18.60,
  merchant_id: wild_bungalow.id, sub_category_id: cultery_and_ustensiles.id)

  ustensiles_gw_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257767/Heron-Market/Products/homedecor/ustensiles-gw_jndr2k.jpg')
  ustensiles_gw.photos.attach(io: ustensiles_gw_photo_1, filename: 'ustensiles-gw_jndr2k.jpg', content_type: 'image/jpg')

vine_plant = Product.create!(name: 'Vine Plants',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 26.00,
  merchant_id: wild_bungalow.id, sub_category_id: home_accessories.id)

  vine_plant_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257763/Heron-Market/Products/homedecor/Vine-Plant_mzzvry.jpg')
  vine_plant.photos.attach(io: vine_plant_photo_1, filename: 'Vine-Plant_mzzvry.jpg', content_type: 'image/jpg')

wine_glass = Product.create!(name: 'Wine Glass',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 18.95,
  merchant_id: wild_bungalow.id, sub_category_id: glassware_and_mugs.id)

  wine_glass_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257779/Heron-Market/Products/homedecor/wine-glass_o1oqvc.jpg')
  wine_glass.photos.attach(io: wine_glass_photo_1, filename: 'wine-glass_o1oqvc.jpg', content_type: 'image/jpg')

yellow_grey_pillow = Product.create!(name: 'Yellow Grey Pillows',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 28.90,
  merchant_id: wild_bungalow.id, sub_category_id: throws_and_blankets.id)

  yellow_grey_pillow_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257758/Heron-Market/Products/homedecor/Yellow-Grey-Pillow_dfwowj.jpg')
  yellow_grey_pillow.photos.attach(io: yellow_grey_pillow_photo_1, filename: 'Yellow-Grey-Pillow_dfwowj.jpg', content_type: 'image/jpg')

yellow_pillow = Product.create!(name: 'Decorative Yellow Pillows',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 28.90,
  merchant_id: wild_bungalow.id, sub_category_id: throws_and_blankets.id)

  yellow_pillow_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257802/Heron-Market/Products/homedecor/yellow-pillow_geocxw.jpg')
  yellow_pillow.photos.attach(io: yellow_pillow_photo_1, filename: 'yellow-pillow_geocxw.jpg', content_type: 'image/jpg')

blanket = Product.create!(name: 'Fluffy Blanket',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price_cents: 48.90,
  merchant_id: wild_bungalow.id, sub_category_id: throws_and_blankets.id)

  blanket_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257774/Heron-Market/Products/homedecor/Throws_rxga4w.jpg')
  blanket.photos.attach(io: blanket_photo_1, filename: 'Throws_rxga4w.jpg', content_type: 'image/jpg')


# Labels
organic = Label.create!(name: "Organic Products", description: 'This brand uses/offers organic fabrics,
  ingredients and/or comply with standards of organic farming.',
  icon: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588174025/Heron-Market/Labels/Organic_-_Label_nqbzbh.png')
made_in_canada = Label.create!(name: "Made in Canada", description: 'At least 70 percent of this brand
  merchandise is produced in Canada.',
  icon: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588174025/Heron-Market/Labels/MadeInCanada-Label_thqrob.png')
fair_trade = Label.create!(name: "Fair Trade", description: 'This brand helps artisans in developing
  countries achieve good trading and improves social and environmental standards.',
  icon: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588174025/Heron-Market/Labels/FairTrade-Label_atozrh.png')
cruelty_free = Label.create!(name: "Cruelty Free", description: 'This brand does not manufacture or
  offer products made by methods that involve experimentation on animals.',
  icon: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588174025/Heron-Market/Labels/CrueltyFree-Label_bodsdp.png')
vegan = Label.create!(name: "Vegan", description: 'This brand does not produce products that
  comes from animals or goods containing animal products.',
  icon: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588174025/Heron-Market/Labels/Vegan-Label_w0oss7.png')
paraben_free = Label.create!(name: "Paraben Free", description: 'This brand offers and/or produces
  paraben free products',
  icon: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588174025/Heron-Market/Labels/ParabenFree-Label_hphsok.png')
green_and_clean = Label.create!(name: "Green and Clean", description: 'This brand offers and/or produces products with
  environmentally friendly ingredients and their procedures are designed to
  preserve human health and environmental quality.',
  icon: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588174025/Heron-Market/Labels/GreenAndClean-Label_hulnkv.png')
recycle_material = Label.create!(name: "Recycle Material", description: 'This brand offers and/or manufures
  products made of recycled materials(s)',
  icon: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588174025/Heron-Market/Labels/RecycleMaterial-Label_uhbgga.png')
transparent = Label.create!(name: "Transparency", description: 'This brand is transparent about its
  business activities.',
  icon: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588174025/Heron-Market/Labels/Transparency-Label_dnlgmt.png')
ethical = Label.create!(name: "Ethical", description: 'This brand follows ethical pratices regarding
  their workplace and production activities.',
  icon: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588174025/Heron-Market/Labels/Ethical-Label_kbypfh.png')
women_founded = Label.create!(name: "Women Founded", description: 'This brands is women founded and/or owned.',
  icon: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588174025/Heron-Market/Labels/WomanFounded-Label_ldxtys.png')

# Label Products
label = [organic, made_in_canada, fair_trade, cruelty_free, vegan, paraben_free, green_and_clean, recycle_material, transparent, ethical, women_founded]
Product.all.each do |product|
  product.labels = label.sample(3)
  product.save!
end

puts 'completed'
