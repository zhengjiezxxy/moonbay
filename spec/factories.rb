FactoryGirl.define do
  factory :user do
    email 'zsw702x@163.com'
    password '12345678'

  #has_many roles
    factory :user_with_roles do
      ignore do
        roles_count 0
      end

      after(:create) do |user,evaluator|
         create_list(:role,evaluator.roles_count,user: user)
      end
    end

  end

  factory :role do
    name 'editor'
  end

end
