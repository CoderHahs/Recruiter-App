class Recruiter < ApplicationRecord
	validates :first_name, presence: true, length: { maximum: 50 }
	validates :last_name, presence: true, length: { maximum: 50 }
	validates :email, presence: true, confirmation: true, uniqueness: {case_sensitive: false}, format: { with: URI::MailTo::EMAIL_REGEXP }

	belongs_to :company, optional: true

	def full_name
		"#{self.first_name} #{self.last_name}"
	end

	#def path
	#	"/recruiters/#{self.id}"
	#end

end
