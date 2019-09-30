class AddYearToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :year, :string
  end
end
