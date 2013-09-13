FactoryGirl.define do
  sequence :display_name do |n|
    "joe#{n}"
  end

  factory :game_board_entry do
    association :game_board
    display_name { generate(:display_name) }
  end
end