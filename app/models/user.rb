class User < ApplicationRecord
  has_one_attached :images, :dependent => :destroy
end
