FactoryBot.define do
  factory :review do
    user { nil }
    blog { nil }
    content { "MyString" }
    score { 1 }
  end
end
