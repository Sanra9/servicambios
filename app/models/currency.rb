# == Schema Information
#
# Table name: currencies
#
#  id         :bigint(8)        not null, primary key
#  name       :string(100)
#  price_buy  :decimal(, )
#  price_sale :decimal(, )
#  available  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  country    :string
#

class Currency < ApplicationRecord
    belongs_to :user
end
