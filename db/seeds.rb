puts 'seeding'

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
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 79.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: bottoms.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588099235/Heron-Market/Products/Fashion/High-Rise-Jeans_nfax9y.jpg')
black_backpack = Product.create!(name: 'Black Backpack',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 50.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: bags.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175277/Heron-Market/Products/Fashion/Black-Backpack_qnkoe5.jpg')
red_dress = Product.create!(name: 'Red Dress',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 120.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175245/Heron-Market/Products/Fashion/Dress-Red-Front_znsbup.jpg',
  photo_2: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175269/Heron-Market/Products/Fashion/Dress-Red-Back_jf1hrm.jpg',
  photo_3: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175271/Heron-Market/Products/Fashion/Dress-Red-Details-Back_fww2ud.jpg')
pink_heels = Product.create!(name: 'Pink Heels',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 118.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: shoes.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175271/Heron-Market/Products/Fashion/Pink-Heels_xwtoy9.jpg')
scarf_blue = Product.create!(name: 'Blue Scarf',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 25.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: fashion_accessories.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175267/Heron-Market/Products/Fashion/Scarf-Blue_eoastr.jpg')
scarf_red = Product.create!(name: 'Red Scarf',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 25.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: fashion_accessories.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175207/Heron-Market/Products/Fashion/Scarf-Red_pisovv.jpg')
satin_blouse = Product.create!(name: 'Satin Blouse',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 89.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175183/Heron-Market/Products/Fashion/Satin-Blouse-Front_ud14op.jpg',
  photo_2: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175171/Heron-Market/Products/Fashion/Satin-Blouse-Details-Front_hrnoc9.jpg',
  photo_3: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175177/Heron-Market/Products/Fashion/Satin-Blouse-Back_bpbqxb.jpg')
mid_rise_jeans = Product.create!(name: 'Mid-Rise Jeans 367',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 75.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: bottoms.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588098951/Heron-Market/Products/Fashion/Mid-Rise-Jeans367_n4eict.jpg')
sweater_pink = Product.create!(name: 'Pink Sweater',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 67.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588098951/Heron-Market/Products/Fashion/pink-sweater_m8pyvw.jpg')
over_the_knee_boots = Product.create!(name: 'Suede Over-the-Knee Boots',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 110.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: shoes.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175207/Heron-Market/Products/Fashion/Over-The-Knee-Boots_dms3zy.jpg')
pastel_blazer = Product.create!(name: 'Pastel Blazer',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 89.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189613/Heron-Market/Products/Fashion/Pastel-Spring-Blazer-Front_ihnh1t.png',
  photo_2: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189611/Heron-Market/Products/Fashion/Pastel-Spring-Blazer-Outfit_hanmwe.jpg',
  photo_3: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189608/Heron-Market/Products/Fashion/Pastel-Srping-Blazer-Outfit-2_yiu9qi.jpg')
tims_blue = Product.create!(name: 'Blue Tims',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 150.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: shoes.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189623/Heron-Market/Products/Fashion/Tims-Blue_cv96hm.png',
  photo_2: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189600/Heron-Market/Products/Fashion/Tims-Blue-2_cngeg3.png',
  photo_3: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189655/Heron-Market/Products/Fashion/Times-Blue-3_ddcg4a.png')
studded_flats = Product.create!(name: 'Studded Flats',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 200.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: shoes.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588190413/Heron-Market/Products/Fashion/Studded-Flats_zqzjxi.png')
washed_jeans = Product.create!(name: 'Washed Jeans',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 155.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: bottoms.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588190609/Heron-Market/Products/Fashion/Washed-Jeans_s5lmgp.png')
pink_silhettos = Product.create!(name: 'Pink Silhetto',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 250.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: shoes.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189638/Heron-Market/Products/Fashion/Pink_Silhetto_mjmt1u.png')
panama_hat = Product.create!(name: 'Panama Hat',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 45.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: fashion_accessories.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189623/Heron-Market/Products/Fashion/Panama-Hat_lfr2g4.jpg')
jean_short = Product.create!(name: 'Jean Short',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 50.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: bottoms.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189673/Heron-Market/Products/Fashion/Jean-Short-Outfit_tfhcsr.jpg')
red_shoes = Product.create!(name: 'Red Shoes',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 175.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: shoes.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189600/Heron-Market/Products/Fashion/Red-Shoes_leldby.jpg')
leather_jacket = Product.create!(name: 'Leather Jacket',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 350.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189654/Heron-Market/Products/Fashion/Leather-Jacket_fh8yj7.jpg',
  photo_2: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189663/Heron-Market/Products/Fashion/Leather-Jacket-Angle_ycr6pz.jpg',
  photo_3: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189658/Heron-Market/Products/Fashion/Leather-Jacket-Outfit_o5sfcj.jpg')
white_shirt = Product.create!(name: 'Crispy White Shirt',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 79.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189599/Heron-Market/Products/Fashion/White-Shirt-Front_ndwyxk.jpg',
  photo_2: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189599/Heron-Market/Products/Fashion/White-Shirt-Details_fglcw8.jpg',
  photo_3: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189598/Heron-Market/Products/Fashion/White-Shirt-Outfit_hzkqj3.jpg')
bra_pantie_kit = Product.create!(name: 'Sexy Bra Panti Kit',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 135.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: underwears.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189707/Heron-Market/Products/Fashion/Bra-Pantie-Kit_kxa4nr.jpg')
lingerie_set = Product.create!(name: 'Cute Lingerie Set',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 275.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: underwears.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189652/Heron-Market/Products/Fashion/Lingerie-Set_afrsve.jpg')
blue_shirt = Product.create!(name: 'Blue Shirt',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 78.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189706/Heron-Market/Products/Fashion/Blue-Shirt-Front_pxy7a5.jpg',
  photo_2: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189696/Heron-Market/Products/Fashion/Blue-Shirt-Side_ptmqnf.jpg',
  photo_3: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189692/Heron-Market/Products/Fashion/Blue-Shirt-Details_i5entx.jpg')
embroided_Top = Product.create!(name: 'Embroided White Shirt',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 75.95,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189686/Heron-Market/Products/Fashion/Embroided-Top-Front_cxj3hk.jpg',
  photo_2: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189681/Heron-Market/Products/Fashion/Embroided-Top-Side_gpyvs5.jpg')
light_pink_purse = Product.create!(name: 'Light Pink Purse',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 89.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: fashion_accessories.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189642/Heron-Market/Products/Fashion/Light-Pink-Purse_ckgxal.jpg')
red_bag = Product.create!(name: 'Mini Red Bag',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 125.95,
  merchant_id: boutique_sleek_chic.id, sub_category_id: fashion_accessories.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189605/Heron-Market/Products/Fashion/Red-Bag_jrtx51.jpg')
jean_coat = Product.create!(name: 'Jean Coat',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 189.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189663/Heron-Market/Products/Fashion/Jean-Coat_eaw4j6.png')
sexy_red_pump = Product.create!(name: 'Sexy Red Pump',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 225.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: shoes.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189600/Heron-Market/Products/Fashion/Sexy-Red-Pump_vud4ri.png')
light_brown_clutch = Product.create!(name: 'Mini Light Brown Clutch',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 330.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: fashion_accessories.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189648/Heron-Market/Products/Fashion/Light-Brown-Clutch_v0femp.jpg')
marble_earrings = Product.create!(name: 'Marble Earrings',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 225.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: jewelleries.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189661/Heron-Market/Products/Fashion/marble-earrings_1_w5mmyl.jpg',
  photo_2: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189706/Heron-Market/Products/Fashion/marble-earrings_dvdcsd.jpg')
pearl_earrings = Product.create!(name: 'Pearl Earrings',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 175.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: jewelleries.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189707/Heron-Market/Products/Fashion/Pearl-Earrings_narsws.jpg')
gold_chocker = Product.create!(name: 'Gold Chocker',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 45.95,
  merchant_id: boutique_sleek_chic.id, sub_category_id: jewelleries.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189693/Heron-Market/Products/Fashion/Gold-Chocker_ik9oys.jpg')
gold_bracelet = Product.create!(name: 'Gold Bracelet',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 165.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: jewelleries.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189676/Heron-Market/Products/Fashion/Gold-Bracelet_ctafq7.jpg')
gold_necklace = Product.create!(name: 'Dainty Gold Necklace',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 185.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: jewelleries.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189704/Heron-Market/Products/Fashion/dainty-gold-necklace_qlvzqa.jpg')



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
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 75.00,
  merchant_id: bare_beauty.id, sub_category_id: candles_and_essential_oils.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257714/Heron-Market/Products/beautywellness/Essential-Oils-Infuser_bq6auj.jpg')
flask_induser = Product.create!(name: 'Flask Difuser',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 28.65,
  merchant_id: bare_beauty.id, sub_category_id: candles_and_essential_oils.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257688/Heron-Market/Products/beautywellness/flask-infuser_kfpvms.jpg')
aroma_candle = Product.create!(name: 'Aroma Candle',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 45.00,
  merchant_id: bare_beauty.id, sub_category_id: candles_and_essential_oils.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257740/Heron-Market/Products/beautywellness/Aroma-Candles_byvhbj.jpg')
eyeshadow = Product.create!(name: 'Classic Nude Shadows',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 45.95,
  merchant_id: bare_beauty.id, sub_category_id: makeup.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257697/Heron-Market/Products/beautywellness/Eyeshadow_uqpwkb.jpg')
soy_candle = Product.create!(name: 'Jasmin Soy Candle',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 80.00,
  merchant_id: bare_beauty.id, sub_category_id: candles_and_essential_oils.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257664/Heron-Market/Products/beautywellness/Soy_andle_inxlws.jpg')
skincare_bundle = Product.create!(name: 'One Skincare Bundle',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 40.95,
  merchant_id: bare_beauty.id, sub_category_id: skin_care.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257660/Heron-Market/Products/beautywellness/skincare-bundle_lwicqh.jpg')
countour_palette = Product.create!(name: 'Aly Countour Palette',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 55.00,
  merchant_id: bare_beauty.id, sub_category_id: makeup.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257733/Heron-Market/Products/beautywellness/contour-palette_t8rs64.jpg')
makeup_brush = Product.create!(name: 'Chelsea Makeup Brushes',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 75.96,
  merchant_id: bare_beauty.id, sub_category_id: accessories_tools.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257672/Heron-Market/Products/beautywellness/Makeup-brush_fz9hqu.jpg')
lipstick = Product.create!(name: 'Pinky Chicky Lipstick',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 65.00,
  merchant_id: bare_beauty.id, sub_category_id: makeup.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257668/Heron-Market/Products/beautywellness/lipstick_zlkrhj.jpg')
shampoo = Product.create!(name: 'Apothecary87 Shampoo',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 32.95,
  merchant_id: bare_beauty.id, sub_category_id: hair_care.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257698/Heron-Market/Products/beautywellness/Shampoo_z7bga5.jpg')
facial_roller = Product.create!(name: 'Sculpt Facial Roller',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 58.99,
  merchant_id: bare_beauty.id, sub_category_id: accessories_tools.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257738/Heron-Market/Products/beautywellness/Faceroller_eb0l9u.jpg')
body_oil = Product.create!(name: 'Rose Body Oil',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 25.95,
  merchant_id: bare_beauty.id, sub_category_id: body_care.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257704/Heron-Market/Products/beautywellness/Body-Oil_b2pt39.jpg')
one_beauty = Product.create!(name: 'One Beauty Moisturizing Serum',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 48.99,
  merchant_id: bare_beauty.id, sub_category_id: skin_care.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257660/Heron-Market/Products/beautywellness/One-Beauty-Skincare_vas7to.jpg')
mascara = Product.create!(name: 'Pink Lash Mascara',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 18.90,
  merchant_id: bare_beauty.id, sub_category_id: makeup.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257708/Heron-Market/Products/beautywellness/Mascara_ydaba2.jpg')
face_sculpte = Product.create!(name: 'Quartz Luxury Face Sculpt',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 38.99,
  merchant_id: bare_beauty.id, sub_category_id: accessories_tools.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257695/Heron-Market/Products/beautywellness/face-sculpte_dsmm0m.jpg')



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
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 9.90,
  merchant_id: rustic_grocery.id, sub_category_id: bread_and_bakery.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197581/Heron-Market/Products/Food/Bread-Loaf_olrezn.jpg')
granola_bites = Product.create!(name: 'Sweet Granola Bar',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 6.99,
  merchant_id: rustic_grocery.id, sub_category_id: snacks_cookies.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197511/Heron-Market/Products/Food/granola-bites_ykgxlh.jpg')
chocovanilla_cake = Product.create!(name: 'Chocovanilla Cake',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 30.95,
  merchant_id: rustic_grocery.id, sub_category_id: bread_and_bakery.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197568/Heron-Market/Products/Food/Chocovanilla-Cake_cj43uv.jpg')
reusable_bag = Product.create!(name: 'Brown Reusable Bag',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 5.99,
  merchant_id: rustic_grocery.id, sub_category_id: organic_goods.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197447/Heron-Market/Products/Food/Reusable-Bag_vqvjwd.jpg')
coffee = Product.create!(name: 'Dark Coffe Beans',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 25.90,
  merchant_id: rustic_grocery.id, sub_category_id: beverages.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197543/Heron-Market/Products/Food/coffee_akhhag.jpg')
cookies_snack = Product.create!(name: 'Apple Cookies',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 8.00,
  merchant_id: rustic_grocery.id, sub_category_id: snacks_cookies.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197569/Heron-Market/Products/Food/Cookies-Snacks_gnskae.jpg')
cupcake = Product.create!(name: 'Straberry & Vanilla Cupcake',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 18.99,
  merchant_id: rustic_grocery.id, sub_category_id: bread_and_bakery.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197549/Heron-Market/Products/Food/cupcake_j5fbeh.jpg')
eart_juice = Product.create!(name: 'Earthy Juice',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 9.97,
  merchant_id: rustic_grocery.id, sub_category_id: beverages.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197542/Heron-Market/Products/Food/Earth-Juice_n40mln.jpg')
habit_drink = Product.create!(name: 'Habit Healthy Juice',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 8.67,
  merchant_id: rustic_grocery.id, sub_category_id: beverages.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197540/Heron-Market/Products/Food/Habit-Drinks_lzhkgw.jpg')
maccaron = Product.create!(name: 'Sweet French Maccaron',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 14.99,
  merchant_id: rustic_grocery.id, sub_category_id: bread_and_bakery.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197489/Heron-Market/Products/Food/Maccaron_mbuplk.jpg')
mixed_granola = Product.create!(name: 'Mixed Granola',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 7.99,
  merchant_id: rustic_grocery.id, sub_category_id: snacks_cookies.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197465/Heron-Market/Products/Food/mixed-granola_pfmxdj.jpg')
organic_oil = Product.create!(name: 'Zen Organic Oil',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 10.98,
  merchant_id: rustic_grocery.id, sub_category_id: organic_goods.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197501/Heron-Market/Products/Food/Organic_Oil_kalw6t.jpg')
popcorn = Product.create!(name: 'Buttery Popcorn',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 6.90,
  merchant_id: rustic_grocery.id, sub_category_id: snacks_cookies.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197444/Heron-Market/Products/Food/popcorn_qbb81a.jpg')
pressed_juice = Product.create!(name: 'Fruity Pressed Juice',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 7.90,
  merchant_id: rustic_grocery.id, sub_category_id: beverages.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197497/Heron-Market/Products/Food/Pressed_Juice_fqt2ij.jpg')
milk_bottle = Product.create!(name: 'Cow Milk',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 6.90,
  merchant_id: rustic_grocery.id, sub_category_id: dairy_and_eggs.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197477/Heron-Market/Products/Food/Milk-Bottle_r10nvu.jpg')
brocoli = Product.create!(name: 'Brocoli',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 3.99,
  merchant_id: rustic_grocery.id, sub_category_id: vegetables.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197580/Heron-Market/Products/Food/brocoli_d0s3ke.jpg')
cheese = Product.create!(name: 'Creamy Cheese',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 11.69,
  merchant_id: rustic_grocery.id, sub_category_id: dairy_and_eggs.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197575/Heron-Market/Products/Food/cheese_vkjnqv.jpg')
mushroom = Product.create!(name: 'Wild Mushrooms',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 3.99,
  merchant_id: rustic_grocery.id, sub_category_id: vegetables.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197469/Heron-Market/Products/Food/mushrooms_nxoar1.jpg')
eggs = Product.create!(name: 'Wild Eggs',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 3.99,
  merchant_id: rustic_grocery.id, sub_category_id: dairy_and_eggs.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197555/Heron-Market/Products/Food/eggs_auoxy3.jpg')
grapes = Product.create!(name: 'Red Grapes',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 4.99,
  merchant_id: rustic_grocery.id, sub_category_id: fruits.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197535/Heron-Market/Products/Food/grapes_tuzmwl.jpg')
noodles = Product.create!(name: 'Spaghetti Noodles',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 3.90,
  merchant_id: rustic_grocery.id, sub_category_id: bread_and_bakery.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197504/Heron-Market/Products/Food/noodles_q0k1hy.jpg')
pineapple = Product.create!(name: 'Pineapple',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 6.90,
  merchant_id: rustic_grocery.id, sub_category_id: fruits.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197494/Heron-Market/Products/Food/pineapple_kn2o9z.jpg')
salmon = Product.create!(name: 'Wild Salmon',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 14.90,
  merchant_id: rustic_grocery.id, sub_category_id: meat_and_fish.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197456/Heron-Market/Products/Food/salmon_omrjqm.jpg')
steak = Product.create!(name: 'Juicy Steak',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 17.68,
  merchant_id: rustic_grocery.id, sub_category_id: meat_and_fish.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197450/Heron-Market/Products/Food/steak_bedj8k.jpg')


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
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 22.90,
  merchant_id: wild_bungalow.id, sub_category_id: storage.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257838/Heron-Market/Products/homedecor/Basket_izrdyx.jpg')
bed_lamp = Product.create!(name: 'Bed Lamp', description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 55.00,
  merchant_id: wild_bungalow.id, sub_category_id: home_decor_sales.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257826/Heron-Market/Products/homedecor/Bed-lamp_tu9dda.jpg')
black_frame = Product.create!(name: 'Black Frame',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 16.90,
  merchant_id: wild_bungalow.id, sub_category_id: wall_decor.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257826/Heron-Market/Products/homedecor/black-frame_evkzaz.jpg')
black_serveware = Product.create!(name: 'Black Serveware Set',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 110.00,
  merchant_id: wild_bungalow.id, sub_category_id: serveware.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257805/Heron-Market/Products/homedecor/Black-servewareset_cmgupp.jpg')
clear_vases = Product.create!(name: 'Clear Vases',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 25.50,
  merchant_id: wild_bungalow.id, sub_category_id: plants_and_vases.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257812/Heron-Market/Products/homedecor/Clear-Vases_djjnao.jpg')
coffee_mug = Product.create!(name: 'Rustic Coffee Mug',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 20.00,
  merchant_id: wild_bungalow.id, sub_category_id: glassware_and_mugs.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257827/Heron-Market/Products/homedecor/coffee-mug_zewcsh.jpg')
coffe_table_book = Product.create!(name: 'Minimalist Coffe Table Book',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 77.00,
  merchant_id: wild_bungalow.id, sub_category_id: home_accessories.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257812/Heron-Market/Products/homedecor/Coffe-table-Books_kei4yg.jpg')
decorative_chair = Product.create!(name: 'Soft Decorative Chair',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 165.50,
  merchant_id: wild_bungalow.id, sub_category_id: home_decor_sales.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257813/Heron-Market/Products/homedecor/Decorative-Chair_cor3uw.jpg')
gold_frame = Product.create!(name: 'Gold Picture Frame',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 16.90,
  merchant_id: wild_bungalow.id, sub_category_id: wall_decor.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257828/Heron-Market/Products/homedecor/Gold-Frame_h0jeex.jpg')
houseplant = Product.create!(name: 'House Plant',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 28.00,
  merchant_id: wild_bungalow.id, sub_category_id: plants_and_vases.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257803/Heron-Market/Products/homedecor/houseplant-on-stool_njkjih.jpg')
key_holder = Product.create!(name: 'Car Key Holder',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 18.50,
  merchant_id: wild_bungalow.id, sub_category_id: home_accessories.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257798/Heron-Market/Products/homedecor/key-holder_fxltmb.jpg')
modern_globe = Product.create!(name: 'Modern Globe',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 23.50,
  merchant_id: wild_bungalow.id, sub_category_id: home_accessories.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257796/Heron-Market/Products/homedecor/Modern-White-Globe_aamkon.jpg')
mortier = Product.create!(name: 'Mortier',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 16.50,
  merchant_id: wild_bungalow.id, sub_category_id: cultery_and_ustensiles.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257791/Heron-Market/Products/homedecor/mortier_l7suqf.jpg')
oversize_wallart = Product.create!(name: 'Oversized Black and White Art',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 250.90,
  merchant_id: wild_bungalow.id, sub_category_id: wall_decor.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257803/Heron-Market/Products/homedecor/Oversize-WallArt_whjcrw.jpg')
plant = Product.create!(name: 'Green Plant',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 20.90,
  merchant_id: wild_bungalow.id, sub_category_id: home_decor_sales.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257792/Heron-Market/Products/homedecor/Plant_ed17wy.jpg')
round_cup = Product.create!(name: 'Round Coffee Cup',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 18.90,
  merchant_id: wild_bungalow.id, sub_category_id: glassware_and_mugs.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257788/Heron-Market/Products/homedecor/Round-White-Cup_trccbl.jpg')
serveware_set = Product.create!(name: 'Golden Serveware Set',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 45.50,
  merchant_id: wild_bungalow.id, sub_category_id: serveware.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257800/Heron-Market/Products/homedecor/serveware-set_vxu90t.jpg')
sheer_brown_vase = Product.create!(name: 'Sheer Brown Vase',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 60.50,
  merchant_id: wild_bungalow.id, sub_category_id: plants_and_vases.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257788/Heron-Market/Products/homedecor/Sheer-Brown-Vase_yxx3ve.jpg')
towels_bathroom = Product.create!(name: 'Bathroom Towels',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 35.00,
  merchant_id: wild_bungalow.id, sub_category_id: towels.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257773/Heron-Market/Products/homedecor/towels-batroom_c9z94u.jpg')
ustensiles_gw = Product.create!(name: 'White Golden Ustensiles',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 18.60,
  merchant_id: wild_bungalow.id, sub_category_id: cultery_and_ustensiles.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257767/Heron-Market/Products/homedecor/ustensiles-gw_jndr2k.jpg')
vine_plant = Product.create!(name: 'Vine Plants',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 26.00,
  merchant_id: wild_bungalow.id, sub_category_id: home_accessories.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257763/Heron-Market/Products/homedecor/Vine-Plant_mzzvry.jpg')
wine_glass = Product.create!(name: 'Wine Glass',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 18.95,
  merchant_id: wild_bungalow.id, sub_category_id: glassware_and_mugs.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257779/Heron-Market/Products/homedecor/wine-glass_o1oqvc.jpg')
yellow_grey_pillow = Product.create!(name: 'Yellow Grey Pillows',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 28.90,
  merchant_id: wild_bungalow.id, sub_category_id: throws_and_blankets.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257758/Heron-Market/Products/homedecor/Yellow-Grey-Pillow_dfwowj.jpg')
yellow_pillow = Product.create!(name: 'Decorative Yellow Pillows',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 28.90,
  merchant_id: wild_bungalow.id, sub_category_id: throws_and_blankets.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257802/Heron-Market/Products/homedecor/yellow-pillow_geocxw.jpg')
blanket = Product.create!(name: 'Fluffy Blanket',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 48.90,
  merchant_id: wild_bungalow.id, sub_category_id: throws_and_blankets.id,
  photo_1: 'https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257774/Heron-Market/Products/homedecor/Throws_rxga4w.jpg')


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
