# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Seller.destroy_all
Listing.destroy_all


user1 = User.create(username: "bmcalkins", name: "Bradley")

seller1 = Seller.create(name: "Eric", location: "Berkeley, California")
seller2 = Seller.create(name: "John", location: "Burlington, Vermont")
seller3 = Seller.create(name: "Caetano", location: "Bend, Oregon")
seller4 = Seller.create(name: "Ananda", location: "Pheonix, Arizona")

Listing.create(product_type: "fruit", product_name: "passion fruit", img_url: "https://www.news-medical.net/image.axd?picture=2018%2f3%2fshutterstock_323011952.jpg&ts=20180307121147&ri=673", quantity: 2.25, price: 3.29, user_id: user1.id, seller: seller1)
Listing.create(product_type: "vegetable", product_name: "lacinato kale", img_url: "https://cdn11.bigcommerce.com/s-q83qdckkjh/images/stencil/1000x1000/products/425/4385/Lacinato-KaleBC__93750.1601428155.jpg?c=2", quantity: 3.25, price: 1.49, user_id: user1.id, seller: seller2)
Listing.create(product_type: "fruit", product_name: "mango", img_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.thespruceeats.com%2Fseafood-mango-stir-fry-recipe-3217600&psig=AOvVaw2vwkw-dExPYzAY3_MysXsT&ust=1605113857040000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIjyjqG5-OwCFQAAAAAdAAAAABAD", quantity: 6.25, price: 4.26, user_id: user1.id, seller: seller1)
Listing.create(product_type: "vegetable", product_name: "cucumber", img_url: "https://parkseed.com/images/xxl/52536-pk-p1.jpg?v=101222588323-1", quantity: 6.25, price: 1.29, user_id: user1.id, seller: seller1)
Listing.create(product_type: "fruit", product_name: "apple", img_url: "https://images2.minutemediacdn.com/image/upload/c_fill,g_auto,h_1248,w_2220/v1555925874/shape/mentalfloss/640title_0.jpg?itok=YdUZkRX3", quantity: 2.25, price: 1.79, user_id: user1.id, seller: seller3)
Listing.create(product_type: "vegetable", product_name: "brussel sprouts", img_url: "https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco/k%2Farchive%2F54d978231d0ceb5b6e95ca218bb6254a7d14c00f", quantity: 5.25, price: 1.83, user_id: user1.id, seller: seller2)
Listing.create(product_type: "fruit", product_name: "lemon", img_url: "https://cdn.britannica.com/84/188484-050-F27B0049/lemons-tree.jpg", quantity: 7.25, price: 4.34, user_id: user1.id, seller: seller4)
Listing.create(product_type: "fruit", product_name: "pomegranite", img_url: "https://www.myjewishlearning.com/wp-content/uploads/2016/09/pomegranate.jpg", quantity: 6.61, price: 8.47, user_id: user1.id, seller: seller4)
Listing.create(product_type: "vegetable", product_name: "cilantro", img_url: "https://img.huffingtonpost.com/asset/5936af1219000047003e4b5a.jpeg?ops=scalefit_720_noupscale", quantity: 2.25, price: 4.69, user_id: user1.id, seller: seller1)