# == Schema Information
#
# Table name: esperanto_words
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe EsperantoWord do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    EsperantoWord.create!(@valid_attributes)
  end
end
