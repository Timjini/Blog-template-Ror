class Post < ApplicationRecord
    has_rich_text :body
    has_one_attached :image, :dependent => :destroy

    enum category: [:fashion, :shoes , :bags]

    validates :title, presence: true,
    validates :excerpt, presence: true,
    validates :body, presence: true
    validates :image, presence: true
    validates :category, presence:true

end
