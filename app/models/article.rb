class Article < ApplicationRecord
	has_attached_file :image, styles: { medium: "800x800", thumb: "200x200" },
	:storage => :cloudinary,
	:cloudinary_credentials => Rails.root.join("config/cloudinary.yml"), 
	:path => ':id/:style/:filename'
	  
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	validates_presence_of :title
  	validates_presence_of :image
  	validates_presence_of :body

end
