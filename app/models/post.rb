class Post < ApplicationRecord
    
    #All business logic is in controller. For example, lets say in the future, I only want posts to show that were
    #..released between a particular set of months or only ones that will be released in the future, I can change the logic here.
    
    def self.released
        where("published <= ?", Time.now).order("published desc")
    end
end
