# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    name "My Task"
    estimate 1
    status "backlog"
  end
end
