require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')

class TestRiver <MiniTest::Test

  def setup
    @fish1 = Fish.new('Stinky Salmon')
    @fish2 = Fish.new('Honkin Haddock')
    @fish3 = Fish.new('Mingin Mullet')

    @river1 = River.new('Amazon', [@fish1, @fish2, @fish3])

    @river2 = River.new('Tay', [])

  end

  def test_river_has_name__name_found
    assert_equal("Amazon", @river1.name)
  end

  def test_river_has_fish
    assert_equal(3, @river1.fishes.length)

  end

  # def test_river_has_name__name_not_found
  #   assert_equal("Nile", @river1.name)
  # end

  def test_remove_fish_from_river
    p@river1
    @river1.remove_fish_from_river(@fish2)
    p@river1
    assert_equal(2, @river1.fishes.length)
  end


  def test_fish_count__3_fish_present
  assert_equal(3, @river1.fishes.length)
  end

  def test_fish_count__no_fish_present
  assert_equal(0, @river2.fishes.length)
  end



end
