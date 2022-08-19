class Post < ApplicationRecord
    has_rich_text :body
    has_one_attached :image, :dependent => :destroy

    enum category: [:fashion, :shoes , :bags]

    validates :title, presence: true, length: {minimum: 5, maximum:50}
    validates :body, presence: true
    validates :image, presence: true
    validates :category, presence:true

end
