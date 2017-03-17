FactoryGirl.define do
  factory :log_game do
    association :user, factory: :user
    association :opponent, factory: :user
    user_score 50
    opponent_score 20
    day "Friday"
    month 5
    year 2015
  end
end
