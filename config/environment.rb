# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
OuroPreto::Application.initialize!

Time::DATE_FORMATS[:data_hora] = "%d %b %Y - %H:%M"
Time::DATE_FORMATS[:data_ma]   = " %b, %Y"
Time::DATE_FORMATS[:data_dma]   = "%d %b %Y"