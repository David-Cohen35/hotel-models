class Cat < ApplicationRecord
    validates :sex, inclusion: { in: ["M", "F"] }
    has_many :cat_rental_requests, dependent: :destroy
end