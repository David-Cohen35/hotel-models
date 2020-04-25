class CatRentalRequest < ApplicationRecord
    validate :valid_request?
    belongs_to :cat

    has_many :other_requests,
        through: :cat,
        source: :cat_rental_request

    def valid_request?
        overlapping_requests.empty?
    end

    def overlapping_requests
        result_1 = other_requests.where(other_requests: {start_date: (self.start_date..self.end_date) })
        result_2 = other_requests.where(other_requests: {end_date: (self.start_date..self.end_date) })
        return result_1 + result_2
    end
end