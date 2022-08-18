class Post < ApplicationRecord
    has_rich_text :body
    has_one_attached :image, :dependent => :destroy

    enum category: [:fashion, :shoes , :bags]

end
