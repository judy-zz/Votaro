# Destroy all dictionary entries…
Definition.destroy_all

counter = 0

# Open wordlist
File.open(Rails.root.join('db/data/vortolisto.txt'), 'r').each do |line|
  term = line[0..30].strip!
  definition = line[31..300].strip!
  print term
  print " --- "
  puts definition  
  entry = Definition.create(
    :term => term,
    :definition => definition
  )
  counter += 1
  break if counter == 200
end
