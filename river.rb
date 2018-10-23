class River
  attr_accessor :name, :fishes

  def initialize(river_name, fishes_array)
    @name = river_name
    @fishes = fishes_array
  end

  def remove_fish_from_river(fish)
    @fishes.delete(fish)
  end

  def fish_count
    @fishes.length
  end

end
