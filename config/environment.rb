# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
HN::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'ScoutPost',
  :password => ENV['SENDGRID'],
  :domain => '',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
