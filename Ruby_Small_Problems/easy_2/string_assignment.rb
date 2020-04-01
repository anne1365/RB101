name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

#will print out BOB \n BOB because 'upcase!' mutates the caller