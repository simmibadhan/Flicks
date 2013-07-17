class MoviePhoto < ActiveRecord::Base
	belongs_to :movie
  has_attached_file :photo, :styles => {:small=> "300x300>"},
                  :url  => "/assets/movies/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/movies/:id/:style/:basename.:extension"
end
