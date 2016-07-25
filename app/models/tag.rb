class Tag < ActiveRecord::Base
	has_many :listings, through: :listingtags
	has_many :listingtags, dependent: :destroy

	
end
