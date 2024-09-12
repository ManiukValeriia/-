# Определяем возможные варианты
OPTIONS = ["камень", "ножницы", "бумага"]

def get_user_choice
  puts "Введите ваш выбор (камень, ножницы, бумага):"
  choice = gets.chomp.downcase
  until OPTIONS.include?(choice)
    puts "Неверный выбор. Пожалуйста, введите камень, ножницы или бумага:"
    choice = gets.chomp.downcase
  end
  choice
end

def get_computer_choice
  OPTIONS.sample
end

def determine_winner(user_choice, computer_choice)
  if user_choice == computer_choice
    "Ничья!"
  elsif (user_choice == "камень" && computer_choice == "ножницы") ||
        (user_choice == "ножницы" && computer_choice == "бумага") ||
        (user_choice == "бумага" && computer_choice == "камень")
    "Вы выиграли!"
  else
    "Компьютер выиграл!"
  end
end

def play_game
  puts "Добро пожаловать в игру 'Камень, ножницы, бумага'!"
  user_choice = get_user_choice
  computer_choice = get_computer_choice

  puts "Ваш выбор: #{user_choice}"
  puts "Выбор компьютера: #{computer_choice}"
  puts determine_winner(user_choice, computer_choice)
end

play_game
