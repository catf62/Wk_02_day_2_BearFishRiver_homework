require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class BearTest < MiniTest::Test

  def setup
    @bear1 = Bear.new("Snowy", "Polar Bear", [])
    @bear2 = Bear.new("Grumpy", "Grizzly Bear", [])
    @bear3 = Bear.new("Munchy", "Giant Panda", [])

    @fish1 = Fish.new('Stinky Salmon')
    @fish2 = Fish.new('Honkin Haddock')
    @fish3 = Fish.new('Mingin Mullet')

    @river1 = River.new('Amazon', [@fish1, @fish2, @fish3])


  end

  def test_bear_has_name__name_found
    assert_equal("Grumpy", @bear2.name)
  end

  # def test_bear_has_name__name_not_found
  #   assert_equal("Bucket", @bear2.name)
  # end

  # def test_take_fish_from_river
  #
  # end

  def test_add_fish_to_bear
    # p@river1
    removed_fish = @river1.remove_fish_from_river(@fish2)
    # p@river1
    # p removed_fish
    @bear2.add_fish_to_bear(removed_fish)
    # p@bear2
    assert_equal(2, @river1.fishes.length)
    assert_equal(1, @bear2.stomach.length)
  end

  def test_roar
    assert_equal("RAAAAWWWWRRR SNOWY IS AN ANGRY POLAR BEAR!!!", @bear1.roar)
  end

  def test_food_count__empty
    @bear3.food_count
    assert_equal(0, @bear3.stomach.length)
  end

  def test_food_count__food_eaten
    removed_fish = @river1.remove_fish_from_river(@fish2)

    @bear2.add_fish_to_bear(removed_fish)

    assert_equal(2, @river1.fishes.length)
    assert_equal(1, @bear2.stomach.length)
  end


end
