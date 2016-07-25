class Listingtag < ActiveRecord::Base
	belongs_to :tag
	belongs_to :listing
end
