class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
    	t.string :title
    	t.integer :bedroom
    	t.integer :bathroom
    	t.string :checkin
    	t.string :checkout
    	t.integer :number_of_guest
    	t.text :description
    	t.text :rule
    	t.string :price

      	t.timestamps null: false
    end
  end
end

