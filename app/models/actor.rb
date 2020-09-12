class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{first_name} #{last_name}"
    end

    def character_name
        characters.collect{ | character | @char_name = character.name }
        @char_name
    end

    def get_show
        shows.collect{ | show | @show_name = show.name }
        @show_name
    end

    def list_roles
        "#{self.character_name} - #{self.get_show}"
        # binding.pry
    end
end