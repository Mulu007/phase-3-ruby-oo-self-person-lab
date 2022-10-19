class Person
    # reader to prevent over-writing of the name (getter method)
    attr_reader :name, :happiness, :hygiene
    # accessor to allow a person to change the bank account amount
    # (setter & getter)
    attr_accessor :bank_account

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    # setter method for happiness
    def happiness=(value)
        # if the value is greater than 10 return 10(the maximum value)
        # else if the value is less than 0 return 0(the minimum value)
        # else return the value(a value between 0 and 10)
        @happiness = 
        if value > 10
            10
        elsif value < 0
            0
        else
            value
        end
    end

    # setter hygiene
    def hygiene=(value)
        @hygiene =
        if value >10
            10
        elsif value < 0
            0
        else
            value
        end
    end

    # Additional Instance Methods
    # a method with ? returns a boolean value(true or false)
    # self is an instance of this person so any attribute can be called with it
    def happy?
        # self will be an instance of a person
        self.happiness > 7 ? true : false
    end

    def clean?
        self.hygiene > 7 ? true : false
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
        self.happiness += 3
        friend.happiness += 3
        # [self, friend].map do |person|
        #     happiness +=3
        # end
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            [self, friend].each {|person| person.happiness -= 2}
            "blah blah partisan blah lobbyist"
        when "weather"
            [self, friend].each {|person| person.happiness += 1}
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
