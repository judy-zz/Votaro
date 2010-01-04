# == Schema Information
#
# Table name: word_matches
#
#  id                :integer         not null, primary key
#  esperanto_word_id :integer
#  english_word_id   :integer
#  created_at        :datetime
#  updated_at        :datetime
#

require 'spec_helper'

describe WordMatch do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    WordMatch.create!(@valid_attributes)
  end
end
