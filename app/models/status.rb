class Status < ActiveRecord::Base

	validates :name, presence: true
	default_scope ->{ order('created_at') }
  	scope :open, -> { where(open: true) }
  	
end
