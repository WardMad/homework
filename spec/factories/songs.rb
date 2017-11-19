FactoryGirl.define do
  factory :song do
    name        "Thriller"

    artist              { build(:artist) }
end
end
