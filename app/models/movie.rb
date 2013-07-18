class Movie < ActiveRecord::Base
	has_and_belongs_to_many :actors
	has_many :reviews, as: :reviewable
	has_many :movie_photos, :dependent => :destroy

	def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
