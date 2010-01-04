# Destroy all word matches…
WordMatch.destroy_all

# Open wordlist
File.open(Rails.root.join('db/data/vortolisto.txt'), 'r').each do |line|
  en = EnglishWord.find_or_create_by_title(line[0..30].strip!)
  eos = line[31..300].split(',')
  eos.each do |eo|
    eo.strip!
    eo = EsperantoWord.find_or_create_by_title(eo)
    
    print en
    print " --- "
    puts eo
    
    match = WordMatch.create(
      :english_word => en,
      :esperanto_word => eo
    )
  end
end
