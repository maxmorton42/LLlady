$register = []

$meals = []

class Entree
  
  def initialize
    ask_choice
  end

  def ask_choice
    puts "ORDER UP"
    puts "WHAT YOU WANT HONEY"
    puts "enter which number you want"
    puts "1) cheeseburger", "2) hotdawg", "3) Pizza", "4) I'm not hungry"

    choice = gets.strip

    case choice
      when "0"
      view_cart
      when "1"
        cheese
      when "2"
        hotdawg
      when "3"
        pizza
      when "4"
      puts "Goodbye!"
      exit
      else
        puts "Invalid Choice"
    end 
  end
    
  def view_cart
    myorder = $meals.each {|val| puts "#{val}"}
    myorder
  end

  def cheese
    puts "CHEESEBURGER $5"
    puts "ALRIGHT HONEY WHAT YOU WANT FOR SIDES"
    puts "WE GOT 1)RICE 2)BREAD 3)BEANS 4)EXIT"
    cheeseburger = "cheeseburger"
    $meals.push(cheeseburger)
    cheesem = 5
    $register.push(cheesem)
  end  

  def hotdawg
    puts "HOTDOG $1"
    puts "ALRIGHT HONEY WHAT YOU WANT FOR SIDES"
    puts "WE GOT 1)RICE 2)BREAD 3)BEANS 4)EXIT"
    hot = "hotdog"
    $meals.push(hot)
    dog = 1
    $register.push(dog)
  end

  def pizza
    puts "PIZZA $3"
    puts "ALRIGHT HONEY WHAT YOU WANT FOR SIDES"
    puts "WE GOT 1)RICE 2)BREAD 3)BEANS 4)EXIT"
    pizza = "pizza"
    $meals.push(pizza)
    pizzam = 3
    $register.push(pizzam)
  end
end

class Side

  def initialize
    sides_first
  end

  def sides_first
    
    choice = gets.strip

    case choice
      when "0"
      view_cart
      when "1"
        rice
      when "2"
        bread
      when "3"
        beans
      when "4"
      puts "Goodbye!"
      exit
      when "5"
        register
      else
        puts "Invalid Choice"
    end 
  end

  def rice
    puts "RICE $1"
    puts "anything else?" 
    puts "0-Cart 1-rice 2-bread 3-beans 4-exit 5-Checkout"
    rice = "rice"
    $meals.push(rice)
    ricem = 1
    $register.push(ricem)
    sides_first
  end

  def bread
    puts "BREAD $1"
    puts "anything else?" 
    puts "0-Cart 1-rice 2-bread 3-beans 4-exit 5-Checkout"
    bread = "bread"
    $meals.push(bread)
    breadm = 1
    $register.push(breadm)
    sides_first
  end    
    
  def beans
    puts "BEANS $1"
    puts "anything else?" 
    puts "0-Cart 1-rice 2-bread 3-beans 4-exit 5-Checkout"
    beans = "beans"
    $meals.push(beans)
    beansm = 1
    $register.push(beansm)
    sides_first
  end

  def view_cart
    @miorder = $meals.each {|val| puts "#{val}"}
    @miorder
    sides_first
  end

  def register
    puts "your items are "
    @miorder = $meals.each {|val| puts "#{val}"}
    @miorder
    puts " "
    puts "ALRIGHT YOUR TOTAL IS: "
    chaching = $register.sum
    print "$"
    puts  chaching
    puts "--- Swipe Card ---"
    if chaching >= 10
      working
      puts "Declined"
    elsif chaching <= 10
      working
      puts "Approved"
      puts "Thank You"
    end
  end

  def working
    print "."
    sleep(1)
    print "."
    sleep(1)
    print "."
    sleep(1)
  end

end  

Entree.new
Side.new
