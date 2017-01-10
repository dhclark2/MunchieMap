

# PANERA BREAD
panera_bread = Store.create(name: "Panera Bread", address: "1908 4th St N, St. Petersburg, FL 33704",
                            phone: "(727) 895-5441", website: "panerabread.com", hours: "6AM - 9PM",
                            price: 2, cuisine: "Bakery", menu: "app/assets/images")

picture = Picture.create!(store: panera_bread,
                          image: File.open(Rails.root.join("db/seeds/panera/panera_1.jpg")))
picture = Picture.create!(store: panera_bread,
                          image: File.open(Rails.root.join("db/seeds/panera/panera_2.jpeg")))
picture = Picture.create!(store: panera_bread,
                          image: File.open(Rails.root.join("db/seeds/panera/panera_3.jpeg")))
picture = Picture.create!(store: panera_bread,
                          image: File.open(Rails.root.join("db/seeds/panera/panera_4.jpg")))



# MOON UNDER WATER
moon_under_water = Store.create(name: "Moon Under Water", address: "332 Beach Dr NE, St. Petersburg, FL 33701",
                                phone: "(727) 896-6160", website: "themoonunderwater.com", hours: "11AM - 10PM",
                                price: 3, cuisine: "British", menu: "app/assets/images")

picture = Picture.create!(store: moon_under_water,
                          image: File.open(Rails.root.join("db/seeds/moon_under_water/moon_1.jpg")))
picture = Picture.create!(store: moon_under_water,
                          image: File.open(Rails.root.join("db/seeds/moon_under_water/moon_2.jpeg")))
picture = Picture.create!(store: moon_under_water,
                          image: File.open(Rails.root.join("db/seeds/moon_under_water/moon_3.jpeg")))
picture = Picture.create!(store: moon_under_water,
                          image: File.open(Rails.root.join("db/seeds/moon_under_water/moon_4.jpeg")))



# CASSIS
cassis = Store.create(name: "Cassis American Brasserie", address: "170 Beach Dr NE, St. Petersburg, FL 33701",
                      phone: "(727) 827-2927", website: "cassisab.com", hours: "8AM - 10PM",
                      price: 4, cuisine: "American Fusion", menu: "app/assets/images")

picture = Picture.create!(store: cassis,
                          image: File.open(Rails.root.join("db/seeds/cassis/cassis_1.jpg")))
picture = Picture.create!(store: cassis,
                          image: File.open(Rails.root.join("db/seeds/cassis/cassis_2.jpeg")))
picture = Picture.create!(store: cassis,
                          image: File.open(Rails.root.join("db/seeds/cassis/cassis_3.jpeg")))
picture = Picture.create!(store: cassis,
                          image: File.open(Rails.root.join("db/seeds/cassis/cassis_4.jpeg")))
