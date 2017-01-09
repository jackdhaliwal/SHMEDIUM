class AddFieldsToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :description, :text
    add_column :posts, :published, :date
  end
end
