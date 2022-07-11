FactoryBot.define do
  factory :listing do
    title { "MyString" }
    description { nil }
    breed { "MyString" }
    location { "MyString" }
    fee { 1 }
    available { false }
    user { nil }
    category { nil }
  end
end
