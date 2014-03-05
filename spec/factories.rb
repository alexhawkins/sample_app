FactoryGirl.define do
  factory :user do
    name     "Zander Zee"
    email    "zanderzee@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end