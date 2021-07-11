class User < ApplicationRecord
    validates_uniqueness_of :name
    validates_length_of :password, :within => 5..20
    validates_confirmation_of :password
    def has_password?(submitted_password)
        password == submitted_password
    end

    def self.authenticate(name,submitted_password)
        user = find_by_name(name)
        return nil if user.nil?
        return user if user.has_password?(submitted_password)
    end
end
