class Comments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    t.column :author, :string
    t.column :body, :text

    t.timestamps
    end
  end
end
