class DictionaryEntriesController < ApplicationController
  def index
    @EnglishWords = EnglishWord.find(:all)
  end

end
