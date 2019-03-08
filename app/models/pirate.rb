class Pirate
  
  attr_accessor :name, :weight, :height, :ships
  
  @@all = []
  
  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @ships = []
  end
  
  def self.create(hash)
    pirate = self.new(hash["name"], hash["weight"], hash["height"])
    pirate.save
<<<<<<< HEAD
    pirate
=======
>>>>>>> b591cd6b1287c94861a0994710ad6fc200e37646
  end
  
  def add_ship(hash)
    ship = Ship.new(hash["name"], hash["type"], hash["booty"])
    self.ships << ship
    ship.pirate = self
<<<<<<< HEAD
    self
=======
>>>>>>> b591cd6b1287c94861a0994710ad6fc200e37646
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
end