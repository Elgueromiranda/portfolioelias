class ApplicationMailer < ActionMailer::Base
  default from: ENV['form_email']
end
