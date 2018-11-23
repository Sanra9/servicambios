require 'test_helper'

class CurrenciesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test 'cretae a currency.name' do
    assert_equal 'euro', currencies(:euro).name
  end

  test 'create a currency.price_buy'
    assert_equal 9.5, currencies(:euro).price_buy
  end

  test 'create a currency.price_sale'
    assert_equal BigDecimal.new("9.7"), currencies(:euro).price_sale
  end

  test 'create a currency.available'
    assert_equal false, currencies(:euro).available
  end

  test 'create a currency.country'
    assert_equal 'EU', currencies(:euro).country
  end
end
