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

class WordMatch < ActiveRecord::Base
  belongs_to :esperanto_word
  belongs_to :english_word
end
