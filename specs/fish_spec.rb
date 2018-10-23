require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new('Stinky Salmon')
    @fish2 = Fish.new('Honkin Haddock')
    @fish3 = Fish.new('Mingin Mullet')
  end

  def test_fish_has_name__name_found
    assert_equal('Stinky Salmon', @fish1.name)
  end

  # def test_fish_has_name__name_not_found
  #   assert_equal('Smelly Cod', @fish1.name)
  # end

end
