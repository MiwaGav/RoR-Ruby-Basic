class Bird

    attr_accessor :name

    def initialize(name)
        puts 'Hello, name your pet'
        name = gets.chomp
      @name = name.capitalize
      @live = @sleep = @mood 100
      @sing = false
      @eat = 50
      @tiredness = 25
          
     some_time
    end
  
    def fly
        puts "Ти випустив  #{@name} політати"
        @tiredness += 25
        @mood += 20
        @eat -= 5
        @sleep -= 20
        if @tiredness > 100
          puts "#{@name} хоче лягти спати"
        end
        some_time
      end
    def give_eat
      puts "Ви годуєте #{@name}"
      @eat += 25
      @live += 10
      @mood += 10
      @sleep -= 10
      if @eat > 50
        puts "#{@name} більше не хоче їсти"
      end
      p "#{@name} любить насіннячко"
      some_time
    end
  
    
  
    def sleep
      puts "#{@name} заснув у клітці"
      @eat -= 50
      @live += 50
      @sleep = 100
      @tiredness = 0
      some_time
    end
  
    def speak
      puts "Круто, що #{@name} вміє говорити!"
      @mood += 25
      @tiredness += 25
      @live -= 20
      @eat -= 10
      some_time
    end
  
    def wash
      puts "Необхідно #{@name} почистити крильця"
      @live -= 10
      @eat -= 5
      @mood +=5
      some_time
    end
  
    def say_good
      puts "#{@name} дуже подобається, коли його хвалять"
      @mood += 20
      some_time
    end
  
    def sing_song
      puts "#{@name} співає, коли чує свою улюблену пісню"
      @sing = true
      @eat -= 5
      @sleep -= 3
      if @eat <= 0 && @sleep <= 20
        @live -= 30
      end
      some_time
    end
  
    def help
      puts 'Погодувати - give_eat'
      puts 'Поговорити - speek'
      puts 'Вкласти спати - sleep'
      puts 'Випустити політати - fly'
      puts 'Почистити крильця - wash'
      puts 'Похвалити - say_good'
      puts 'Заспівати - see_some_stranger'
      puts 'Спостерігати - watch'
      puts 'Дізнатися, що необхідно - status'
      
    end
  
    def status
      puts "live = #{@live}"
      puts "mood = #{@mood}"
      puts "eat = #{@eat}"
      puts "tiredness = #{@tiredness}"
      puts "sleep = #{@sleep}"
      puts "sing = #{@sing}"
      some_time
    end
  
    def watch
      case rand(1..3)
        when 1
          p "#{@name} , співаючи пісню, качався на жердинці"
          @mood += 10
          @tiredness += 10
        when 2
          p "#{@name} гриз клітку, за це на нього насварилися"
          @mood -= 10
          @tiredness += 10
        when 3
          p "#{@name} вивчив нове слово"
          @mood += 20
          @eat -= 25
      end
      some_time
    end
  
    private
  
    def some_time
      time
      puts "Виберіть, що ви хочете зробити"
      act = gets.chomp
      act_r(act)
    end
  
    def act_r(act)
      send(act)
    rescue NoMethodError
      puts 'Невірна команда!'
      some_time
    end
  
    def time_passes
      @eat -= 5
      @sleep -= 5
      if @eat < 0 && @live < 20
        p "#{@name} заклював Вас і полетів"
      end
    end
  end
  
 bird = Bird.new('name')
