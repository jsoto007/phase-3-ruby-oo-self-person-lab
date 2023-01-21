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
        self.happiness > 7 ? true : false
    end 

    def clean?
        self.hygiene > 7 ? true : false
    end 

    def hygiene=(new_hygiene)
        if new_hygiene > 10
            @hygiene = 10
        elsif new_hygiene < 0 
            @hygiene = 0 
        else 
            @hygiene = new_hygiene
        end 

        def get_paid(amount)
            self.bank_account += amount
            return "all about the benjamins"
        end 

        def take_bath
            self.hygiene += 4
            return "♪ Rub-a-dub just relaxing in the tub ♫"
        end 

        def work_out
            self.hygiene -= 3
            self.happiness += 2
            return '♪ another one bites the dust ♫'
        end 

        def call_friend(friend)
            self.happiness += 3
            friend.happiness += 3
            return "Hi #{friend.name}! It's #{self.name}. How are you?"
        end

        def start_conversation(person, topic)
            if topic == "politics"
                self.happiness -= 2
                person.happiness  -= 2
                return "blah blah partisan blah lobbyist"
            elsif topic == "weather"
                self.happiness += 1
                person.happiness += 1
                return 'blah blah sun blah rain'
            else
                return 'blah blah blah blah blah'
            end
        end 

    end 

end
