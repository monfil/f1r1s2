def diccionary_sort
  a = []
  i = 0
  puts "Escribe una palabra: "
  a[i] = gets.chomp
  while a[i] != "\n"
    i += 1
    puts 'Escribe otra palabra(o presiona "enter" para finalizar): '
    a.push(gets)
  end
  a.delete(a.last)
  a.each do |e|
    
  end
  p "¡Feicidades! Tu diccionario tiene #{a.length} palabras:"
  puts a.sort
end

diccionary_sort
#a.delete(e) if e.integer?