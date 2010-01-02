require 'spec_helper'

describe Definition do
  before(:each) do
    @valid_attributes = {
      :term => "value for term",
      :definition => "value for definition"
    }
  end

  it "should create a new instance given valid attributes" do
    Definition.create!(@valid_attributes)
  end
end
