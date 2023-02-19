# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

   

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        @happiness = value
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0

        end
    end

    def hygiene=(value)
        @hygiene = value
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end

    def happy?
        self.happiness > 7? true : false
    end

    def clean?
        self.hygiene > 7? true : false
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness +=  3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(partner, topic)
        if topic == "politics"
         
         self.happiness -= 2
         partner.happiness -= 2
         "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            partner.happiness += 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah' 

        end

    end
   
end