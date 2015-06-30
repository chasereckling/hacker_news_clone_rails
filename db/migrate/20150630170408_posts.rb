class Posts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    t.column :title, :string
    t.column :url, :text

    t.timestamps
   end
  end
end
