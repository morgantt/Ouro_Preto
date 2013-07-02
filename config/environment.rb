# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
OuroPreto::Application.initialize!

Time::DATE_FORMATS[:data_hora] = "%m %b %Y - %H:%M"
Time::DATE_FORMATS[:data_so]   = "%m %b %Y "
