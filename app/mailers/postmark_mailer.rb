class PostmarkMailer < ApplicationMailer
	
	def send_email
		@contact = params
	  mail(:subject => 'Portfolio Reply',
	      :to  => "#{Rails.application.credentials.form_email}",
	      :from => "#{Rails.application.credentials.form_email}",
	      :track_opens => 'true'
	    ) do |form|
	  	form.html { render 'layouts/postmark_mailer/mailer' } 
	  end
	 
  end
end
