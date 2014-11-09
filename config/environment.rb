# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.server_settings = {
    :address        => 'smtp.gmail.com',
    :domain         => '<your domain>',
    :port           => 587,
    :user_name      => 'my@gmail.com',
    :password       => 'password',
    :authentication => :plain
}

ActionMailer::Base.raise_delivery_errors = true