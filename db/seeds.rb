require('pry')
require_relative('../models/dealers.rb')
require_relative('../models/cars.rb')
require_relative('../models/offers.rb')
require_relative('../models/general.rb')

General.delete_all("offers")
General.delete_all("cars")
General.delete_all("dealers")

dealer1 = Dealer.new({
  'name' => "Decent Cars",
  'address' => 'Kirkcaldy, KY2 '
  }) 
dealer2 = Dealer.new({
  'name' => "Cars Everywhere",
  'address' => 'Glenrothes, KY1'
  }) 
dealer3 = Dealer.new({
  'name' => "Quick Cars",
  'address' => 'Crail, KY10'
  })

dealer1.save 
dealer2.save 
dealer3.save

car1 = Car.new({
  'make' => "Ford",
  'model' => "Capri",
  'img' => 'Ford_capri.jpg',
  'category' => "Vintage",
  'price' => 45,
  'available' => true,
  'dealer_id' => dealer1.id
 })

car2 = Car.new({
  'make' => "Ford",
  'model' => "Mondea",
  'img' => 'ford_mondeo.jpg',
  'category' => "Saloon",
  'price' => 25,
  'available' => true,
  'dealer_id' => dealer1.id
 })

car3 = Car.new({
  'make' => "Mazda",
  'model' => "RX7",
  'img' => 'Mazda_RX7.jpg',  
  'category' => "Sport",
  'price' => 45,
  'available' => true,
  'dealer_id' => dealer1.id
 })

car4 = Car.new({
  'make' => "Mazda",
  'model' => "RX8",
  'img' => 'Mazda_RX8.jpg',
  'category' => "Sport",
  'price' => 30,
  'available' => true,
  'dealer_id' => dealer2.id
 })

car5 = Car.new({
  'make' => "Subaru",
  'model' => "XV",
  'img' => 'Subaru_XV.jpg',
  'category' => "SUV",
  'price' => 45,
  'available' => true,
  'dealer_id' => dealer2.id
 })

car6 = Car.new({
  'make' => "BMW",
  'model' => "M3",
  'img' => 'BMW_M3.jpg',
  'category' => "Sport",
  'price' => 70,
  'available' => true,
  'dealer_id' => dealer2.id
 })
car7 = Car.new({
  'make' => "MERCEDES-BENZ",
  'model' => "E Class",
  'img' => 'MERCEDES_BENZ_Eclass.jpeg',
  'category' => "Saloon",
  'price' => 60,
  'available' => true,
  'dealer_id' => dealer3.id
 })

car8 = Car.new({
  'make' => "Volkswagen",
  'model' => "Scirocco",
  'img' => 'VWS.jpg',
  'category' => "Sport",
  'price' => 42,
  'available' => true,
  'dealer_id' => dealer3.id
 })

car1.save
car2.save
car3.save
car4.save
car5.save
car6.save
car7.save
car8.save 

offer1 = Offer.new({
  'name' => "#{car1.make}" + " #{car1.model} £10 off day",
  'value' => 10,
  'day' => "Sunday",
  'car_id' => car1.id,
  'dealers_id' => car1.dealer_id 
  })

offer2 = Offer.new({
  'name' => "#{car3.make}" + " #{car3.model}  £10 off",
  'value' => 10,
  'day' => "Monday",
  'car_id' => car3.id,
  'dealers_id' => car3.dealer_id
  })

offer3 = Offer.new({
  'name' => "#{car5.make}" + " #{car5.model}  Sale massive £££ off",
  'value' => 10,
  'day' => "Tuesday",
  'car_id' => car5.id,
  'dealers_id' => car5.dealer_id
  })

offer4 = Offer.new({
  'name' => "#{car8.make}" + " #{car8.model}  Sale massive £££ off",
  'value' => 24,
  'day' => "Wednesday",
  'car_id' => car8.id,
  'dealers_id' => car3.dealer_id
  })

offer1.save
offer2.save 
offer3.save 
offer4.save
