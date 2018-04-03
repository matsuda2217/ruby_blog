class User < ActiveRecord::Base
    
    validates :username, presence: true, 
                         uniqueness: {case_sensitive: false},
                         length: {minimum: 3, maximum: 25}
    VALID_EMAIL_EXPRESS =  /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]{2,3}\z/
    validates :email, presence: true, length: { maximum: 105 },
                      uniqueness: { case_sensitive: false },
                      format: { with: VALID_EMAIL_EXPRESS, message: "Invalid Email format" }
end