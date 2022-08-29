class AddExcerptToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :excerpt, :string
  end
end
