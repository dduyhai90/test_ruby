class CreateActions < ActiveRecord::Migration[7.0]
  def change
    create_table :actions do |t|
      t.string :name
      t.string :url
      t.integer :parent_id
      t.integer :status_id
      t.integer :display_order
      t.string :icon
      t.timestamps
    end
  end
end
