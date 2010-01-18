class DictionaryEntriesController < ApplicationController
  def index
    @english_words = EnglishWord.find(:all)
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml # index.xml.builder
    end
  end

end
