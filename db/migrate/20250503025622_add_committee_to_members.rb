class AddCommitteeToMembers < ActiveRecord::Migration[8.0]
  def change
    add_column :members, :committee, :string
  end
end
