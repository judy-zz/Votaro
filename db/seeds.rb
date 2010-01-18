# Destroy all word matches…
EsperantoWord.destroy_all
EnglishWord.destroy_all
WordMatch.destroy_all

# Open wordlist
File.open(Rails.root.join('db/data/vortolisto.txt'), 'r').each do |line|
  eo = EsperantoWord.find_or_create_by_title(line[0..30].strip!)
  ens = line[31..300].split(',')
  ens.each do |en|
    en.strip!
    en = EnglishWord.find_or_create_by_title(en)
    
    print eo
    print " --- "
    puts en
    
    match = WordMatch.create(
      :english_word => en,
      :esperanto_word => eo
    )
  end
end
