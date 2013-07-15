class Movie < ActiveRecord::Base
	has_many :casts
	has_many :actors, through: :casts
end
