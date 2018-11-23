require 'test_helper'

class CurrenciesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test 'cretae a currency.name' do
    assert_equal 'euro', currencies(:euro).name
  end

  test 'create a currency.price_buy' do
    assert_equal 9.5, currencies(:euro).price_buy
  end

  test 'create a currency.price_sale' do
    assert_equal BigDecimal.new("9.7"), currencies(:euro).price_sale
  end

  test 'create a currency.available' do
    assert_equal false, currencies(:euro).available
  end

  test 'create a currency.country' do
    assert_equal 'EU', currencies(:euro).country
  end
end
