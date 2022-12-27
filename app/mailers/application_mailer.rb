class ApplicationMailer < ActionMailer::Base
  default from: "#{Rails.application.credentials.postmark_api_token}"
end
