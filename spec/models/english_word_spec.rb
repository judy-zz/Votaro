# == Schema Information
#
# Table name: english_words
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe EnglishWord do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    EnglishWord.create!(@valid_attributes)
  end
end
