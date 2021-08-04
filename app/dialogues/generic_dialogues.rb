def greeting_dialogue
  puts 'Hello and welcome to the game you\'d never ever finish, unless you look into the source code of course.'
end

def are_you_ready_dialogue
  puts "Are you ready to start? (Y\\n) - Type '-h' for help"
end

def are_you_sure?(action)
  puts "Are you sure you want to #{action}? (Y\\n)"
end

def help_dialogue
  puts 'The rules of this game are simple.'
  puts 'In each level you will have to solve a riddle.'
  puts 'If you solve it you will be moved to the next level.'
  puts 'At the beginning of the game you will have 3 lives.'
  puts 'Each time you fail to solve it you will lose 1 life.'
  puts 'If you lose all the 3 lives then you will lose the game.'
end
