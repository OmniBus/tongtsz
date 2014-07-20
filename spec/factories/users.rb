FactoryGirl.define do
  factory :new_user, class: User do
    name "Test User"
    email "test@example.com"
    password "please123"

    trait :admin do
      role 'admin'
    end

  end

  factory :user, parent: :new_user do
    after(:create) { |user| user.confirm! }
  end
end
