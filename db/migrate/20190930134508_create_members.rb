class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :nickname
      t.string :name
      t.string :job
      t.text :text
      t.string :image
      t.string :year

      t.timestamps
    end
  end
end
