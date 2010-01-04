class DictionaryEntriesController < ApplicationController
  def index
    @english_words = EnglishWord.find(:all)
  end

end
