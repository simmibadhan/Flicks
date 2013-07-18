class Actor < ActiveRecord::Base
	has_and_belongs_to_many :movies
	has_many :reviews, as: :reviewable
	has_many :actor_photos, :dependent => :destroy

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
