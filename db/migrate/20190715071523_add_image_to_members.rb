class AddImageToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :iamge, :string
  end
end
