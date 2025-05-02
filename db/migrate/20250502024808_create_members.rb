class CreateMembers < ActiveRecord::Migration[8.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :grade
      t.string :classroom
      t.integer :age
      t.string :text

      t.timestamps
    end
  end
end
