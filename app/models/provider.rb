class Provider < ActiveRecord::Base
    belongs_to :category
    has_many :contacts
    validates :name,
        presence: {message: "Enter a Provider name for name's sake" },
        length: {minimum: 3, maximum: 25, too_short: "Sure about length of Name?", too_long: "Name's too long to hold"}
    validates :address,
        length: {minimum: 5, maximum: 150, too_short: "No Address at all?!", too_long: "Address is too long"}
    validates :category_id, presence: {message: "You have to tag this guy to a category"}
end
