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
  picture_1: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595895173/Merchants/milad-b-fakurian-K4FgcyyFXC8-unsplash_zsemuk.jpg',
  picture_2: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595895183/Merchants/charisse-kenion-o_g8hqyLFhY-unsplash_v5qhkc.jpg',
  picture_3: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595895192/Merchants/ddp-Ci8wQO4Ehlo-unsplash_jm9lko.jpg',
  picture_4: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595895183/Merchants/amanda-vick-zw_oaDbfzyE-unsplash_l4plli.jpg')


# Products - Fashion
high_rise_jeans_367 = Product.create!(name: 'High Rise Jeans 367',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 79.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: bottoms.id, sku: 'ABHD1783')

  high_rise_jeans_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595349784/Products/Fashion/QSNwJUCGKebrCSahCAxnMddw_ukp4yq.jpg')
  high_rise_jeans_367.photos.attach(io: high_rise_jeans_photo_1, filename: 'QSNwJUCGKebrCSahCAxnMddw_ukp4yq.jpg', content_type: 'image/jpg')
xsmall = ProductVariant.create(size: "XS", stock_qty: 3, product_id: high_rise_jeans_367.id)

black_backpack = Product.create!(name: 'Black Backpack',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 50.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: bags.id, sku: 'ABHD1983')

  black_backpack_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595349539/Products/Fashion/u2Wa4gjdQa7ygKi72JAmPBLa_dnst2c.jpg')
  black_backpack.photos.attach(io: black_backpack_photo_1, filename: 'u2Wa4gjdQa7ygKi72JAmPBLa_dnst2c.jpg', content_type: 'image/jpg')

red_dress = Product.create!(name: 'Red Dress',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 120.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id, sku: 'ABHD1784')

  red_dress_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595294991/Products/Fashion/6Ak7SnCorjJhmi6vhHtBkBwx_mwokct.jpg')
  red_dress_photo_2 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595294987/Products/Fashion/2qZdNFPfdy2B6gmfUx65xzqy_pptkov.jpg')
  # red_dress_photo_3 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175271/Heron-Market/Products/Fashion/Dress-Red-Details-Back_fww2ud.jpg')
  red_dress.photos.attach(io: red_dress_photo_1, filename: '6Ak7SnCorjJhmi6vhHtBkBwx_mwokct.jpg', content_type: 'image/jpg')
  red_dress.photos.attach(io: red_dress_photo_2, filename: '2qZdNFPfdy2B6gmfUx65xzqy_pptkov.jpg', content_type: 'image/jpg')
  # red_dress.photos.attach(io: red_dress_photo_3, filename: 'Dress-Red-Details-Back_fww2ud.jpg', content_type: 'image/jpg')

pink_heels = Product.create!(name: 'Pink Heels',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 118.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: shoes.id, sku: 'AKJH1783')

  pink_heels_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595349766/Products/Fashion/ReuKo3KuCdUfVfaxUrYHQPiv_m3yuhe.jpg')
  pink_heels.photos.attach(io: pink_heels_photo_1, filename: 'ReuKo3KuCdUfVfaxUrYHQPiv_m3yuhe.jpg', content_type: 'image/jpg')

scarf_blue = Product.create!(name: 'Blue Scarf',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 25.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: fashion_accessories.id, sku: 'ABPO1783')

  scarf_blue_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295016/Products/Fashion/5hJdxAeuY5H7hhrGqe6wXKv1_l30pyq.jpg')
  scarf_blue.photos.attach(io: scarf_blue_photo_1, filename: '5hJdxAeuY5H7hhrGqe6wXKv1_l30pyq.jpg', content_type: 'image/jpg')

scarf_red = Product.create!(name: 'Red Scarf',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 25.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: fashion_accessories.id)

  scarf_red_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295011/Products/Fashion/Az7RLURDRSjDx5bSuuxoKuKc_cwosvn.jpg')
  scarf_red.photos.attach(io: scarf_red_photo_1, filename: 'Az7RLURDRSjDx5bSuuxoKuKc_cwosvn.jpg', content_type: 'image/jpg')

# satin_blouse = Product.create!(name: 'Satin Blouse',
#   description: 'Elit labore dolore voluptate
#   pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
#   do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
#   dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
#   Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
#   reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 89.99,
#   merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id)

#   satin_blouse_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175183/Heron-Market/Products/Fashion/Satin-Blouse-Front_ud14op.jpg')
#   satin_blouse_photo_2 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175171/Heron-Market/Products/Fashion/Satin-Blouse-Details-Front_hrnoc9.jpg')
#   satin_blouse_photo_3 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588175177/Heron-Market/Products/Fashion/Satin-Blouse-Back_bpbqxb.jpg')
#   satin_blouse.photos.attach(io: satin_blouse_photo_1, filename: 'Satin-Blouse-Front_ud14op.jpg', content_type: 'image/jpg')
#   satin_blouse.photos.attach(io: satin_blouse_photo_2, filename: 'Satin-Blouse-Details-Front_hrnoc9.jpg', content_type: 'image/jpg')
#   satin_blouse.photos.attach(io: satin_blouse_photo_3, filename: 'Satin-Blouse-Back_bpbqxb.jpg', content_type: 'image/jpg')

mid_rise_jeans = Product.create!(name: 'Mid-Rise Jeans 367',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 75.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: bottoms.id)

  mid_rise_jeans_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595349418/Products/Fashion/k3snwiy7HWbvP19oDET3sCDJ_h30pt6.jpg')
  mid_rise_jeans.photos.attach(io: mid_rise_jeans_photo_1, filename: 'k3snwiy7HWbvP19oDET3sCDJ_h30pt6.jpg', content_type: 'image/jpg')

sweater_pink = Product.create!(name: 'Pink Sweater',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 67.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id)

  sweater_pink_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595349802/Products/Fashion/jaDPjtA27zwkzTYW7vwL8JYa_ftkjny.jpg')
  sweater_pink.photos.attach(io: sweater_pink_photo_1, filename: 'jaDPjtA27zwkzTYW7vwL8JYa_ftkjny.jpg', content_type: 'image/jpg')

over_the_knee_boots = Product.create!(name: 'Suede Over-the-Knee Boots',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 110.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: shoes.id)

  over_the_knee_boots_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295002/Products/Fashion/1grqHQFybj3EU7s6kaXF942k_mq2pdu.jpg')
  over_the_knee_boots.photos.attach(io: over_the_knee_boots_photo_1, filename: '1grqHQFybj3EU7s6kaXF942k_mq2pdu.jpg', content_type: 'image/jpg')

pastel_blazer = Product.create!(name: 'Pastel Blazer',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 89.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id)

  pastel_blazer_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595349466/Products/Fashion/rxdpxatnJPBnrmeHwjoRvAWn_tqur18.png')
  pastel_blazer_photo_2 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595349511/Products/Fashion/ukTQ8VwWEASVWs86rW21XfKs_bpt9e1.jpg')
  pastel_blazer_photo_3 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595349457/Products/Fashion/Mp6vVWvkhbwaGMHLEmGxjzUq_ukar5v.jpg')
  pastel_blazer.photos.attach(io: pastel_blazer_photo_1, filename: 'rxdpxatnJPBnrmeHwjoRvAWn_tqur18.png', content_type: 'image/jpg')
  pastel_blazer.photos.attach(io: pastel_blazer_photo_2, filename: 'ukTQ8VwWEASVWs86rW21XfKs_bpt9e1.jpg', content_type: 'image/jpg')
  pastel_blazer.photos.attach(io: pastel_blazer_photo_3, filename: 'Mp6vVWvkhbwaGMHLEmGxjzUq_ukar5v.jpg', content_type: 'image/jpg')

tims_blue = Product.create!(name: 'Blue Tims',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 150.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: shoes.id)

  tims_blue_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295000/Products/Fashion/dyXEhZiTihZsWeXiL9BmghFD_jzkdqy.png')
  tims_blue_photo_2 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595294993/Products/Fashion/a4N4EhA6AWDLEP9FqdJ67X6o_ubnqya.png')
  # tims_blue_photo_3 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189655/Heron-Market/Products/Fashion/Times-Blue-3_ddcg4a.png')
  tims_blue.photos.attach(io: tims_blue_photo_1, filename: 'dyXEhZiTihZsWeXiL9BmghFD_jzkdqy.png', content_type: 'image/jpg')
  tims_blue.photos.attach(io: tims_blue_photo_2, filename: 'a4N4EhA6AWDLEP9FqdJ67X6o_ubnqya.png', content_type: 'image/jpg')
  # tims_blue.photos.attach(io: tims_blue_photo_3, filename: 'Times-Blue-3_ddcg4a.png', content_type: 'image/jpg')

# studded_flats = Product.create!(name: 'Studded Flats',
#   description: 'Elit labore dolore voluptate
#   pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
#   do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
#   dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
#   Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
#   reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 200.00,
#   merchant_id: boutique_sleek_chic.id, sub_category_id: shoes.id)

#   studded_flats_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588190413/Heron-Market/Products/Fashion/Studded-Flats_zqzjxi.png')
#   studded_flats.photos.attach(io: studded_flats_photo_1, filename: 'Studded-Flats_zqzjxi.png', content_type: 'image/jpg')

washed_jeans = Product.create!(name: 'Washed Jeans',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 155.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: bottoms.id)

  washed_jeans_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595349352/Products/Fashion/CdrUeQ11uCAk15oHSfgG2Eev_yxhbmi.png')
  washed_jeans.photos.attach(io: washed_jeans_photo_1, filename: 'CdrUeQ11uCAk15oHSfgG2Eev_yxhbmi.png', content_type: 'image/jpg')

pink_silhettos = Product.create!(name: 'Pink Silhetto',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 250.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: shoes.id)

  pink_silhettos_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595349710/Products/Fashion/V4JksdWs7SrJWfud4UXvsee6_bzg2ve.png')
  pink_silhettos.photos.attach(io: pink_silhettos_photo_1, filename: 'V4JksdWs7SrJWfud4UXvsee6_bzg2ve.png', content_type: 'image/jpg')

panama_hat = Product.create!(name: 'Panama Hat',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 45.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: fashion_accessories.id)

  panama_hat_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595294995/Products/Fashion/6BEvY9ghid8xPqxej7GJQJsW_pui37v.jpg')
  panama_hat.photos.attach(io: panama_hat_photo_1, filename: '6BEvY9ghid8xPqxej7GJQJsW_pui37v.jpg', content_type: 'image/jpg')

jean_short = Product.create!(name: 'Jean Short',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 50.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: bottoms.id)

  jean_short_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595349471/Products/Fashion/5GP2cX2bh9sUqjL6NXTWfhom_x3l8qd.jpg')
  jean_short.photos.attach(io: jean_short_photo_1, filename: '5GP2cX2bh9sUqjL6NXTWfhom_x3l8qd.jpg', content_type: 'image/jpg')

# red_shoes = Product.create!(name: 'Red Shoes',
#   description: 'Elit labore dolore voluptate
#   pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
#   do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
#   dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
#   Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
#   reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 175.00,
#   merchant_id: boutique_sleek_chic.id, sub_category_id: shoes.id)

#   red_shoes_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189600/Heron-Market/Products/Fashion/Red-Shoes_leldby.jpg')
#   red_shoes.photos.attach(io: red_shoes_photo_1, filename: 'Red-Shoes_leldby.jpg', content_type: 'image/jpg')

leather_jacket = Product.create!(name: 'Leather Jacket',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 350.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id)


  leather_jacket_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595294990/Products/Fashion/1J8sq2scPWEJLYN446bRmhVH_rgh7lw.jpg')
  leather_jacket_photo_2 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595294997/Products/Fashion/6RvYmFsYEt6jXodtCrNMQpvu_frsjlw.jpg')
  leather_jacket_photo_3 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295002/Products/Fashion/biNTqEgWe2TtHPnFpkXft5Pv_nsnlr8.jpg')
  leather_jacket.photos.attach(io: leather_jacket_photo_1, filename: '1J8sq2scPWEJLYN446bRmhVH_rgh7lw.jpg', content_type: 'image/jpg')
  leather_jacket.photos.attach(io: leather_jacket_photo_2, filename: '6RvYmFsYEt6jXodtCrNMQpvu_frsjlw.jpg', content_type: 'image/jpg')
  leather_jacket.photos.attach(io: leather_jacket_photo_3, filename: 'biNTqEgWe2TtHPnFpkXft5Pv_nsnlr8.jpg', content_type: 'image/jpg')

white_shirt = Product.create!(name: 'Crispy White Shirt',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 79.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id)

  white_shirt_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595349479/Products/Fashion/PjyRsurAD5zsAxuGD6thXo4J_xjlhjs.jpg')
  white_shirt_photo_2 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595349440/Products/Fashion/N8oATHxSEifpQknEkhEkLPi4_oesqwz.jpg')
  white_shirt_photo_3 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595294998/Products/Fashion/97gThyedpbEYrEGpZ6VWEhz7_vdhrau.jpg')
  white_shirt.photos.attach(io: white_shirt_photo_1, filename: 'PjyRsurAD5zsAxuGD6thXo4J_xjlhjs.jpg', content_type: 'image/jpg')
  white_shirt.photos.attach(io: white_shirt_photo_2, filename: 'N8oATHxSEifpQknEkhEkLPi4_oesqwz.jpg', content_type: 'image/jpg')
  white_shirt.photos.attach(io: white_shirt_photo_3, filename: '97gThyedpbEYrEGpZ6VWEhz7_vdhrau.jpg', content_type: 'image/jpg')

bra_pantie_kit = Product.create!(name: 'Sexy Bra Panti Kit',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 135.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: underwears.id)

  bra_pantie_kit_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295014/Products/Fashion/HmyeQ4cmkHSVzquoY2eGmHbz_bwrgzp.jpg')
  bra_pantie_kit.photos.attach(io: bra_pantie_kit_photo_1, filename: 'HmyeQ4cmkHSVzquoY2eGmHbz_bwrgzp.jpg', content_type: 'image/jpg')

# lingerie_set = Product.create!(name: 'Cute Lingerie Set',
#   description: 'Elit labore dolore voluptate
#   pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
#   do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
#   dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
#   Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
#   reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 275.00,
#   merchant_id: boutique_sleek_chic.id, sub_category_id: underwears.id)

#   lingerie_set_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189652/Heron-Market/Products/Fashion/Lingerie-Set_afrsve.jpg')
#   lingerie_set.photos.attach(io: lingerie_set_photo_1, filename: 'Lingerie-Set_afrsve.jpg', content_type: 'image/jpg')

blue_shirt = Product.create!(name: 'Blue Shirt',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 78.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id)

  blue_shirt_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595349372/Products/Fashion/J5Ly9tcG5ArwkWx4aMqhuaud_cttca7.jpg')
  blue_shirt_photo_2 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595349542/Products/Fashion/uuQKKS6E1imjmAr5JeSjVc8g_wzk8d8.jpg')
  # blue_shirt_photo_3 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189692/Heron-Market/Products/Fashion/Blue-Shirt-Details_i5entx.jpg')
  blue_shirt.photos.attach(io: blue_shirt_photo_1, filename: 'J5Ly9tcG5ArwkWx4aMqhuaud_cttca7.jpg', content_type: 'image/jpg')
  blue_shirt.photos.attach(io: blue_shirt_photo_2, filename: 'uuQKKS6E1imjmAr5JeSjVc8g_wzk8d8.jpg', content_type: 'image/jpg')
  # blue_shirt.photos.attach(io: blue_shirt_photo_3, filename: 'Blue-Shirt-Details_i5entx.jpg', content_type: 'image/jpg')

embroided_Top = Product.create!(name: 'Embroided White Shirt',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 75.95,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id)

  embroided_Top_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295010/Products/Fashion/hxSUmtRRz2CMCatQc2G7k4cS_xabi6l.jpg')
  embroided_Top_photo_2 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595349428/Products/Fashion/mFHBXTCqCuDxUc1sprgXXnp8_m1tbam.jpg')
  embroided_Top.photos.attach(io: embroided_Top_photo_1, filename: 'hxSUmtRRz2CMCatQc2G7k4cS_xabi6l.jpg', content_type: 'image/jpg')
  embroided_Top.photos.attach(io: embroided_Top_photo_2, filename: 'mFHBXTCqCuDxUc1sprgXXnp8_m1tbam.jpg', content_type: 'image/jpg')

# light_pink_purse = Product.create!(name: 'Light Pink Purse',
#   description: 'Elit labore dolore voluptate
#   pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
#   do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
#   dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
#   Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
#   reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 89.99,
#   merchant_id: boutique_sleek_chic.id, sub_category_id: fashion_accessories.id)

#   light_pink_purse_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189642/Heron-Market/Products/Fashion/Light-Pink-Purse_ckgxal.jpg')
#   light_pink_purse.photos.attach(io: light_pink_purse_photo_1, filename: 'Light-Pink-Purse_ckgxal.jpg', content_type: 'image/jpg')

red_bag = Product.create!(name: 'Mini Red Bag',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 125.95,
  merchant_id: boutique_sleek_chic.id, sub_category_id: fashion_accessories.id)

  red_bag_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295013/Products/Fashion/EqFP4mM6b3ykJVcdrPJcadYx_gt7tq9.jpg')
  red_bag.photos.attach(io: red_bag_photo_1, filename: 'EqFP4mM6b3ykJVcdrPJcadYx_gt7tq9.jpg', content_type: 'image/jpg')

jean_coat = Product.create!(name: 'Jean Coat',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 189.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: tops.id)

  jean_coat_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295003/Products/Fashion/FaYtCfnu31sq7QbcatcVE6Uj_z2kp1i.png')
  jean_coat.photos.attach(io: jean_coat_photo_1, filename: 'FaYtCfnu31sq7QbcatcVE6Uj_z2kp1i.png', content_type: 'image/jpg')

sexy_red_pump = Product.create!(name: 'Sexy Red Pump',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 225.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: shoes.id)

  sexy_red_pump_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595554255/Products/Fashion/NedP1t32o7vc8gDiydC1AbL8_pvh3r3.jpg')
  sexy_red_pump.photos.attach(io: sexy_red_pump_photo_1, filename: 'NedP1t32o7vc8gDiydC1AbL8_pvh3r3.jpg', content_type: 'image/jpg')

light_brown_clutch = Product.create!(name: 'Mini Light Brown Clutch',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 330.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: fashion_accessories.id)

  light_brown_clutch_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295010/Products/Fashion/DyxV2H7vVhMPwQzSkFEPLd8Q_yfoqby.jpg')
  light_brown_clutch.photos.attach(io: light_brown_clutch_photo_1, filename: 'DyxV2H7vVhMPwQzSkFEPLd8Q_yfoqby.jpg', content_type: 'image/jpg')

# marble_earrings = Product.create!(name: 'Marble Earrings',
#   description: 'Elit labore dolore voluptate
#   pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
#   do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
#   dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
#   Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
#   reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 225.00,
#   merchant_id: boutique_sleek_chic.id, sub_category_id: jewelleries.id)

#   marble_earrings_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189661/Heron-Market/Products/Fashion/marble-earrings_1_w5mmyl.jpg')
#   marble_earrings_photo_2 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189706/Heron-Market/Products/Fashion/marble-earrings_dvdcsd.jpg')
#   marble_earrings.photos.attach(io: marble_earrings_photo_1, filename: 'marble-earrings_1_w5mmyl.jpg', content_type: 'image/jpg')
#   marble_earrings.photos.attach(io: marble_earrings_photo_2, filename: 'marble-earrings_dvdcsd.jpg.jpg', content_type: 'image/jpg')

pearl_earrings = Product.create!(name: 'Pearl Earrings',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 175.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: jewelleries.id)

  pearl_earrings_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295291/Products/Fashion/ckfVgPKo2pAHDAZHaQbU4ZWj_pzovf6.jpg')
  pearl_earrings.photos.attach(io: pearl_earrings_photo_1, filename: 'ckfVgPKo2pAHDAZHaQbU4ZWj_pzovf6.jpg', content_type: 'image/jpg')

# gold_chocker = Product.create!(name: 'Gold Chocker',
#   description: 'Elit labore dolore voluptate
#   pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
#   do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
#   dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
#   Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
#   reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 45.95,
#   merchant_id: boutique_sleek_chic.id, sub_category_id: jewelleries.id)

#   gold_chocker_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588189693/Heron-Market/Products/Fashion/Gold-Chocker_ik9oys.jpg')
#   gold_chocker.photos.attach(io: gold_chocker_photo_1, filename: 'Gold-Chocker_ik9oys.jpg', content_type: 'image/jpg')

gold_bracelet = Product.create!(name: 'Gold Bracelet',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 165.00,
  merchant_id: boutique_sleek_chic.id, sub_category_id: jewelleries.id)

  gold_bracelet_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295289/Products/Fashion/c2Sawrk92GUF1rrPLVTjxFHD_qocp41.jpg')
  gold_bracelet.photos.attach(io: gold_bracelet_photo_1, filename: 'c2Sawrk92GUF1rrPLVTjxFHD_qocp41.jpg', content_type: 'image/jpg')

gold_necklace = Product.create!(name: 'Dainty Gold Necklace',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 185.99,
  merchant_id: boutique_sleek_chic.id, sub_category_id: jewelleries.id)

  gold_necklace_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295290/Products/Fashion/aC1hnniHPzgjMdPogVxaEnKE_a9zmsw.jpg')
  gold_necklace.photos.attach(io: gold_necklace_photo_1, filename: 'aC1hnniHPzgjMdPogVxaEnKE_a9zmsw.jpg', content_type: 'image/jpg')



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
  picture_1: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595876637/Merchants/holger-link-MqNyusb_ne4-unsplash_fnkbsz.jpg',
  picture_2: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595876643/Merchants/annie-spratt-bFAfyqxRdPA-unsplash_ktcwkj.jpg',
  picture_3: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595876640/Merchants/taisiia-shestopal-0vUv61WZ2hI-unsplash_o6t6b2.jpg',
  picture_4: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595876910/Merchants/uby-yanes-QPI0xq-52Ds-unsplash_d6kqti.jpg')


# Products - Beauty and Wellness
infuser_oil = Product.create!(name: 'Essential Oil Infuser',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 75.00,
  merchant_id: bare_beauty.id, sub_category_id: candles_and_essential_oils.id)

  infuser_oil_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595348591/Products/Beauty%20And%20Wellness/oY6z39kgzBsaaVAH7TMa2cUi_a3uew1.jpg')
  infuser_oil.photos.attach(io: infuser_oil_photo_1, filename: 'oY6z39kgzBsaaVAH7TMa2cUi_a3uew1.jpg', content_type: 'image/jpg')

  quantity_ml = ProductVariant.create(size: "75ml", stock_qty: 3, product_id: infuser_oil.id)


# flask_induser = Product.create!(name: 'Flask Difuser',
#   description: 'Elit labore dolore voluptate
#   pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
#   do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
#   dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
#   Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
#   reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 28.65,
#   merchant_id: bare_beauty.id, sub_category_id: candles_and_essential_oils.id)

#   flask_induser_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257688/Heron-Market/Products/beautywellness/flask-infuser_kfpvms.jpg')
#   flask_induser.photos.attach(io: flask_induser_photo_1, filename: 'flask-infuser_kfpvms.jpg', content_type: 'image/jpg')

aroma_candle = Product.create!(name: 'Aroma Candle',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 45.00,
  merchant_id: bare_beauty.id, sub_category_id: candles_and_essential_oils.id)

  aroma_candle_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595553730/Products/Beauty%20And%20Wellness/tsUcx1HiosTyTsHQ7wzn1zf7_z3xxxw.jpg')
  aroma_candle.photos.attach(io: aroma_candle_photo_1, filename: 'tsUcx1HiosTyTsHQ7wzn1zf7_z3xxxw.jpg', content_type: 'image/jpg')

eyeshadow = Product.create!(name: 'Classic Nude Shadows',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 45.95,
  merchant_id: bare_beauty.id, sub_category_id: makeup.id)

  eyeshadow_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595348576/Products/Beauty%20And%20Wellness/Dm3iK3dmaEHMN7uLnmhQ7zHd_faek8j.jpg')
  eyeshadow.photos.attach(io: eyeshadow_photo_1, filename: 'Dm3iK3dmaEHMN7uLnmhQ7zHd_faek8j.jpg', content_type: 'image/jpg')

soy_candle = Product.create!(name: 'Jasmin Soy Candle',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 80.00,
  merchant_id: bare_beauty.id, sub_category_id: candles_and_essential_oils.id)

  soy_candle_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595553593/Products/Beauty%20And%20Wellness/1yRkkmcz86jPyNoLjbKeHqY1_lh03i0.jpg')
  soy_candle.photos.attach(io: soy_candle_photo_1, filename: '1yRkkmcz86jPyNoLjbKeHqY1_lh03i0.jpg', content_type: 'image/jpg')

skincare_bundle = Product.create!(name: 'One Skincare Bundle',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 40.95,
  merchant_id: bare_beauty.id, sub_category_id: skin_care.id)

  skincare_bundle_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295182/Products/Beauty%20And%20Wellness/g76Z3FxMfYUfCpU8R7Uxbgay_atbbqn.jpg')
  skincare_bundle.photos.attach(io: skincare_bundle_photo_1, filename: 'g76Z3FxMfYUfCpU8R7Uxbgay_atbbqn.jpg', content_type: 'image/jpg')

countour_palette = Product.create!(name: 'Aly Countour Palette',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 55.00,
  merchant_id: bare_beauty.id, sub_category_id: makeup.id)

  countour_palette_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295189/Products/Beauty%20And%20Wellness/5nwW49BK13oQJa1VocYDtuK9_w8fl3c.jpg')
  countour_palette.photos.attach(io: countour_palette_photo_1, filename: '5nwW49BK13oQJa1VocYDtuK9_w8fl3c.jpg', content_type: 'image/jpg')

makeup_brush = Product.create!(name: 'Chelsea Makeup Brushes',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 75.96,
  merchant_id: bare_beauty.id, sub_category_id: accessories_tools.id)

  makeup_brush_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595348576/Products/Beauty%20And%20Wellness/RTJ3Yw5VTfy8vMpSiMfUruPX_uhx4rq.jpg')
  makeup_brush.photos.attach(io: makeup_brush_photo_1, filename: 'RTJ3Yw5VTfy8vMpSiMfUruPX_uhx4rq.jpg', content_type: 'image/jpg')

lipstick = Product.create!(name: 'Pinky Chicky Lipstick',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 65.00,
  merchant_id: bare_beauty.id, sub_category_id: makeup.id)

  lipstick_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595348565/Products/Beauty%20And%20Wellness/tvf4ec8X1hiXWdxkWcsCctHH_dyz2hw.jpg')
  lipstick.photos.attach(io: lipstick_photo_1, filename: 'tvf4ec8X1hiXWdxkWcsCctHH_dyz2hw.jpg', content_type: 'image/jpg')

# shampoo = Product.create!(name: 'Apothecary87 Shampoo',
#   description: 'Elit labore dolore voluptate
#   pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
#   do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
#   dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
#   Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
#   reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 32.95,
#   merchant_id: bare_beauty.id, sub_category_id: hair_care.id)

#   shampoo_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257698/Heron-Market/Products/beautywellness/Shampoo_z7bga5.jpg')
#   shampoo.photos.attach(io: shampoo_photo_1, filename: 'Shampoo_z7bga5.jpg', content_type: 'image/jpg')

facial_roller = Product.create!(name: 'Sculpt Facial Roller',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 58.99,
  merchant_id: bare_beauty.id, sub_category_id: accessories_tools.id)

  facial_roller_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295190/Products/Beauty%20And%20Wellness/ES7V3ehtU9riDyQGMUWfJn5N_kixezy.jpg')
  facial_roller.photos.attach(io: facial_roller_photo_1, filename: 'ES7V3ehtU9riDyQGMUWfJn5N_kixezy.jpg', content_type: 'image/jpg')

body_oil = Product.create!(name: 'Rose Body Oil',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 25.95,
  merchant_id: bare_beauty.id, sub_category_id: body_care.id)

  body_oil_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295183/Products/Beauty%20And%20Wellness/i1DVpBJbQmqLHap1tsqHVTd3_jpxyd6.jpg')
  body_oil.photos.attach(io: body_oil_photo_1, filename: 'i1DVpBJbQmqLHap1tsqHVTd3_jpxyd6.jpg', content_type: 'image/jpg')

one_beauty = Product.create!(name: 'One Beauty Moisturizing Serum',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 48.99,
  merchant_id: bare_beauty.id, sub_category_id: skin_care.id)

  one_beauty_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595348578/Products/Beauty%20And%20Wellness/ouA1YHyrUrBaVoTLgvPSfDAb_yqwlsc.jpg')
  one_beauty.photos.attach(io: one_beauty_photo_1, filename: 'ouA1YHyrUrBaVoTLgvPSfDAb_yqwlsc.jpg', content_type: 'image/jpg')

mascara = Product.create!(name: 'Pink Lash Mascara',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 18.90,
  merchant_id: bare_beauty.id, sub_category_id: makeup.id)

  mascara_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595348609/Products/Beauty%20And%20Wellness/VfwepnnhP52fjzaBA3GCTU4m_p3rogr.jpg')
  mascara.photos.attach(io: mascara_photo_1, filename: 'VfwepnnhP52fjzaBA3GCTU4m_p3rogr.jpg', content_type: 'image/jpg')

face_sculpte = Product.create!(name: 'Quartz Luxury Face Sculpt',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 38.99,
  merchant_id: bare_beauty.id, sub_category_id: accessories_tools.id)

  face_sculpte_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295182/Products/Beauty%20And%20Wellness/5P7UZ8c7okqy3qHjWNTXt4Y4_guygcq.jpg')
  face_sculpte.photos.attach(io: face_sculpte_photo_1, filename: '5P7UZ8c7okqy3qHjWNTXt4Y4_guygcq.jpg', content_type: 'image/jpg')



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
  picture_1: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595876192/Merchants/igor-dernovoy-fzlqazt0PxA-unsplash_mm5qlm.jpg',
  picture_2: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595876191/Merchants/morgan-von-gunten-IF2PxIT7UNE-unsplash_awii35.jpg',
  picture_3: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595876184/Merchants/gaelle-marcel-g917EoHF-Ls-unsplash_wximfn.jpg',
  picture_4: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595876196/Merchants/dane-deaner-w4XNPJNMllA-unsplash_ewzldt.jpg')


# Products - Food
bread_loaf = Product.create!(name: 'Sweet Bread Loaf',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 9.90,
  merchant_id: rustic_grocery.id, sub_category_id: bread_and_bakery.id)

  bread_loaf_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295109/Products/Food/EgVqFhd4iY9gbL1eyuGDcK3A_viv20b.jpg')
  bread_loaf.photos.attach(io: bread_loaf_photo_1, filename: 'EgVqFhd4iY9gbL1eyuGDcK3A_viv20b.jpg', content_type: 'image/jpg')

  bread_loaf_variant = ProductVariant.create(stock_qty: 100, product_id: bread_loaf.id)

granola_bites = Product.create!(name: 'Sweet Granola Bar',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 6.99,
  merchant_id: rustic_grocery.id, sub_category_id: snacks_cookies.id)

  granola_bites_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595554345/Products/Food/porEJAhY61PGrEin1ZZqR4nW_m7w8n3.jpg')
  granola_bites.photos.attach(io: granola_bites_photo_1, filename: 'porEJAhY61PGrEin1ZZqR4nW_m7w8n3.jpg', content_type: 'image/jpg')

chocovanilla_cake = Product.create!(name: 'Chocovanilla Cake',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 30.95,
  merchant_id: rustic_grocery.id, sub_category_id: bread_and_bakery.id)

  chocovanilla_cake_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595554314/Products/Food/V5jCtf7f816JJSdXtx8vty5Q_it5zxv.jpg')
  chocovanilla_cake.photos.attach(io: chocovanilla_cake_photo_1, filename: 'V5jCtf7f816JJSdXtx8vty5Q_it5zxv.jpg', content_type: 'image/jpg')

reusable_bag = Product.create!(name: 'Brown Reusable Bag',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 5.99,
  merchant_id: rustic_grocery.id, sub_category_id: organic_goods.id)

  reusable_bag_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595349825/Products/Food/rcCCDBDb9EA9uNov7K61t5hm_yeloj5.jpg')
  reusable_bag.photos.attach(io: reusable_bag_photo_1, filename: 'rcCCDBDb9EA9uNov7K61t5hm_yeloj5.jpg', content_type: 'image/jpg')

# coffee = Product.create!(name: 'Dark Coffe Beans',
#   description: 'Elit labore dolore voluptate
#   pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
#   do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
#   dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
#   Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
#   reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 25.90,
#   merchant_id: rustic_grocery.id, sub_category_id: beverages.id)

#   coffee_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197543/Heron-Market/Products/Food/coffee_akhhag.jpg')
#   coffee.photos.attach(io: coffee_photo_1, filename: 'coffee_akhhag.jpg', content_type: 'image/jpg')

cookies_snack = Product.create!(name: 'Apple Cookies',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 8.00,
  merchant_id: rustic_grocery.id, sub_category_id: snacks_cookies.id)

  cookies_snack_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595553815/Products/Food/vbdggyBsiCS7VkqRfqEawaGj_dacodt.jpg')
  cookies_snack.photos.attach(io: cookies_snack_photo_1, filename: 'vbdggyBsiCS7VkqRfqEawaGj_dacodt.jpg', content_type: 'image/jpg')

cupcake = Product.create!(name: 'Straberry & Vanilla Cupcake',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 18.99,
  merchant_id: rustic_grocery.id, sub_category_id: bread_and_bakery.id)

  cupcake_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295301/Products/Food/7KJ9uP1ZyWDWyMBgzFZWXrGz_pebr7h.jpg')
  cupcake.photos.attach(io: cupcake_photo_1, filename: '7KJ9uP1ZyWDWyMBgzFZWXrGz_pebr7h.jpg', content_type: 'image/jpg')

# eart_juice = Product.create!(name: 'Earthy Juice',
#   description: 'Elit labore dolore voluptate
#   pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
#   do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
#   dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
#   Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
#   reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 9.97,
#   merchant_id: rustic_grocery.id, sub_category_id: beverages.id)

#   eart_juice_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197542/Heron-Market/Products/Food/Earth-Juice_n40mln.jpg')
#   eart_juice.photos.attach(io: eart_juice_photo_1, filename: 'Earth-Juice_n40mln.jpg', content_type: 'image/jpg')

habit_drink = Product.create!(name: 'Habit Healthy Juice',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 8.67,
  merchant_id: rustic_grocery.id, sub_category_id: beverages.id)

  habit_drink_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595554335/Products/Food/sDVsD8DPuv9uDeWhb9skcgWD_ouadcj.jpg')
  habit_drink.photos.attach(io: habit_drink_photo_1, filename: 'sDVsD8DPuv9uDeWhb9skcgWD_ouadcj.jpg', content_type: 'image/jpg')

maccaron = Product.create!(name: 'Sweet French Maccaron',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 14.99,
  merchant_id: rustic_grocery.id, sub_category_id: bread_and_bakery.id)

  maccaron_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595553809/Products/Food/Vmhbn5q37vmtG29DrpQLfcSc_geoqio.jpg')
  maccaron.photos.attach(io: maccaron_photo_1, filename: 'Vmhbn5q37vmtG29DrpQLfcSc_geoqio.jpg', content_type: 'image/jpg')

mixed_granola = Product.create!(name: 'Mixed Granola',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 7.99,
  merchant_id: rustic_grocery.id, sub_category_id: snacks_cookies.id)

  mixed_granola_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295092/Products/Food/csjeiRKcDASJjzePEQvJ7B3V_h8f0td.jpg')
  mixed_granola.photos.attach(io: mixed_granola_photo_1, filename: 'csjeiRKcDASJjzePEQvJ7B3V_h8f0td.jpg', content_type: 'image/jpg')

# organic_oil = Product.create!(name: 'Zen Organic Oil',
#   description: 'Elit labore dolore voluptate
#   pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
#   do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
#   dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
#   Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
#   reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 10.98,
#   merchant_id: rustic_grocery.id, sub_category_id: organic_goods.id)

#   organic_oil_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588197501/Heron-Market/Products/Food/Organic_Oil_kalw6t.jpg')
#   organic_oil.photos.attach(io: organic_oil_photo_1, filename: 'Organic_Oil_kalw6t.jpg', content_type: 'image/jpg')

popcorn = Product.create!(name: 'Buttery Popcorn',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 6.90,
  merchant_id: rustic_grocery.id, sub_category_id: snacks_cookies.id)

  popcorn_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595553909/Products/Food/JRCAHpHdL5YUqZtREeT9rkZP_bzrvvb.jpg')
  popcorn.photos.attach(io: popcorn_photo_1, filename: 'JRCAHpHdL5YUqZtREeT9rkZP_bzrvvb.jpg', content_type: 'image/jpg')

pressed_juice = Product.create!(name: 'Fruity Pressed Juice',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 7.90,
  merchant_id: rustic_grocery.id, sub_category_id: beverages.id)

  pressed_juice_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595553891/Products/Food/L3WfC4vQpRyE1MNX3pkHi6FN_yuxakd.jpg')
  pressed_juice.photos.attach(io: pressed_juice_photo_1, filename: 'L3WfC4vQpRyE1MNX3pkHi6FN_yuxakd.jpg', content_type: 'image/jpg')

milk_bottle = Product.create!(name: 'Cow Milk',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 6.90,
  merchant_id: rustic_grocery.id, sub_category_id: dairy_and_eggs.id)

  milk_bottle_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295096/Products/Food/BDQjf7kSby6nR6CXG286BnMc_jbzjp7.jpg')
  milk_bottle.photos.attach(io: milk_bottle_photo_1, filename: 'BDQjf7kSby6nR6CXG286BnMc_jbzjp7.jpg', content_type: 'image/jpg')

brocoli = Product.create!(name: 'Brocoli',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 3.99,
  merchant_id: rustic_grocery.id, sub_category_id: vegetables.id)

  brocoli_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295109/Products/Food/D2MV3hzJf3t4SR2FzuBMtFn8_zevovs.jpg')
  brocoli.photos.attach(io: brocoli_photo_1, filename: 'D2MV3hzJf3t4SR2FzuBMtFn8_zevovs.jpg', content_type: 'image/jpg')

cheese = Product.create!(name: 'Creamy Cheese',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 11.69,
  merchant_id: rustic_grocery.id, sub_category_id: dairy_and_eggs.id)

  cheese_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595553874/Products/Food/nbbApDMZiqerpqKXnWjmwWQV_zgirem.jpg')
  cheese.photos.attach(io: cheese_photo_1, filename: 'nbbApDMZiqerpqKXnWjmwWQV_zgirem.jpg', content_type: 'image/jpg')

mushroom = Product.create!(name: 'Wild Mushrooms',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 3.99,
  merchant_id: rustic_grocery.id, sub_category_id: vegetables.id)

  mushroom_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295100/Products/Food/9qk3G5GK45E2CsHhGCpHNNiZ_rqfsup.jpg')
  mushroom.photos.attach(io: mushroom_photo_1, filename: '9qk3G5GK45E2CsHhGCpHNNiZ_rqfsup.jpg', content_type: 'image/jpg')

eggs = Product.create!(name: 'Wild Eggs',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 3.99,
  merchant_id: rustic_grocery.id, sub_category_id: dairy_and_eggs.id)

  eggs_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295104/Products/Food/69wonEJK95d7XcHQJ81xYugb_tphj1o.jpg')
  eggs.photos.attach(io: eggs_photo_1, filename: '69wonEJK95d7XcHQJ81xYugb_tphj1o.jpg', content_type: 'image/jpg')

grapes = Product.create!(name: 'Red Grapes',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 4.99,
  merchant_id: rustic_grocery.id, sub_category_id: fruits.id)

  grapes_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595553868/Products/Food/RBbnk3tzYW86MK1DXK3TF3E7_omjuaw.jpg')
  grapes.photos.attach(io: grapes_photo_1, filename: 'RBbnk3tzYW86MK1DXK3TF3E7_omjuaw.jpg', content_type: 'image/jpg')

noodles = Product.create!(name: 'Spaghetti Noodles',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 3.90,
  merchant_id: rustic_grocery.id, sub_category_id: bread_and_bakery.id)

  noodles_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595553824/Products/Food/sjqqhjLp1EiKjkDuuyq2Yc9h_dfe9ak.jpg')
  noodles.photos.attach(io: noodles_photo_1, filename: 'sjqqhjLp1EiKjkDuuyq2Yc9h_dfe9ak.jpg', content_type: 'image/jpg')

pineapple = Product.create!(name: 'Pineapple',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 6.90,
  merchant_id: rustic_grocery.id, sub_category_id: fruits.id)

  pineapple_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295114/Products/Food/f65txMG497Do6V6bkZgKzEm6_fa4tih.jpg')
  pineapple.photos.attach(io: pineapple_photo_1, filename: 'f65txMG497Do6V6bkZgKzEm6_fa4tih.jpg', content_type: 'image/jpg')

salmon = Product.create!(name: 'Wild Salmon',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 14.90,
  merchant_id: rustic_grocery.id, sub_category_id: meat_and_fish.id)

  salmon_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295106/Products/Food/GndZBiWw9oakdtsfmgf8J1yb_tkqaif.jpg')
  salmon.photos.attach(io: salmon_photo_1, filename: 'GndZBiWw9oakdtsfmgf8J1yb_tkqaif.jpg', content_type: 'image/jpg')

steak = Product.create!(name: 'Juicy Steak',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 17.68,
  merchant_id: rustic_grocery.id, sub_category_id: meat_and_fish.id)

  steak_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595553900/Products/Food/kkeZcCPRPUTjMYpYyzXZMaJ9_yvahhw.jpg')
  steak.photos.attach(io: steak_photo_1, filename: 'kkeZcCPRPUTjMYpYyzXZMaJ9_yvahhw.jpg', content_type: 'image/jpg')


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
  picture_1: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595895374/Merchants/david-nabil-ocQcix1Rgcg-unsplash_hfyapq.jpg',
  picture_2: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595874740/Merchants/haley-truong-g3gn-IP1rPU-unsplash_zk9wln.jpg',
  picture_3: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595874740/Merchants/paul-hanaoka-jqgc0u3FrmI-unsplash_g2mf9h.jpg',
  picture_4: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595874727/Merchants/kevin-maillefer-ZjAdEuyH6d0-unsplash_uuerzt.jpg')



# Products - Home Decor
# basket = Product.create!(name: 'Bath Basket',
#   description: 'Elit labore dolore voluptate
#   pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
#   do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
#   dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
#   Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
#   reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 22.90,
#   merchant_id: wild_bungalow.id, sub_category_id: storage.id)

#   basket_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257838/Heron-Market/Products/homedecor/Basket_izrdyx.jpg')
#   basket.photos.attach(io: basket_photo_1, filename: 'Basket_izrdyx.jpg', content_type: 'image/jpg')
#     basket_variant = ProductVariant.create(stock_qty: 100, product_id: basket.id)

bed_lamp = Product.create!(name: 'Bed Lamp', description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 55.00,
  merchant_id: wild_bungalow.id, sub_category_id: home_decor_sales.id)

  bed_lamp_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595553767/Products/Home%20Decor/U5arMUwwh4f3LGLAv7QyqgSL_jqvu5b.jpg')
  bed_lamp.photos.attach(io: bed_lamp_photo_1, filename: 'U5arMUwwh4f3LGLAv7QyqgSL_jqvu5b.jpg', content_type: 'image/jpg')

black_frame = Product.create!(name: 'Black Frame',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 16.90,
  merchant_id: wild_bungalow.id, sub_category_id: wall_decor.id)

  black_frame_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295252/Products/Home%20Decor/EnKcBvmwmTpruZKYNrwehoHE_memj5j.jpg')
  black_frame.photos.attach(io: black_frame_photo_1, filename: 'EnKcBvmwmTpruZKYNrwehoHE_memj5j.jpg', content_type: 'image/jpg')

# black_serveware = Product.create!(name: 'Black Serveware Set',
#   description: 'Elit labore dolore voluptate
#   pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
#   do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
#   dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
#   Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
#   reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 110.00,
#   merchant_id: wild_bungalow.id, sub_category_id: serveware.id)

#   black_serveware_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257805/Heron-Market/Products/homedecor/Black-servewareset_cmgupp.jpg')
#   black_serveware.photos.attach(io: black_serveware_photo_1, filename: 'Black-servewareset_cmgupp.jpg', content_type: 'image/jpg')

clear_vases = Product.create!(name: 'Clear Vases',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 25.50,
  merchant_id: wild_bungalow.id, sub_category_id: plants_and_vases.id)

  clear_vases_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295252/Products/Home%20Decor/GKoq6bWGQo8DJEvXb4CRJ8Cf_fqkk4v.jpg')
  clear_vases.photos.attach(io: clear_vases_photo_1, filename: 'GKoq6bWGQo8DJEvXb4CRJ8Cf_fqkk4v.jpg', content_type: 'image/jpg')

coffee_mug = Product.create!(name: 'Rustic Coffee Mug',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 20.00,
  merchant_id: wild_bungalow.id, sub_category_id: glassware_and_mugs.id)

  coffee_mug_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295253/Products/Home%20Decor/7JJ5M6nDDoEA9BaM1Z1hBBbB_w6znkt.jpg')
  coffee_mug.photos.attach(io: coffee_mug_photo_1, filename: '7JJ5M6nDDoEA9BaM1Z1hBBbB_w6znkt.jpg', content_type: 'image/jpg')

coffe_table_book = Product.create!(name: 'Minimalist Coffe Table Book',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 77.00,
  merchant_id: wild_bungalow.id, sub_category_id: home_accessories.id)

  coffe_table_book_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295246/Products/Home%20Decor/eorZ9WVieJKizjuX3p6G6as8_lnbrfz.jpg')
  coffe_table_book.photos.attach(io: coffe_table_book_photo_1, filename: 'eorZ9WVieJKizjuX3p6G6as8_lnbrfz.jpg', content_type: 'image/jpg')

decorative_chair = Product.create!(name: 'Soft Decorative Chair',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 165.50,
  merchant_id: wild_bungalow.id, sub_category_id: home_decor_sales.id)

  decorative_chair_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595554443/Products/Home%20Decor/PsqxDyZQCf77GBNeXMX2JgmT_cnpyvb.jpg')
  decorative_chair.photos.attach(io: decorative_chair_photo_1, filename: 'PsqxDyZQCf77GBNeXMX2JgmT_cnpyvb.jpg', content_type: 'image/jpg')

gold_frame = Product.create!(name: 'Gold Picture Frame',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 16.90,
  merchant_id: wild_bungalow.id, sub_category_id: wall_decor.id)

  gold_frame_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295248/Products/Home%20Decor/81Wgzoc4GDo1Xg5uFAzcF1E1_nyg9ip.jpg')
  gold_frame.photos.attach(io: gold_frame_photo_1, filename: '81Wgzoc4GDo1Xg5uFAzcF1E1_nyg9ip.jpg', content_type: 'image/jpg')

houseplant = Product.create!(name: 'House Plant',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 28.00,
  merchant_id: wild_bungalow.id, sub_category_id: plants_and_vases.id)

  houseplant_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295252/Products/Home%20Decor/FLXKqAhpwhDQSTB6JMcoc6AY_wyzrql.jpg')
  houseplant.photos.attach(io: houseplant_photo_1, filename: 'FLXKqAhpwhDQSTB6JMcoc6AY_wyzrql.jpg', content_type: 'image/jpg')

# key_holder = Product.create!(name: 'Car Key Holder',
#   description: 'Elit labore dolore voluptate
#   pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
#   do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
#   dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
#   Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
#   reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 18.50,
#   merchant_id: wild_bungalow.id, sub_category_id: home_accessories.id)

#   key_holder_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257798/Heron-Market/Products/homedecor/key-holder_fxltmb.jpg')
#   key_holder.photos.attach(io: key_holder_photo_1, filename: 'key-holder_fxltmb.jpg', content_type: 'image/jpg')

modern_globe = Product.create!(name: 'Modern Globe',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 23.50,
  merchant_id: wild_bungalow.id, sub_category_id: home_accessories.id)

  modern_globe_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595554421/Products/Home%20Decor/knrV9NudE1yf85QaSJEsQ8t5_lld7mj.jpg')
  modern_globe.photos.attach(io: modern_globe_photo_1, filename: 'knrV9NudE1yf85QaSJEsQ8t5_lld7mj.jpg', content_type: 'image/jpg')

# mortier = Product.create!(name: 'Mortier',
#   description: 'Elit labore dolore voluptate
#   pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
#   do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
#   dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
#   Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
#   reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 16.50,
#   merchant_id: wild_bungalow.id, sub_category_id: cultery_and_ustensiles.id)

#   mortier_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257791/Heron-Market/Products/homedecor/mortier_l7suqf.jpg')
#   mortier.photos.attach(io: mortier_photo_1, filename: 'mortier_l7suqf.jpg', content_type: 'image/jpg')

oversize_wallart = Product.create!(name: 'Oversized Black and White Art',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 250.90,
  merchant_id: wild_bungalow.id, sub_category_id: wall_decor.id)

  oversize_wallart_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295246/Products/Home%20Decor/8qp6VhNaVNkt9n3hzm6RCEEi_y2nltr.jpg')
  oversize_wallart.photos.attach(io: oversize_wallart_photo_1, filename: '8qp6VhNaVNkt9n3hzm6RCEEi_y2nltr.jpg', content_type: 'image/jpg')

plant = Product.create!(name: 'Green Plant',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 20.90,
  merchant_id: wild_bungalow.id, sub_category_id: home_decor_sales.id)

  plant_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595554409/Products/Home%20Decor/nF3MGLXRqS71CRRMv6rd2guy_wkthtw.jpg')
  plant.photos.attach(io: plant_photo_1, filename: 'nF3MGLXRqS71CRRMv6rd2guy_wkthtw.jpg', content_type: 'image/jpg')

round_cup = Product.create!(name: 'Round Coffee Cup',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 18.90,
  merchant_id: wild_bungalow.id, sub_category_id: glassware_and_mugs.id)

  round_cup_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295243/Products/Home%20Decor/4Ex7azmLFQ93JGi5mS2NtxSz_krbtqp.jpg')
  round_cup.photos.attach(io: round_cup_photo_1, filename: '4Ex7azmLFQ93JGi5mS2NtxSz_krbtqp.jpg', content_type: 'image/jpg')

# serveware_set = Product.create!(name: 'Golden Serveware Set',
#   description: 'Elit labore dolore voluptate
#   pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
#   do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
#   dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
#   Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
#   reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 45.50,
#   merchant_id: wild_bungalow.id, sub_category_id: serveware.id)

#   serveware_set_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257800/Heron-Market/Products/homedecor/serveware-set_vxu90t.jpg')
#   serveware_set.photos.attach(io: serveware_set_photo_1, filename: 'serveware-set_vxu90t.jpg', content_type: 'image/jpg')

sheer_brown_vase = Product.create!(name: 'Sheer Brown Vase',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 60.50,
  merchant_id: wild_bungalow.id, sub_category_id: plants_and_vases.id)

  sheer_brown_vase_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295252/Products/Home%20Decor/F1zq3TdkxnSk8MnmdJv6mNkA_mvhypj.jpg')
  sheer_brown_vase.photos.attach(io: sheer_brown_vase_photo_1, filename: 'F1zq3TdkxnSk8MnmdJv6mNkA_mvhypj.jpg', content_type: 'image/jpg')

towels_bathroom = Product.create!(name: 'Bathroom Towels',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 35.00,
  merchant_id: wild_bungalow.id, sub_category_id: towels.id)

  towels_bathroom_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295244/Products/Home%20Decor/C8LGtvoSoCM8ZmWKFKUSwwgT_gxqo2g.jpg')
  towels_bathroom.photos.attach(io: towels_bathroom_photo_1, filename: 'C8LGtvoSoCM8ZmWKFKUSwwgT_gxqo2g.jpg', content_type: 'image/jpg')

ustensiles_gw = Product.create!(name: 'White Golden Ustensiles',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 18.60,
  merchant_id: wild_bungalow.id, sub_category_id: cultery_and_ustensiles.id)

  ustensiles_gw_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295254/Products/Home%20Decor/enTnjYHZAE3hNiiXPRAtTkqj_f2mriy.jpg')
  ustensiles_gw.photos.attach(io: ustensiles_gw_photo_1, filename: 'enTnjYHZAE3hNiiXPRAtTkqj_f2mriy.jpg', content_type: 'image/jpg')

vine_plant = Product.create!(name: 'Vine Plants',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 26.00,
  merchant_id: wild_bungalow.id, sub_category_id: home_accessories.id)

  vine_plant_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595554455/Products/Home%20Decor/r6abHXHSD53YTJctkCYcLPNZ_d7hd0s.jpg')
  vine_plant.photos.attach(io: vine_plant_photo_1, filename: 'r6abHXHSD53YTJctkCYcLPNZ_d7hd0s.jpg', content_type: 'image/jpg')

wine_glass = Product.create!(name: 'Wine Glass',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 18.95,
  merchant_id: wild_bungalow.id, sub_category_id: glassware_and_mugs.id)

  wine_glass_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595295095/Products/Home%20Decor/57jFAQJ4LBxjDy8fUdNXor82_hzkvn4.jpg')
  wine_glass.photos.attach(io: wine_glass_photo_1, filename: '57jFAQJ4LBxjDy8fUdNXor82_hzkvn4.jpg', content_type: 'image/jpg')

yellow_grey_pillow = Product.create!(name: 'Yellow Grey Pillows',
  description: 'Elit labore dolore voluptate
  pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
  do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
  dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
  Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
  reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 28.90,
  merchant_id: wild_bungalow.id, sub_category_id: throws_and_blankets.id)

  yellow_grey_pillow_photo_1 = URI.open('https://res.cloudinary.com/dx3ppyigo/image/upload/v1595349391/Products/Home%20Decor/JW5NzFohvbbzMj8GWUp3U6g1_fndncy.jpg')
  yellow_grey_pillow.photos.attach(io: yellow_grey_pillow_photo_1, filename: 'JW5NzFohvbbzMj8GWUp3U6g1_fndncy.jpg', content_type: 'image/jpg')

# yellow_pillow = Product.create!(name: 'Decorative Yellow Pillows',
#   description: 'Elit labore dolore voluptate
#   pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
#   do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
#   dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
#   Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
#   reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 28.90,
#   merchant_id: wild_bungalow.id, sub_category_id: throws_and_blankets.id)

#   yellow_pillow_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257802/Heron-Market/Products/homedecor/yellow-pillow_geocxw.jpg')
#   yellow_pillow.photos.attach(io: yellow_pillow_photo_1, filename: 'yellow-pillow_geocxw.jpg', content_type: 'image/jpg')

# blanket = Product.create!(name: 'Fluffy Blanket',
#   description: 'Elit labore dolore voluptate
#   pariatur proident tempor eiusmod aliquip excepteur quis velit. Nostrud aute
#   do occaecat anim nostrud aute labore commodo aute sit. Eu esse reprehenderit
#   dolore proident occaecat nulla. Dolor pariatur aute eu eu excepteur officia
#   Lorem anim magna cupidatat consequat magna eu magna. Occaecat est
#   reprehenderit nisi ex qui Lorem aliqua. Aute enim irure excepteur est.', price: 48.90,
#   merchant_id: wild_bungalow.id, sub_category_id: throws_and_blankets.id)

#   blanket_photo_1 = URI.open('https://res.cloudinary.com/ddmvqmg2x/image/upload/v1588257774/Heron-Market/Products/homedecor/Throws_rxga4w.jpg')
#   blanket.photos.attach(io: blanket_photo_1, filename: 'Throws_rxga4w.jpg', content_type: 'image/jpg')


# Labels
organic = Label.create!(name: "Organic Products", description: 'This brand uses/offers organic fabrics,
  ingredients and/or comply with standards of organic farming.',
  icon: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595872779/labels/Organic_-_Label_uheyze.png')
made_in_canada = Label.create!(name: "Made in Canada", description: 'At least 70 percent of this brand
  merchandise is produced in Canada.',
  icon: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595872779/labels/MadeInCanada-Label_wamcz8.png')
fair_trade = Label.create!(name: "Fair Trade", description: 'This brand helps artisans in developing
  countries achieve good trading and improves social and environmental standards.',
  icon: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595872779/labels/FairTrade-Label_plafqo.png')
cruelty_free = Label.create!(name: "Cruelty Free", description: 'This brand does not manufacture or
  offer products made by methods that involve experimentation on animals.',
  icon: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595872779/labels/CrueltyFree-Label_dvfev1.png')
vegan = Label.create!(name: "Vegan", description: 'This brand does not produce products that
  comes from animals or goods containing animal products.',
  icon: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595872779/labels/Vegan-Label_q2cayj.png')
paraben_free = Label.create!(name: "Paraben Free", description: 'This brand offers and/or produces
  paraben free products',
  icon: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595872779/labels/ParabenFree-Label_dhs65v.png')
green_and_clean = Label.create!(name: "Green and Clean", description: 'This brand offers and/or produces products with
  environmentally friendly ingredients and their procedures are designed to
  preserve human health and environmental quality.',
  icon: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595872779/labels/GreenAndClean-Label_vhxiw7.png')
recycle_material = Label.create!(name: "Recycle Material", description: 'This brand offers and/or manufures
  products made of recycled materials(s)',
  icon: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595872779/labels/RecycleMaterial-Label_qyx4pn.png')
transparent = Label.create!(name: "Transparency", description: 'This brand is transparent about its
  business activities.',
  icon: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595872779/labels/Transparency-Label_fdm8wt.png')
ethical = Label.create!(name: "Ethical", description: 'This brand follows ethical pratices regarding
  their workplace and production activities.',
  icon: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595872779/labels/Ethical-Label_yehd6d.png')
women_founded = Label.create!(name: "Women Founded", description: 'This brands is women founded and/or owned.',
  icon: 'https://res.cloudinary.com/dx3ppyigo/image/upload/v1595872779/labels/WomanFounded-Label_pw0x5u.png')

# Label Products
label = [organic, made_in_canada, fair_trade, cruelty_free, vegan, paraben_free, green_and_clean, recycle_material, transparent, ethical, women_founded]
Product.all.each do |product|
  product.labels = label.sample(3)
  product.save!
end

puts 'completed'
