# == Schema Information
#
# Table name: english_words
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class EnglishWord < ActiveRecord::Base
  include Word
  
  has_many :word_matches
  has_many :esperanto_words, :through => :word_matches
end
