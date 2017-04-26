class ApplicationMailer < ActionMailer::Base
  default from: "Test Aim <#{ENV['ADMIN_EMAIL']}>"
  layout 'mailer'
end
