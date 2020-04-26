class Digital < ApplicationRecord
	mount_uploader :imglote, AttachmentUploader # Tells rails to use this uploader for this model.   
	validates :documento, presence: true # Make sure the owner's name is present. 
end
