class CreatePerformances < ActiveRecord::Migration[5.2]
  def change
    create_table :performances do |t|
      t.string :name
      t.integer :year
      t.string :image
      t.timestamps
    end
  end
end
