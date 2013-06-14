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

    it "has a progress status" do
      FactoryGirl.build(:task, status: nil).should_not be_valid
    end

    it "is not valid without an allowed status" do
      FactoryGirl.build(:task, status: "not valid status").should_not be_valid
    end

    it "is valid with an allowed status" do
      FactoryGirl.build(:task, status: "backlog").should be_valid
    end

    xit "is not valid without a consume" do
      FactoryGirl.build(:task, consume: nil).should_not be_valid
    end

  end
end
