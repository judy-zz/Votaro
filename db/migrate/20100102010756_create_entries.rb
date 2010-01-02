class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :definitions, :force => true do |t|
      t.string      :term, :definition
      t.timestamps
    end
  end

  def self.down
    drop_table :definitions
  end
end
