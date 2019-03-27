class Equipment < ApplicationRecord
    has_one_attached :image
    has_many :loans
  
end
