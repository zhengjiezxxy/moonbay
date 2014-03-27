FactoryGirl.define do
  factory :user do
    email 'John'
    password 'Doe'

    # Child of :user factory, since it's in the `factory :user` block
    factory :admin do
      admin true
    end
  end
end
