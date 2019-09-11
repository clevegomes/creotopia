class Category < ActiveRecord::Base
  has_many :works, dependent: :destroy
end
