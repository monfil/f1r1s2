def deaf_grandma
  message = talk_to_grandma
  grandma_resnponding(message)
end

def talk_to_grandma
  puts "Háblale a la abu: "
  gets.chomp
end

def bye_tqm?(message)
  message == "BYE TQM"
end

def yelling?(message)
  message == message.upcase
end

def grandma_respond_to_anything
  puts "NO, NO DESDE 1983"
end

def grandma_repond_to_not_hearing
  puts "HUH?! NO TE ESCUHO, HIJO!"
end

def grandma_respond_to_bye
  puts "CHAU!"
end

def bye_tqm_3?
  count = 1
  while count < 3
    x = gets.chomp
    count += 1 if bye_tqm?(x)
  end
  grandma_respond_to_bye
end

def grandma_resnponding(message)
  if bye_tqm?(message)
    bye_tqm_3?
  else
    if yelling?(message)
      grandma_respond_to_anything
      deaf_grandma
    else
      grandma_repond_to_not_hearing
      deaf_grandma
    end
  end
end

  # if message != "BYE TQM"
  #   if message == message.upcase
  #     puts "NO, NO DESDE 1983"
  #     deaf_grandma
  #   else 
  #     puts "HUH?! NO TE ESCUHO, HIJO!"
  #     deaf_grandma
  #   end
  # else
  #   puts "CHAU, MIJITA!"
  # end

deaf_grandma