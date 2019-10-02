class AddMemberidToMember < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :memberid, :string
  end
end
