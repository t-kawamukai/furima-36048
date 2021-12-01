FactoryBot.define do
  factory :order_address do
    postal_code     {'123-4567'}
    prefecture_id   { 2 }
    municipalities  {'市町村'}
    house_number    { 22 }
    tell            {'09012345678'}
    building_name   {'建物名'}
    token           {"tok_abcdefghijk00000000000000000"}
  end
end
