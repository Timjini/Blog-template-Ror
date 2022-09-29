class Shopthelook < ApplicationRecord
    has_many_attached :images, :dependent => :destroy
    has_one_attached :picture, :dependent => :destroy

end
