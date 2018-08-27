# class AddAttributesToInventory < ActiveRecord::Migration[5.2]
#   def change create_table :inventories
#     add_column :inventories, :content, :text
#     add_column :inventories, :user_id, :integer
#   end
# end
class AddAttributesToInventory < ActiveRecord::Migration[5.2]

  def change
    create_table :inventories do |t|
      t.string :user_id
      t.string :reqstatus
      t.text :content


      t.timestamps
    end
  end

end
