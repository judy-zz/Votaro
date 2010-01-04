class CreateEnglishAndEsperantoTerms < ActiveRecord::Migration
  def self.up
    drop_table :definitions
    create_table :english_words, :force => true do |t|
      t.string      :title
      t.timestamps
    end
    create_table :esperanto_words, :force => true do |t|
      t.string      :title
      t.timestamps
    end
    create_table :word_matches, :force => true do |t|
      t.integer     :esperanto_word_id, :english_word_id
      t.timestamps
    end
  end

  def self.down
    drop_table :word_matches
    drop_table :english_words
    drop_table :esperanto_words
    create_table "definitions", :force => true do |t|
      t.string   "term"
      t.string   "definition"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
    
  end
end
