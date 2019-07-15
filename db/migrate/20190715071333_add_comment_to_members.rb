class AddCommentToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :comment, :string
  end
end
