# foodstuffs1 = {:name => 'kiwis', :color => 'brown', :price => 3} 
# foodstuffs2 = {:name => 'starfruits', :color => 'yellow', :price => 5} 
# foodstuffs3 = {:name => 'persimmons', :color => 'orange', :price => 2}


# puts "At my store, #{foodstuffs1[:name]} are a wonderful shade of #{foodstuffs1[:color]} and only cost $#{foodstuffs1[:price]} USD!"
# puts "At my store, #{foodstuffs2[:name]} are a wonderful shade of #{foodstuffs2[:color]} and only cost $#{foodstuffs2[:price]} USD!"
# puts "At my store, #{foodstuffs3[:name]} are a wonderful shade of #{foodstuffs3[:color]} and only cost $#{foodstuffs3[:price]} USD!" 

foodstuffs1 = {name: 'kiwis', color: 'brown', price: 3} 
foodstuffs2 = {name: 'starfruits', color:'yellow', price: 5} 
foodstuffs3 = {name: 'persimmons', color: 'orange', price: 2} 

class Food
  attr_reader :color
  attr_writer :name

  def initialize(input_hash)
    @name = input_hash[:name]
    @color = input_hash[:color]
    @price = input_hash[:price]
 
  end

  def color
    @color
  end

  def name
    @name
  end

  def info
    return puts "At my store, #{@name} are a wonderful shade of #{@color} and only cost $#{@price} USD!"
  end
end

class Foodiez < Food
  attr_reader :shelf_life
  def initialize(input_hash)
    @shelf_life = input_hash[:shelf_life]
  end
end


foodstuffs1 = Foodiez.new(name: "kiwis", color: "brown", price: 3, shelf_life: 12)
foodstuffs2 = Food.new(name: "starfruits", color: "yellow", price: 5)
foodstuffs3 = Food.new(name: "persimmons", color: "orange", price: 2)

puts foodstuffs1.info
puts foodstuffs2.info
puts foodstuffs3.info
 
 puts foodstuffs1.color
 puts foodstuffs2.color
 puts foodstuffs3.color

 puts foodstuffs1.name = "Cherries"

p foodstuffs1.shelf_life



