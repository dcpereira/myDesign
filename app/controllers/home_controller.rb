require 'pry'

class HomeController < ApplicationController



	def index
	end

	def services
	end

	def about_us
	end

	def gallery
	end

	def contact_us
	end

	def faq
	end



	#private  - still to decide
	def send_enquiry
		user_name = params['customer_name']
		user_email_address = params['email_address']
		user_meesage = params['email_message']
		EnquiryMailer.customer_enquiry(
			user_name, 
			user_email_address, 
			user_meesage).
		deliver
		 flash[:notice] = "Post successfully created"
		redirect_to contact_us_path 
	end

end