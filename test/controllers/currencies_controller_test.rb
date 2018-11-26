require 'test_helper'

class CurrenciesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true{name: @currency.name, price_buy: @currency.price_buy, price_sale: @currency.price_sale, available: @currency.available, country: @currency.country}
  # setup do
  # @currency = currencies(:euro)
  # end
  #
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

  test 'should get index' do 
    get currencies_url
    assert_response :success
    assert_not_nil assigns(:currencies)
  end

  test 'should create a currency' do
    assert_difference 'Currency.count' do
      post :create, currency: {name: 'euro', price_buy: 9.5, price_sale: BigDecimal.new('9.7'), available: false, country:'EU'}
    end
  end

end
