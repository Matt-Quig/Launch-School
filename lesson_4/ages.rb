ages =  { 'Herman' => 32, 'Lily' => 30, 'Grandpa' => 402, 'Eddie' => 10 }


puts ages.keep_if { |_, age|  age < 100 } 


