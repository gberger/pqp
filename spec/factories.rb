FactoryGirl.define do
  factory :user do

  end

  factory :course do
    abbreviation { |n| "INF100#{n}" }
    name { |n| "Programação #{n}" }
    credits { |n| n }
  end
end