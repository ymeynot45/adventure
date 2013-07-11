require 'yaml'

#CONSTANTS
#NORTH = 2
#EAST = 4
#SOUTH = 3
#WEST = 5
#ROOM = 0
#DESCRIPTION = 1
#STARTING_LOCATION = 1 not needed with hashes.
#filename = 'rooms.yaml'


#DATA old way
#rooms = [
#  ['Limbo ', 'You float in the nothingness. Did you try to teleport to a word?', nil, nil, nil, nil], #0
#  ['Front Door', 'The front door is simple oak.', nil, nil, nil, 2], #1
#  ['Porch', 'A neglected fishtank sits in the corner.', nil, nil, 1, 3], #2
#  ['Living Room', 'The clutter isn\'t as bad as gradma used to make.', 7, nil, 2, 4], #3
#  ['Dining Room', 'The large table in this room had a curious half played game of Axis and Allies on it. How did the Japanese ever take Brazil and Britian while the English own Japan?', 8, nil, 3, 5], #4
#  ['Laundry Room', ' The rumbling of the machines betrays the identity of this room.', nil, nil, 4, 10], #5
# ['Office', 'Someone was watching the Daily show.', nil, nil, nil, 7], #6
#  ['Foyer', 'To the NORTH is the bathroom and the EAST is the office.', 9, 3, 6, 11], #7
#  ['Kitchen', 'Something smells good.', nil, 4, nil, nil], #8
#  ['Bathroom', 'A simple standard bathroom.', nil, 7, nil, nil], #9
# ['Back Door', 'The doorway to untamed wilds.', nil, nil, 5, nil], #10
# ['2nd Floor Landing', 'Exactly as it sounds.', nil, 14, 13, 12], #11
#  ['Storage Room', 'It is filled with shelves and plastic tubs.', nil, nil, 11, nil], #12
#  ['1/2 Bath', 'A simple water closet.', nil, 11, 15, nil], #13
# ['Study', 'A large TV dominates this room.', 11, nil, nil, nil], #14
# ['Bedroom', 'There seems to be some rhyme to the madness of this room.', nil, nil, nil, 13], #15
#]

limbo = {
  'DESCRIPTION' => "You float in the nothingness. Did you try to teleport to a word?",
  'NORTH'       => nil,
  'SOUTH'       => nil,
  'EAST'        => nil,
  'WEST'        => nil,
  }

frontdoor = {
  'DESCRIPTION' => "The front door is simple oak.",
  'NORTH'       => nil,
  'SOUTH'       => nil,
  'EAST'        => nil,
  'WEST'        => 'porch',
  }

porch = {
  'DESCRIPTION' => "A small porch",
  'NORTH'       => nil,
  'SOUTH'       => nil,
  'EAST'        => 'frontdoor',
  'WEST'        => 'livingroom',
  }

livingroom = {
  'DESCRIPTION' => "The clutter isn't as bad as gradma used to make.",
  'NORTH'       => 'foyer',
  'SOUTH'       => nil,
  'EAST'        => 'porch',
  'WEST'        => 'diningroom',
  }

diningroom = {
  'DESCRIPTION' => "The dining room.",
  'NORTH'       => 'kitchen',
  'SOUTH'       => nil,
  'EAST'        => 'livingroom',
  'WEST'        => 'laundry',
  }

laundry = {
  'DESCRIPTION' => "The laundry room.",
  'NORTH'       => nil,
  'SOUTH'       => nil,
  'EAST'        => 'diningroom',
  'WEST'        => 'backdoor',
  }

office = {
  'DESCRIPTION' => "Someone was watching the Daily show.",
  'NORTH'       => nil,
  'SOUTH'       => nil,
  'EAST'        => nil,
  'WEST'        => 'foyer',
  }

foyer = {
  'DESCRIPTION' => "The foyer.",
  'NORTH'       => 'bathroom',
  'SOUTH'       => 'livingroom',
  'EAST'        => 'office',
  'WEST'        => 'second_floor_landing',
  }

kitchen = {
  'DESCRIPTION' => "Peter is making his world famous bacon.",
  'NORTH'       => nil,
  'SOUTH'       => 'diningroom',
  'EAST'        => nil,
  'WEST'        => nil,
  }

bathroom = {
  'DESCRIPTION' => "A simple standard bathroom.",
  'NORTH'       => nil,
  'SOUTH'       => 'foyer',
  'EAST'        => nil,
  'WEST'        => nil,
  }

backdoor = {
  'DESCRIPTION' => "The doorway to untamed wilds.",
  'NORTH'       => nil,
  'SOUTH'       => nil,
  'EAST'        => 'laundry',
  'WEST'        => nil,
  }

second_floor_landing = {
  'DESCRIPTION' => "Exactly as it sounds.",
  'NORTH'       => 'halfbath',
  'SOUTH'       => 'study',
  'EAST'        => 'foyer',
  'WEST'        => 'storage',
  }

storage = {
  'DESCRIPTION' => "It is filled with shelves and plastic tubs.",
  'NORTH'       => nil,
  'SOUTH'       => nil,
  'EAST'        => 'second_floor_landing',
  'WEST'        => nil,
  }

halfbath = {
  'DESCRIPTION' => "A dark cold room.",
  'NORTH'       => nil,
  'SOUTH'       => nil,
  'EAST'        => 'upstairs_bedroom',
  'WEST'        => 'second_floor_landing',
  }

study = {
  'DESCRIPTION' => "The study",
  'NORTH'       => 'second_floor_landing',
  'SOUTH'       => nil,
  'EAST'        => nil,
  'WEST'        => nil,
  }

upstairs_bedroom = {
  'DESCRIPTION' => "There seems to be some rhyme to the madness of this room.",
  'NORTH'       => nil,
  'SOUTH'       => nil,
  'EAST'        => nil,
  'WEST'        => 'halfbath',
  }

  rooms = {
  "limbo" => limbo,
  "frontdoor" => frontdoor,
  "porch" => porch,
  "livingroom" => livingroom,
  "diningroom" => diningroom,
  "laundry" => laundry,
  "office" => office,
  "foyer" => foyer,
  "kitchen" => kitchen,
  "bathroom" => bathroom,
  "backdoor" => backdoor,
  "second_floor_landing" => second_floor_landing,
  "storage" => storage,
  "halfbath" => halfbath,
  "study" => study,
  "upstairs_bedroom" => upstairs_bedroom,
}

starting_pc_hp = 100
player_hp = starting_pc_hp

# METHODS/FUNCTIONS

# def yaml_save object, filename
  # File.open filename, 'w' do |f| # the 'w' is a required imbeded program key, the |f| is just a varible refering to the next line.
    # f.write(object.to_yaml)
  # end #the do & end are their own little method in the method.
# end

# def yaml_load filename
  # yaml_string = File.read filename
  # YAML::load yaml_string
# end

# def edit_description rooms, location
  # puts "How would you describe this room?"
  # edit = gets
  # rooms[location][DESCRIPTION] = edit
# end

def room_cycle rooms, location
  x = 1
  while x != rooms.count
    puts x.to_s + ': ' + rooms[x][0]
    x = x+1
  end
end

# def teleport rooms, location
  # puts "Where would you like to go? \nPlease give me the number of the room."
  # room_cycle rooms, location
  # tele_loc = gets.to_i
  # if tele_loc >= rooms.length and tele_loc <= 0
    # puts "There is no room " + tele_loc.to_s
    # else
    # location = tele_loc
  # end
  # return location
# end

def room_description rooms, location
  puts location
  puts rooms[location]['DESCRIPTION']
end

def get_room rooms, loc
  return rooms[loc]
end

def get_next_room_id rooms, loc, dir
  room = get_room rooms, loc
  return room[dir]
end

def looking rooms, loc, dir
  next_id = get_next_room_id rooms, loc, dir
  if next_id != nil
    puts 'You see the ' + next_id
    puts rooms[next_id]['DESCRIPTION']
  else
    puts 'Yep, that\'s a sturdy wall that you are looking at.'
  end
end

def go rooms, location, dir
  next_id = get_next_room_id rooms, location, dir
  if next_id != nil
    return next_id
  else
    puts "You can't go in that direction."
    return location
  end
end

def player_is_alive? player_hp
  player_hp > 0
end

def enemy_is_alive? enemy_hp
  enemy_hp > 0
end

def player_damage(player_hp)
    puts "You take 5 hp of damage and the monster takes 0!"
    player_hp = player_hp -5
    return player_hp
end

def monster_damage(enemy_hp)
    puts "You win and damage the enemy takes 5 points of damage."
    enemy_hp = enemy_hp -5
    return enemy_hp
end

def combat_text(player_text, enemy_a_text)
  puts "You play " + player_text.to_s + " and the monster plays " + enemy_a_text.to_s + "!"
end

def battle player_hp

enemy_name = "Troll "
enemy_hp = 20
enemy_skill = 3 # Skill of 1 = only rock, 2 is rock & paper, 3 is all three
#rock_count = 0 # Not used until AI is created
#paper_count = 0 # Not used until AI is created
#scissors_count = 0 # Not used until AI is created
player_text = " "

puts "You engage the " + enemy_name +  "!"
while player_is_alive? player_hp and enemy_is_alive? enemy_hp
  puts " "
  puts " "
  puts "You have " + player_hp.to_s + " hp left and your opponnent has " + enemy_hp.to_s + " hp left!"
  puts "He looks ready to go, what will you play?"
  enemy_move = rand(enemy_skill) + 1
  if enemy_move == 1
    enemy_a_text = "ROCK"
    #puts enemy_a_text + " " + enemy_move.to_s #test marker
  elsif enemy_move == 2
    enemy_a_text = "PAPER"
    #puts enemy_a_text + " " + enemy_move.to_s #test marker
  elsif enemy_move == 3
    enemy_a_text = "SCISSORS"
    #puts enemy_a_text + " " + enemy_move.to_s #test marker
  else
    puts "The enemy is confused." + enemy_move.to_s #test marker
    #enemy_a_text = " "
  end

  player_move = gets.upcase.chomp
  player_text = player_move
  if player_move == 'ROCK'
    player_move = 1
    puts "You play ROCK!"
  elsif player_move == 'PAPER'
    player_move = 2
    puts "You play PAPER!"
  elsif player_move == 'SCISSORS'
    player_move = 3
    puts "You play SCISSORS!"
  elsif player_move == 'QUIT'
    player_move = 666
  elsif player_move == 'HELP'
    player_move = 411
  else
    player_move = 10
  end

puts " "

  if player_move == 666
    player_hp = player_hp -1000
  elsif player_move == 411
    puts "The combat is a simple ROCK, PAPER, SCISSORS game."
    puts "You may type 'ROCK', 'PAPER', 'SCISSORS', 'QUIT', or 'HELP' again."
    puts "All other entries will be considered an error and the opponent "
    puts "will get a free attack."
    puts "You have " + player_hp.to_s + " left."
    puts "The enemy has " + enemy_hp.to_s + " left."
    puts "I hope that helped."
    player_hp = player_hp
  elsif player_move == 10
    puts "You spaz and can't think of a move."
    player_hp = player_damage(player_hp)
  elsif player_move == 3 and enemy_move == 1
    combat_text(player_text, enemy_a_text)
    player_hp = player_damage(player_hp)
  elsif player_move == enemy_move
    combat_text(player_text, enemy_a_text)
    puts "you tie and both of you take slight damage."
    player_hp = player_hp -1
    enemy_hp = enemy_hp -1
  elsif player_move > enemy_move
    combat_text(player_text, enemy_a_text)
    enemy_hp = monster_damage(enemy_hp)
  elsif player_move == 1 and enemy_move == 3
    combat_text(player_text, enemy_a_text)
    enemy_hp = monster_damage(enemy_hp)
  elsif enemy_move > player_move
    combat_text(player_text, enemy_a_text)
    player_hp = player_damage(player_hp)
  end
  " "
  puts "You have " + player_hp.to_s + " left."
  puts "The enemy has " + enemy_hp.to_s + " left."
end

if player_hp <= 0
  puts "You have died. You are now a ghost."
    return player_hp
elsif enemy_hp <=0
  puts "You have defeated the monster."
  return player_hp
end

end

#def add_room rooms, location
  # puts 'You\'re adding a room?'
  # puts 'What is it called?'
  # name = gets
  # puts 'What does it look like?'
  # descript = gets
  # room_cycle rooms, location
  # puts 'To which room does going north go to?'
  # north = gets.to_i
  # puts 'South?'
  # south = gets.to_i
  # puts 'East?'
  # east = gets.to_i
  # puts 'West?'
  # west = gets.to_i
  # rooms.push [name, descript, north, south, east, west]
# end

#def link rooms, location
  # puts "Where do you wish to modify? \nNORTH, SOUTH, EAST, WEST?"
  # link_edit = gets.upcase.strip
  # room_cycle rooms, location
  # puts 'Where do you want that direction to go?'
  # link_dest = gets.to_i
  # if link_edit == 'NORTH'
    # rooms[location][NORTH] = link_dest
  # elsif link_edit == 'SOUTH'
    # rooms[location][SOUTH] = link_dest
  # elsif link_edit == 'EAST'
    # rooms[location][EAST] = link_dest
  # elsif link_edit == 'WEST'
    # rooms[location][WEST] = link_dest
  # else

  # end
# end

#CODE ##############################################################################################################

#Failed attempt to establish descriptions for the rooms.
#front door = 'The door is made of hard oak.'
#living room = 'The clutter isn\'t as bad as gradma used to make.'

# can I put a variable in to a array inquiry?

#yaml_save rooms, filename
#read_array = yaml_load filename

puts 'Do you wish to play a game?'
puts 'Yes of course you do!'
location = 'frontdoor'
entry = gets.chomp.upcase
while entry != 'QUIT'
  puts ' '
  room_description rooms, location
  if location == 'office' or location == 'bathroom' or location == 'study'
    if player_is_alive? player_hp
      player_hp = battle (player_hp)
    end
  end
  puts 'Would you like to move NORTH, SOUTH, EAST, WEST ?' 
  puts 'Maybe you would just like to LOOK in a particular direction?'
  puts ' '
  entry = gets.chomp.upcase
  dir = entry
  if entry == 'NORTH' or entry == 'EAST' or entry == 'SOUTH' or entry == 'WEST'
    location = go rooms, location, dir

   elsif entry == 'LOOK WEST'
     looking rooms, location, 'WEST'
   elsif entry == 'LOOK NORTH'
     looking rooms, location, 'NORTH'
   elsif entry == 'LOOK SOUTH'
     looking rooms, location, 'SOUTH'
   elsif entry == 'LOOK EAST'
     looking rooms, location, 'EAST'

  #elsif entry == 'EDIT'
    #edit_description rooms, location
    #puts ' '
  # elsif entry == 'TELEPORT'
    # location = teleport rooms, location
  # elsif entry == 'ADD'
    # add_room rooms, location
  # elsif entry == 'SAVE'
    # yaml_save rooms, filename
  # elsif entry == 'SHOW'
    # puts rooms.to_yaml
  #elsif entry == 'LINK'
    # link rooms, location
  else
    puts 'Are you going NORTH, SOUTH, EAST, WEST or do you wish to QUIT or EDIT?'
  end
end

#William Karsten 224 715 8638
