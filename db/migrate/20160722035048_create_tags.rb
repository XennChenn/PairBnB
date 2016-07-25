class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :property_type
      t.string :cancellation

      t.timestamps null: false
    end
  end
end
