class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :cost
      t.string :origin
      t.string :description

      t.timestamps
    end
  end
end
