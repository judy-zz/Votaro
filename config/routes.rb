ActionController::Routing::Routes.draw do |map|
  map.with_options :controller => "DictionaryEntries" do |de|
    de.entries "/entries", :action => "index", :conditions => { :method => :get }
  end
  
  map.root :controller => "dictionary_entries"
end
