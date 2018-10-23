class Bear

  attr_accessor :name, :type, :stomach

  def initialize(bear_name, bear_type, stomach)
    @name = bear_name
    @type = bear_type
    @stomach = stomach
  end

  def add_fish_to_bear(removed_fish)
    @stomach<<removed_fish
  end

  def roar
    # angry_bear_type = @type.upcase
    p "RAAAAWWWWRRR #{@name.upcase} IS AN ANGRY #{@type.upcase}!!!"
  end

  def food_count
    @stomach.length
  end


end
