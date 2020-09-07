class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors
    belongs_to :network

    def actors_list
        Actor.all.collect do |actor|
            actor.full_name
        end
    end
  
end