class User < ActiveRecord::Base
    has_many :favorites

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def create_user(first_name, last_name)
        User.create(first_name: first_name, last_name: last_name)
    end
end