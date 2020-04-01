flinstones = ['Fred', 'Barney', 'Wilma', 'Pebbles', 'BamBam']

flinstones_hash ={}

flinstones.each.with_index do |name, index|
  flinstones_hash[name] = index
end

puts flinstones_hash
