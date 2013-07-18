class ActorPhoto < ActiveRecord::Base
	belongs_to :actor
  has_attached_file :photo, :styles => {:small=> "300x300>"},
                  :url  => "/assets/actors/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/actors/:id/:style/:basename.:extension"
end
