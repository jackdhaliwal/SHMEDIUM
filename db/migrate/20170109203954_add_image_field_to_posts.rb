class AddImageFieldToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :image_file_name, :string
  end
end
