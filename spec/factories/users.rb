FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials}
    email                 {Faker::Internet.free_email}
    password              {"password1234"}
    password_confirmation {"password1234"}
    family_name           {"なまえ"}
    first_name            {"なまえ"}
    family_name_kana      {"ナマエ"}
    first_name_kana       {"ナマエ"}
    birthday              {Faker::Date.birthday}
  end
end