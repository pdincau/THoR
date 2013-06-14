require 'spec_helper'

describe Task do
  context "When instantiate a task" do
    it "has a good factory" do
      FactoryGirl.create :task
    end

    it "is not valid without a name" do
      FactoryGirl.build(:task, name: '').should_not be_valid
    end

    it "is not valid without an estimate" do
      FactoryGirl.build(:task, estimate: nil).should_not be_valid
    end

    it "is not valid with a non integer value estimate" do
      FactoryGirl.build(:task, estimate: 'string').should_not be_valid
    end

    it "is not valid with a negative estimate" do
      FactoryGirl.build(:task, estimate: -1).should_not be_valid
    end
  end
end
