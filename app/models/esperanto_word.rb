# == Schema Information
#
# Table name: esperanto_words
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class EsperantoWord < ActiveRecord::Base
  include Word
  
  has_many :word_matches
  has_many :english_words, :through => :word_matches
end
