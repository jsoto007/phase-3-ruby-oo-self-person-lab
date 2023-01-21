# your code goes here
require 'pry'

class Person 

    attr_reader :name
    attr_accessor :bank_account, :hygiene, :happiness
    
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end 

    def happiness=(new_happiness)
        if  new_happiness > 10
            @happiness = 10
        elsif new_happiness < 0
            @happiness = 0

        else 
            @happiness = new_happiness

        end
    end 

    def happy?
        @happiness > 7 ? true : false
    end 

    def clean?
        @hygiene > 7 ? true : false
    end 

    def hygiene=(new_hygiene)
        if new_hygiene > 10
            @hygiene = 10
        elsif new_hygiene < 0 
            @hygiene = 0 
        else 
            @hygiene = new_hygiene
        end 
    end 

end
