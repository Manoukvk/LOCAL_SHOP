# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "uri"


Product.destroy_all
Category.destroy_all
Designer.destroy_all


puts 'creating designer'

def attach_photos(product, url_array)
url_array.each do |url|
    filename = File.basename(URI.parse(url).path)
    file = URI.open(url)
    product.photos.attach(io: file, filename: filename)
    product.save!
  end
end


def attach_photo(designer, url)
    filename = File.basename(URI.parse(url).path)
    file = URI.open(url)
    designer.photo.attach(io: file, filename: filename)
    designer.save!
end



designer1 = Designer.create(name: "The Maldonado", description: "This capsule collection was made during the covid isolation. Made of deastock/faulty textiles and some reworked vintage items found in Bogotá - Colombia.")
url = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513042/Designer/ID_1/LOGO-Maldonado_ID_1_meq3p6.gif"
attach_photo(designer1, url)

designer2 = Designer.create(name: "ppprecariedad", description: "3D printed jewellery made of Biodegradable materials, original desings." )
url = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513050/Designer/ID_2/104475415_105743951187743_4050942015209498348_n_ID2_ffikqk.jpg"
attach_photo(designer2, url)

designer3 = Designer.create(name: "A.D. DEERTZ", description: "Deertz menswear designs simple and individual classics that have a timeless and unpretentious feel to them. The products evolve out of the appreciation of the craft of textile making where the industrial as well as artisanal techniques are often combined.")
url = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513046/Designer/ID_3/logo-b_id_3_pajl2g.svg"
attach_photo(designer3, url)

designer4 = Designer.create(name: "HUNDHUND", description: "HUNDHUND is a Berlin creative studio dedicated to crafting clothes with an environmental and social  focus. Conceived by designer Isabel Kücke and her partner Rohan Hoole while living together in India, the label was finally born in 2016 when they moved back to Berlin." )
url = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513051/Designer/ID_4/logo_ID4_fmban0.png"
attach_photo(designer4, url)

designer5 = Designer.create(name: "KIJJJI", description: "Kijjji is the avatar of Bruni, a multidisciplinary visual artist who lives in Buenos Aires. Applying her art to everything, makes garments that decorate with their embroidery and drawings, paints giant canvases, woods he graffiti with hiraganas, sequined embroidery and makes ceramic gardens." )
url = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513054/Designer/ID_5/KIJJJI-LOGOOO-01-scaled-3_ID5_lscy6w.png"
attach_photo(designer5, url)

designer6 = Designer.create(name: "Buki Akomolafe", description: "BUKI AKOMOLAFE is a Berlin based clothing label founded in 2016.German/Nigerian heritage bring a diverse background of tradition, handcraft, design experience, and aesthetic vision. She is specialized in the creation of unique Quilt pieces, that are reversible and limited editions." )
url = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513056/Designer/ID_6/Logo_bukiakomolafe.eps_360x_logo_bsprkb.webp"
attach_photo(designer6, url)

designer7 = Designer.create(name: "Dinosaurio", description: "Two graphic designers got together to do the best of the best products with orginal prints" )
url = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513059/Designer/ID_7/0Yoz1XKr_400x400logo_ID7_dra3sg.jpg"
attach_photo(designer7, url)

designer8 = Designer.create(name: "MelosaMinca", description: "Berlin-based upcycling enthusiast and designer. My interest in ethical fashion started to grow when I was studying Sustainable Development. In 2018 I launched my own online shop where you can find ‘System Recovery'." )
url = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513061/Designer/ID_8/cropped-3logo_ID8_veyuer.jpg"
attach_photo(designer8, url)

designer9 = Designer.create(name: "Bymaqu", description: "Discover here our green fashion made of organic cotton, Lyocell, recycled material, alpaca + sheep wool and vegan rubber shoes. Sustainability means fair wages, social responsibility for all involved & always the most sustainable fabrics." )
url = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513066/Designer/ID_9/Maqu_Logo_ID9_ia4wd0.png"
attach_photo(designer9, url)

puts ' designer creater'

#designerphoto2 = URI.open('http://bukiakomolafe.com/wp-content/uploads/2014/10/buki_akomolafe24182.jpg')
#designer1.photo.attach(io: designerphoto2, filename: 'Buki.jpg', content_type: 'image/jpg')
women_short = Category.create(name: "Short", gender: "Women")
women_dress = Category.create(name: "Dress", gender: "Women")
women_tshirt = Category.create(name: "T-shirt", gender: "Women")
women_pants = Category.create(name: "Pants", gender: "Women")
women_shirt = Category.create(name: "Shirt", gender: "Women")
women_jacket = Category.create(name: "Jacket", gender: "Women")
women_skirt = Category.create(name: "Skirt", gender: "Women")
unisex_earings = Category.create(name: "Earings", gender: "Unisex")
unisex_necklace = Category.create(name: "Necklace", gender: "Unisex")
man_short = Category.create(name: "Short", gender: "Men")
man_shirt = Category.create(name: "Shirt", gender: "Men")
man_pants = Category.create(name: "Pants", gender: "Men")
man_jacket = Category.create(name: "Jacket", gender: "Men")
man_tshirt = Category.create(name: "T-shirt", gender: "Men")
man_coat = Category.create(name: "Coat", gender: "Men")
man_blazer = Category.create(name: "Blazer", gender: "Men")

puts ' category creater'

product1 = Product.create(name: "Trb Short", description: "Dead stock grey hand printed in black tribals Short", price: "35", color: "Grey", size:"S/M/L", designer: designer1, category: women_short)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513045/Designer/ID_1/Product/ID_1/Short_Trbweb2_ID1_ozk1sg.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513045/Designer/ID_1/Product/ID_1/Short_Trbweb1_ID1_oid1tm.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513044/Designer/ID_1/Product/ID_1/Short_Trb_back_ID1_ldecff.jpg"
url4 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513044/Designer/ID_1/Product/ID_1/Short_Trb_front_ID1_grdeqa.jpg"
url_array = [url1, url2, url3, url4]
attach_photos(product1, url_array)

product2 = Product.create(name: "Tie Dyed Pants", description: "Dead stock cotton jersey black hand dyed with elastic waist.", price: "45", color: "Black", size: "One size", designer: designer1, category: women_pants)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513047/Designer/ID_1/Product/ID_2/Pants_TD_robi_ID2_hkqh51.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513046/Designer/ID_1/Product/ID_2/Pants_TD_robi1_ID2_uleyz2.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513046/Designer/ID_1/Product/ID_2/Pants_TD_Front_ID2_yxxj9t.jpg"
url4 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513045/Designer/ID_1/Product/ID_2/Pants_TD_Back_ID2_u52hgn.jpg"
url_array = [url1, url2, url3, url4]
attach_photos(product2, url_array)

product3 = Product.create(name: "Top Thorns Beige", description: "Dead stock printed mesh top.", price: "25", color: "Yellow", size: "S/M", designer: designer1, category: women_tshirt)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513047/Designer/ID_1/Product/ID_3/Top_Thorns_beige_front_ID3_qb3zav.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513047/Designer/ID_1/Product/ID_3/Top_thorn_beige_back_ID3_kudbyp.jpg"
url_array = [url1, url2]
attach_photos(product3, url_array)

product4 = Product.create(name: "Dress Antila", description: "See-through dress made of Organza curtains. Perfect with a shirt, blouse or jumpsuit underneath. Dead-stock made piece.", price: "70", color: "Orange", size: "One size", designer: designer1, category: women_dress)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513048/Designer/ID_1/Product/ID_4/5_Dress_000214_final_ID4_f8d9wa.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513048/Designer/ID_1/Product/ID_4/5_Dress_000178_final_ID4_c20eky.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513047/Designer/ID_1/Product/ID_4/5_Dress_000159_final_ID4_t4iw1e.jpg"
url_array = [url1, url2, url3]
attach_photos(product4, url_array)

product5 = Product.create(name: "Top Crux", description: "Stand-up collar top made of jersey, with dragon tribals handmade printed. ", price: "35", color: "Purple", size: "S", designer: designer1, category: women_tshirt)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513049/Designer/ID_1/Product/ID_5/9_Tee_001143_final_ID5_s4lga2.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513049/Designer/ID_1/Product/ID_5/3_Tee_crux_purple1_ID5_i91niq.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513049/Designer/ID_1/Product/ID_5/9_Tee_001115_final_ID5_a7xbdn.jpg"
url_array = [url1, url2, url3]
attach_photos(product5, url_array)

product6 = Product.create(name: "MARIPOSA", description: "Mariposa necklace from the Fantasy Collection, made of biodegradable Material, 4 cm.", price: "25", color: "White", size: "One size", designer: designer2, category: unisex_necklace)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513043/Designer/ID_2/Products/ID_6/il_fullxfull.2484062768_a4dc_ID6_kzzsfx.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513043/Designer/ID_2/Products/ID_6/il_fullxfull.2531733737_ag5s_ID6_ovfzms.jpg"
url_array = [url1, url2]
attach_photos(product6, url_array)

product7 = Product.create(name: "DRAGON", description: "DRAGON earrings from the Fantasy Collection, 10 cm.", price: "36", color: "Green", size: "One size", designer: designer2, category: unisex_necklace)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513043/Designer/ID_2/Products/ID_7/il_fullxfull.2531729487_8sxq_ID7_olfgpg.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513043/Designer/ID_2/Products/ID_7/il_fullxfull.2531031059_r140_ID7_gprcor.jpg"
url_array = [url1, url2]
attach_photos(product7, url_array)

product8 = Product.create(name: "Stinger", description: "Cute Stinger earrings Fantasy Collection, 4,5 cm.", price: "35", color: "White", size: "One size", designer: designer2, category: unisex_earings)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513045/Designer/ID_2/Products/ID_8/il_fullxfull.2531023765_a7r4_ID8_qy5zzo.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513045/Designer/ID_2/Products/ID_8/il_fullxfull.2483350332_g5nd_ID8_ko92df.jpg"
url_array = [url1, url2]
attach_photos(product8, url_array)

product9 = Product.create(name: "Chain", description: "Chain Collection Choker", price: "50", color: "Yellow", size: "One size", designer: designer2, category: unisex_necklace)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513046/Designer/ID_2/Products/ID_9/il_fullxfull.1942188382_le8f_ID9_dahxxu.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513046/Designer/ID_2/Products/ID_9/il_fullxfull.2123505302_t4eg_ID9_pnvmld.jpg"
url_array = [url1, url2]
attach_photos(product9, url_array)

product10 = Product.create(name: "Corazón", description: "CORAZÓN Choker Fantasy Collection Choker", price: "30", color: "Pink", size: "One size", designer: designer2, category: unisex_necklace )
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513042/Designer/ID_2/Products/ID_10/il_fullxfull.2531718467_fpos_ID10_yub0i2.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513042/Designer/ID_2/Products/ID_10/il_fullxfull.2531718439_d4r9_ID10_mbjdgh.jpg"
url_array = [url1, url2]
attach_photos(product10, url_array)

product11 = Product.create(name: "Assam Jacket Yellow", description: "Canvas  structure with a smooth surface.", price: "110", color: "Yellow", size: "S/M/L", designer: designer3, category: man_jacket)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513047/Designer/ID_3/Products/ID_11/J40-8-Assam-yellow-canvas-yellow_1000x_ID11_nwagca.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513047/Designer/ID_3/Products/ID_11/IMG_3359-cropped_1000x_ID11_rwgfqq.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513047/Designer/ID_3/Products/ID_11/J40-8-Assam-yellow-canvas-yellow-front-detail-2_1000x_ID11_uaamuk.jpg"
url_array = [url1, url2, url3]
attach_photos(product11, url_array)

product12 = Product.create(name: "Wakame Shirt Lemon On Ice", description: "Short sleeve shirt with spread collar.", price: "70", color: "Blue", size: "S/M/L", designer: designer3, category: man_shirt)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513048/Designer/ID_3/Products/ID_12/wakame-shirt-lemon-addeertz_1000x_ID12_mpve03.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513048/Designer/ID_3/Products/ID_12/wakame-shirt-lemon-addeertz_2_1000x_ID12_jqkirf.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513048/Designer/ID_3/Products/ID_12/wakame-shirt-addeertz-lemon_1000x_ID12_qupqou.jpg"
url_array = [url1, url2, url3]
attach_photos(product12, url_array)

product13 = Product.create(name: "Khaya Jacket Orange/Olive", description: "Reversible Jacket.", price: "150", color: "Green", size: "S/M/L", designer: designer3, category: man_jacket )
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513049/Designer/ID_3/Products/ID_13/J33-1-khaya-jacket-orange-3_1000x_ID13_bfkf7y.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513049/Designer/ID_3/Products/ID_13/J33-1-khaya-jacket-flat-olive_1000x_ID13_mrkdx1.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513048/Designer/ID_3/Products/ID_13/J33-1-khaya-jacket-flat-olive-3_1000x_ID13_wcittx.jpg"
url_array = [url1, url2, url3]
attach_photos(product13, url_array)


product14 = Product.create(name: "Wakame Shirt Birds", description: "Short sleeve shirt with spread collar.", price: "85", color: "Purple ", size: "S/M/L", designer: designer3, category: man_shirt)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513050/Designer/ID_3/Products/ID_14/wakame-birds-2019_04_30_0658_1000x_ID14_aiyun8.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513050/Designer/ID_3/Products/ID_14/wakame-birds-2-2019_04_30_0658_1000x_ID14_woeqzp.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513050/Designer/ID_3/Products/ID_14/S30-3-Wakame-Shirt-birds-1_1000x_ID14_dmjuin.jpg"
url_array = [url1, url2, url3]
attach_photos(product14, url_array)

product15 = Product.create(name: "Yucca Shirt White Brown Green", description: "Shirt with band collar.", price: "85", color: "Brown", size: "S/M/L", designer: designer3, category: man_shirt)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513051/Designer/ID_3/Products/ID_15/S22-69-Yucca-flat_1000x_ID15_k8yztr.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513051/Designer/ID_3/Products/ID_15/S22-69-Yucca-detail_1000x_ID15_ya5acp.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513050/Designer/ID_3/Products/ID_15/S22-69-Yucca-detail-4_1000x_ID15_vptjom.jpg"
url_array = [url1, url2, url3]
attach_photos(product15, url_array)

product16 = Product.create(name: "FANA DRESS Sheer Tan Linen", description: "The Fana dress has a 3/4 length and a scoop neck. It is crafted from sheer tan linen and has side slits. ", price: "99", color: "Bege", size: "XS/S", designer: designer4, category: women_dress)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513051/Designer/ID_4/Products/ID_16/ID_16_wahhmd.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513051/Designer/ID_4/Products/ID_16/DSC00531_2048x2048_ID16_kypzsp.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513051/Designer/ID_4/Products/ID_16/DSC00513_2048x2048_ID16_nsitep.jpg"
url_array = [url1, url2, url3]
attach_photos(product16, url_array)

product17 = Product.create(name: "MARJON BLOUSE Sheer Spearmint Silk", description: "Crafted from a beautiful transparent spearmint coloured silk, this extra-long blouse has four oversized envelope pockets which cover the chest, a topstitched belt and is cuffless.", price: "110", color: "Blue", size: "XS/S/M", designer: designer4, category: women_shirt)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513052/Designer/ID_4/Products/ID_17/Rachel-Israela-collectiveinterest-2020-HUNDHUNDSession43114_2048x2048_ID17_uatjgv.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513052/Designer/ID_4/Products/ID_17/Rachel-Israela-collectiveinterest-2020-HUNDHUNDSession43113_2048x2048_ID17_gdazt6.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513052/Designer/ID_4/Products/ID_17/Rachel-Israela-collectiveinterest-2020-HUNDHUNDSession43110_2048x2048_ID17_ytxi2j.jpg"
url_array = [url1, url2, url3]
attach_photos(product17, url_array)

product18 = Product.create(name: "ATLAS DRESS Neon Green Linen", description: "One of our standout summer dresses. Crafted from a neon green linen, the open back Atlas Dress is front buttoned with two slits for your legs. Strapped on the back, we're imaging this dress might be your perfect friend for the many outside get-togethers this summer.", price: "110", color: "Green", size: "M", designer: designer4, category: women_dress)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513053/Designer/ID_4/Products/ID_18/HUNDHUND_SESSION_33243_rachelisraelaphotography_2048x2048_ID18_g4kehr.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513052/Designer/ID_4/Products/ID_18/HUNDHUND_SESSION_33227_rachelisraelaphotography_2048x2048_ID18_hhuqod.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513052/Designer/ID_4/Products/ID_18/HUNDHUND_SESSION_33230_rachelisraelaphotography_2048x2048_18_udyfjm.jpg"
url_array = [url1, url2, url3]
attach_photos(product18, url_array)

product19 = Product.create(name: "GESA PANTS Summer Wool Check", description: "Our cropped Gesa Pants are made with a wide leg, front pleat, and 3/4 legs. This version is crafted from durable light-weight summer wool.", price: "100", color: "Brown", size: "40", designer: designer4, category: women_pants)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513053/Designer/ID_4/Products/ID_19/HUNDHUND_SESSION_3355_rachelisraelaphotography_2048x2048_ID19_hdbez8.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513053/Designer/ID_4/Products/ID_19/HUNDHUND_SESSION_3354_rachelisraelaphotography_2048x2048_ID19_ndekga.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513053/Designer/ID_4/Products/ID_19/HUNDHUND_SESSION_3363_rachelisraelaphotography_2048x2048_ID19_ahbur0.jpg"
url_array = [url1, url2, url3]
attach_photos(product19, url_array)

product20 = Product.create(name: "SONDE TOP Striped Linen", description: "Our sleeveless Sonde Top has a soft fall, pearl button-up front, and blouse collar with double segmented back detail which can be worn open or closed with hidden buttons depending on how much wind you desire. This version is made from unique natural striped linen.", price: "79", color: "White", size: "M/L", designer: designer4, category: women_shirt)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513054/Designer/ID_4/Products/ID_20/Rachel-Israela-collectiveinterest-2020-HUNDHUNDSession43213_2048x2048_ID20_cyq0hr.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513054/Designer/ID_4/Products/ID_20/Rachel-Israela-collectiveinterest-2020-HUNDHUNDSession43208_2048x2048_ID20_vijayk.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513053/Designer/ID_4/Products/ID_20/Rachel-Israela-collectiveinterest-2020-HUNDHUNDSession43192_2048x2048_ID20_lsm28g.jpg"
url_array = [url1, url2, url3]
attach_photos(product20, url_array)

product21 = Product.create(name: "Biker Suzuka", description: "Bike short patterned prints with handmade drawings.", price: "25", color: "Black", size: "S/M/L", designer: designer5, category: women_short )
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513054/Designer/ID_5/Products/ID_21/Kijjji8765-768x960_ID21_knc9wz.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513054/Designer/ID_5/Products/ID_21/Kijjji8764-768x960_ID21_utmbe5.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513054/Designer/ID_5/Products/ID_21/Kijjji8759-768x960_ID21_aetome.jpg"
url_array = [url1, url2, url3]
attach_photos(product21, url_array)

product22 = Product.create(name: "T-shir Fijjji", description: "Patterned prints handmade by the designer.", price: "50", color: "Black", size: "S/M/L", designer: designer5, category: women_tshirt)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513055/Designer/ID_5/Products/ID_22/Kijjji8899-768x960_ID22_tpidue.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513055/Designer/ID_5/Products/ID_22/Kijjji8788-768x960_ID22_ddou7l.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513055/Designer/ID_5/Products/ID_22/Kijjji8776-scaled_ID22_vtcenx.jpg"
url_array = [url1, url2, url3]
attach_photos(product22, url_array)

product23 = Product.create(name: "Jacket yuuki reversable", description: "Reverible Jacket.", price: "150", color: "Yellow", size: "S/M/L", designer: designer5, category: women_jacket)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513055/Designer/ID_5/Products/ID_23/DSC2737-768x960_ID23_cf9ufc.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513055/Designer/ID_5/Products/ID_23/83C0885C-3752-4467-BF34-4142C095F804-scaled_ID23_k7hhqk.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513055/Designer/ID_5/Products/ID_23/36719314-29B0-4250-B85A-31FD5E85F351-768x1152_ID23_l6joxx.jpg"
url_array = [url1, url2, url3]
attach_photos(product23, url_array)

product24 = Product.create(name: "Pants Hanami", description: "Handmade embroidered trousers.", price: "180", color: "Black", size: "S/M/L", designer: designer5, category: women_pants)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513056/Designer/ID_5/Products/ID_24/DSC_0332-768x1152_ID24_antimm.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513056/Designer/ID_5/Products/ID_24/DSC_0319-768x1152_ID24_kxuxbp.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513056/Designer/ID_5/Products/ID_24/0010_028-1_ID24_rkm675.jpg"
url_array = [url1, url2, url3]
attach_photos(product24, url_array)

product25 = Product.create(name: "QUILT BOMBER JACKET - reversible", description: "Hand-quilted Bomber jacket, reversible with pockets on one side and press studs. This garment is made to order.", price: "350", color: "Blue", size: "S/M", designer: designer6, category: women_jacket)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513057/Designer/ID_6/Products/ID_25/Buki_Akomolafe_Bomberkjacke_540x_ID25_yibznq.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513056/Designer/ID_6/Products/ID_25/461402-46487a6e8a544a86ba6defd765d4585c_540x_ID25_r7aoai.png"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513056/Designer/ID_6/Products/ID_25/461402-4b1fc44944314d93999a0102364cb4df_540x_ID25_epm9qz.jpg"
url_array = [url1, url2, url3]
attach_photos(product25, url_array)

product26 = Product.create(name: "QUILT JUMPER - reversible", description: "Handquilted Jumper, reversible and variable with press studs on the left sleeve.", price: "200", color: "Yellow", size: "S/M/L", designer: designer6, category: women_jacket)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513057/Designer/ID_6/Products/ID_26/461402-aff8fb5fa2d8400aa90644dc479b909e_540x_ID26_iy6upn.png"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513057/Designer/ID_6/Products/ID_26/461402-3b91cb0756544aa7ab4a0e4e28272e92_540x_ID26_pipor9.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513057/Designer/ID_6/Products/ID_26/461402-25ac13e5855c4a82bb6a7ed8e897dcda_540x_ID26_rsba8u.jpg"
url_array = [url1, url2, url3]
attach_photos(product26, url_array)

product27 = Product.create(name: "SHIRT 02 with Quilt Collar", description: "White Shirt with banded Quilt Collar, button-down front and two different pockets.", price: "120", color: "White", size: "S/M/L", designer: designer6, category: women_shirt)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513058/Designer/ID_6/Products/ID_27/BA_SHirt02_540x_ID27_aoagdb.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513058/Designer/ID_6/Products/ID_27/461402-3019e821317e48b5ade47d1ac08f11d3_540x_ID27_qnh6cy.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513058/Designer/ID_6/Products/ID_27/461402-1c2b739860c54a80b0db49544b67d136_540x_ID27_ffza6a.png"
url_array = [url1, url2, url3]
attach_photos(product27, url_array)

product28 = Product.create(name: "BUKI AKOMOLAFE x LIVING BLUE_ KHADI PANTS", description: "Pants with pockets and elastic waistband 100% organic cotton.", price: "170", color: "Blue", size: "S/M/L", designer: designer6, category: women_pants)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513058/Designer/ID_6/Products/ID_28/BUKI_STYLE_18.2_540x_ID28_ejctqk.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513058/Designer/ID_6/Products/ID_28/BukiAkomolafe_2019_WEB046_540x_ID28_j5ubqn.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513058/Designer/ID_6/Products/ID_28/BukiAkomolafe_2019_WEB041_540x_ID28_ktjl6m.jpg"
url_array = [url1, url2, url3]
attach_photos(product28, url_array)

product29 = Product.create(name: "Shirt Ground Control", description: "Shirt unisex printed.", price: "50", color: "White", size: "S/M/L", designer: designer7, category: man_tshirt)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513059/Designer/ID_7/ID_29/43da2166-87fa-4fb7-a5b1-73808ded979c_nube-91062df6120c8e5f6d15900163479287-640-0_ID29_ku3qh0.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513059/Designer/ID_7/ID_29/40ef9c61-b3b7-4659-ab0d-2d87f6a8a7f6_nube-4f2640989a697985b815900163425777-640-0_ID29_y5vxyf.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513059/Designer/ID_7/ID_29/2e070c0c-a6d4-4976-a941-252c51ab7584_nube-a57bf4b0f6c2de8dfd15900163365569-640_ID29_d7jlq2.jpg"
url_array = [url1, url2, url3]
attach_photos(product29, url_array)

product30 = Product.create(name: "Coat Misfit", description: "Coat unisex printed.", price: "60", color: "Black", size: "S/M/L", designer: designer7, category: man_coat)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513060/Designer/ID_7/ID_30/b1520ec1-4fd6-4398-88e6-49f4151386a5_nube-5f11b2d754204ffcea15893174702548-640-0_ID30_tdibpu.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513060/Designer/ID_7/ID_30/645036bc-8d6e-40a7-8316-118b36903621_nube-5d4636fe50b8e602d115893174647390-640-0_ID30_ioionm.jpg"
url_array = [url1, url2]
attach_photos(product30, url_array)

product31 = Product.create(name: "Blazer Smoke", description: "Blazer Smoke unisex.", price: "70", color: "White", size: "S/M/L", designer: designer7, category: man_blazer)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513061/Designer/ID_7/ID_31/d1ff00a5-77c6-4737-9e64-26f23bbb5607_nube-a7df2004355b57545f15900167379066-640-0_ID31_djd9bh.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513060/Designer/ID_7/ID_31/578c3e34-df99-4e78-89a9-1feb118a734d_nube-a52626b566e6e7f61215900167260892-640-0_ID31_ukl5pc.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513060/Designer/ID_7/ID_31/21bc092e-838f-49f2-b873-a9c60fbdb3f4_nube-66a22eef92f81efd0b15900167318738-640-0_ID31_ned4pi.jpg"
url_array = [url1, url2, url3]
attach_photos(product31, url_array)

product32 = Product.create(name: "Sparkle Butt Pants", description: "Reworked trousers, Stretch.", price: "69", color: "Brown", size: "One size", designer: designer8, category: women_pants)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513061/Designer/ID_8/ID_32/DSF4840_ID32_io0sxq.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513061/Designer/ID_8/ID_32/DSF4847_ID32_jikfvj.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513061/Designer/ID_8/ID_32/DSF4827_ID32_w2s4a7.jpg"
url_array = [url1, url2, url3]
attach_photos(product32, url_array)

product33 = Product.create(name: "Levitation Skirt", description: "Upcycled suit scraps; Adjustable belt/waist, buckle closure; Wrap skirt, velcro closure-", price: "39", color: "black", size: "One size", designer: designer8, category: women_skirt)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513062/Designer/ID_8/ID_33/DSF5135_ID33_tiqpyg.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513062/Designer/ID_8/ID_33/DSF5117_ID33_nyucjk.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513062/Designer/ID_8/ID_33/DSF5118_ID33_ut338j.jpg"
url_array = [url1, url2, url3]
attach_photos(product33, url_array)

product34 = Product.create(name: "Corset Blouse", description: "Reworked blouse, Zipper closure.", price: "139", color: "Blue", size: "One size", designer: designer8, category: women_shirt)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513063/Designer/ID_8/ID_34/DSF4042_ID34_ideuug.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513062/Designer/ID_8/ID_34/corset-blouse-product_ID34_nh5xk3.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513062/Designer/ID_8/ID_34/DSF4040_ID34_emb1nf.jpg"
url_array = [url1, url2, url3]
attach_photos(product34, url_array)

product35 = Product.create(name: "Pick-Pocket Pants", description: "Upcycled with all the pockets we took off when reworking shirts, Reclaimed.", price: "109", color: "Blue", size: "One size", designer: designer8, category: women_pants)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513063/Designer/ID_8/ID_35/DSF0056_ID35_zhzpds.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513063/Designer/ID_8/ID_35/DSF0054_ID35_lxhdbm.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513063/Designer/ID_8/ID_35/DSF0049_ID35_jbp5ya.jpg"
url_array = [url1, url2, url3]
attach_photos(product35, url_array)

product36 = Product.create(name: "Cut Out Jacket", description: "Reworked suit jacket; Three buckle closure; Adjustable cotton side straps.", price: "89", color: "White", size: "One size", designer: designer8, category: women_jacket)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513064/Designer/ID_8/ID_36/DSF4725_ID36_dyrbah.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513063/Designer/ID_8/ID_36/DSF4712_ID36_sy9ejd.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513063/Designer/ID_8/ID_36/DSF4713_ID36_zimpzf.jpg"
url_array = [url1, url2, url3]
attach_photos(product36, url_array)

product37 = Product.create(name: "Phi Dress", description: "We introduce you our lovely oversize turtle neck dress.", price: "120", color: "Black", size: "S/M/L", designer: designer9, category: women_dress)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513064/Designer/ID_9/ID_37/Phi_dress_ID37_jfow47.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513064/Designer/ID_9/ID_37/Phi_black_dress_ID37_p0uneq.jpg"
url_array = [url1, url2]
attach_photos(product37, url_array)

product38 = Product.create(name: "Ida Skirt", description: "This A Line Skirt with asymmetrical length has a zipper on the back and hidden pockets on the seam side.", price: " 49", color: "blue", size: "S/M/L", designer: designer9, category: women_skirt)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513064/Designer/ID_9/ID_38/rock_ida_2_ID38_dq4byk.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513064/Designer/ID_9/ID_38/Ida_skirt__ID38_rl2zbb.jpg"
url_array = [url1, url2]
attach_photos(product38, url_array)

product39 = Product.create(name: "Knight Dress", description: "We introduce you our basic Knight long Dress.", price: "120", color: "Black", size: "S/M/L", designer: designer9, category: women_dress)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513065/Designer/ID_9/ID_39/Knight_dress_ID39_nkq21v.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513065/Designer/ID_9/ID_39/Knight_dress_back_ID39_r7wk5l.jpg"
url_array = [url1, url2]
attach_photos(product39, url_array)

product40 = Product.create(name: "Cadaqués Dress", description: "We introduce you our basic Cadaqués Dress", price: "120", color: "Blue", size: "S/M/L", designer: designer9, category: women_dress)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513066/Designer/ID_9/ID_40/Cadaques_dress__ID40_cjwnhs.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513065/Designer/ID_9/ID_40/Cadaques_dress_front_ID40_mmcooy.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513065/Designer/ID_9/ID_40/Cadaques_dress_1_ID40_vsahav.jpg"
url_array = [url1, url2, url3]
attach_photos(product40, url_array)

product41 = Product.create(name: "Emmi Pants Denim", description: "Denim trousers with creases.", price: "100", color: "Black", size: "S/M/L", designer: designer9, category: women_pants)
url1 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513066/Designer/ID_9/ID_41/look_jeans_ID41_grzyw0.jpg"
url2 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513066/Designer/ID_9/ID_41/Emmi_pants_ID41_oznlvg.jpg"
url3 = "https://res.cloudinary.com/dujumejgm/image/upload/v1598513066/Designer/ID_9/ID_41/emmi_pants_back_ID41_ezomb6.jpg"
url_array = [url1, url2, url3]
attach_photos(product41, url_array)

puts "designer created"

