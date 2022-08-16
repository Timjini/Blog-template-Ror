class Post < ApplicationRecord
    has_rich_text :body
    belongs_to :user
    has_one_attached :image, :dependent => :destroy
end
