class User < ActiveRecord::Base
	has_many :events 

	
has_secure_password

  validates_uniqueness_of :user_name

def user_name=(value)
	value = value.strip.downcase
	write_attribute :user_name, value

end

end
