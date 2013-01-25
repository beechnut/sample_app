FactoryGirl.define do
  factory :user do
    name      "Matt Cloyd"
    email     "matt@example.net"
    password  "foobar"
    password_confirmation "foobar"
  end
end