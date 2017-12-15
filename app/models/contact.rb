class Contact < ActiveRecord::Base
    belongs_to :provider
    validates :first_name, presence: {message: "Need to have at the least, a first name"}
    validates :service_type, presence: {message: "Service Type needs to be specified"}
    validates :session_rate, presence: {message: "Specify a figure for rate per session"}
    validates :mobile, presence: {message: "Mobile number is mandatory, Alternate is optional"}
    
end
