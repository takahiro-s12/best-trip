class Post < ApplicationRecord
  belongs_to :user
  attachment :main_image
  attachment :sub_image
end
