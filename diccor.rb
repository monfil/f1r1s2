def diccionary_sort
  array_words = []
  puts "Escribe una palabra: "
  word = gets
  is_word?(word, array_words) 
end

def write_another_word(new_array_words)
    puts 'Escribe otra palabra(o presiona "enter" para finalizar): '
    word = gets
    if word != "\n"
      new_array_words = is_word?(word, new_array_words)
    else
      p new_array_words
      list = new_array_words.sort_by { |i| i.capitalize}
      p "¡Feicidades! Tu diccionario tiene #{new_array_words.length} palabras:"
      puts list.sort
    end
end

def is_word?(word, array_words)
  if word =~ /[a-zA-Z]/ || word != "\n"
    array_words.push(word)
    write_another_word(array_words)
  else
    puts "No escribiste una palabra, vuelve a intentar."
    write_another_word(array_words)
  end
  array_words
end

diccionary_sort