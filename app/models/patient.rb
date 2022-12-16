class Patient < ApplicationRecord
    belongs_to :doctor
    has_many :appointments
    has_many :doctors, through: :appointments
end
