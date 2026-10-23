class AddProducts < ActiveRecord::Migration[8.1]
  def change
    Product.create :title => 'Hawaiian', 
      :description => 'This is Hawaiian pizza',
      :price => 350,
      :size => 30,
      :is_spicy  => false,
      :is_veg => false,
      :is_best_offer => false,
      :path_to_image => '/images/hawaiian.jpeg'
    
    Product.create :title => 'Pepperoni', 
      :description => 'This is Pepperoni pizza',
      :price => 370,
      :size => 30,
      :is_spicy  => true,
      :is_veg => false,
      :is_best_offer => false,
      :path_to_image => '/images/pepperoni.png'

    Product.create :title => 'Veg', 
      :description => 'Amaizing Veg pizza',
      :price => 330,
      :size => 30,
      :is_spicy  => false,
      :is_veg => true,
      :is_best_offer => false,
      :path_to_image => '/images/veg.png'
  end
end
