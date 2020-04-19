require './test/test_helper'

class StockApiWrapperTest < Minitest::Test
  def test_exists
    assert StockApiWrapper::Stock
  end

  def test_it_gives_back_usd
  	VCR.use_cassette('USD') do
    stock = StockApiWrapper::Stock.find(150) 
  		assert_equal StockApiWrapper::Stock, stock.class

  		assert_equal 150, stock.symbols_returned
  		assert_equal "USD", stock.base
  	end
  end

end