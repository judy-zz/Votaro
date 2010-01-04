module Word
  def self.find_or_create_by_title(title)
    self.find(:first, :conditions => ["title = ?", title]) ||
    self.create(:title => title)
  end
  
  def to_s
    title
  end
end