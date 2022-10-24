class Dog < ActiveRecord::Base
    has_many :appointments
    has_many :walkers, through: :appointments
end