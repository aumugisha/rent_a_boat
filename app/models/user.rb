class User < ApplicationRecord
    has_many :boats
    has_many :bookings
end
