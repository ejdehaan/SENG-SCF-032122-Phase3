class Dog

    # ✅ we should be able to create dogs with a name, age, breed, and image_url
      def initialize (name, age, breed, image_url)
        @name = name
        @age = age
        @breed = breed
        @image_url = image_url
      end
    
      # attr_accessor is our shortcut for attr_reader and attr_writer. this is our "setter and getter" in one
      attr_accessor :name, :breed, :image_url, :age, :last_walked_at, :last_fed_at
    
    # get our name => attr_reader
    #   def name
    #     @name
    #   end
    
    #   # set our name => attr_writer
    #   def name=(name)
    #     @name=name
    #   end
    
    # ✅ we want to be able to take a dog on a walk and track when they were last walked
      def walk
        @last_walked_at = Time.now
      end
    
      # ✅ we want to be able to feed a dog and track when they were last fed
      def feed
        @last_fed_at = Time.now
        # binding.pry
      end
    # binding.pry
    
      def needs_a_walk?
        # ✅ invoking our last_walked_at method. if last_walked_at return value == nil then this line of code won't run and the method will return true. otherwise the between method will check to see if last_walked_at return value (which is an instance of the Time class https://ruby-doc.org/core-2.6.3/Time.html) is between now and 4 hours ago.
        if last_walked_at
          !last_walked_at.between?(4.hours.ago, Time.now)
        else
          true
        end
      end
    
    
    
    
    
    
    def print
      puts ""
      puts self.name.light_green
      puts "  Age: #{self.age}"
      puts "  Breed: #{self.breed}"
      puts "  Image Url: #{self.image_url}"
      puts "  Last Fed At: #{self.last_fed_at}"
      puts "  Last Walked At: #{self.last_walked_at}"
      puts ""
    end
    
    end