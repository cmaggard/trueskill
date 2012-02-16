FactoryGirl.define do
  sequence(:player_id) { |n| "player#{n}" }

  factory(:player) do
    id { FactoryGirl.generate :player_id }
    mu 25.0
    sigma 25.0 / 3.0
  end
end
