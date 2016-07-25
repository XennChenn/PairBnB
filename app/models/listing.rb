class Listing < ActiveRecord::Base
	belongs_to :user
	has_many :listingtags, dependent: :destroy
	has_many :tags, through: :listingtags
	mount_uploader :image, ImageUploader
end
