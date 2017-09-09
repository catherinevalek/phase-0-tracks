require 'sqlite3'

#creates database
db = SQLite3::Database.new("birthday_tracker.db")

#creates a table of friends and their birthdays
create_friend_table = <<-SQL 
  CREATE TABLE IF NOT EXISTS friends(
    id INTEGER PRIMARY KEY,
    friend_name VARCHAR(255),
    age INT,
    birth_month INT,
    birth_day INT,
    likes_birthdays BOOLEAN
    )
SQL

#creates a table for friends' interests
create_interest_table = <<-SQL 
  CREATE TABLE IF NOT EXISTS interests(
    id INTEGER PRIMARY KEY,
    interest VARCHAR(255)
    )
SQL

#creates a join table that joins a friends to interests
create_friends_interests_table = <<-SQL 
  CREATE TABLE IF NOT EXISTS friends_interests(
    friend_id INT,
    interest_id INT, 
    FOREIGN KEY (friend_id) REFERENCES friends(id), FOREIGN KEY (interest_id) REFERENCES interests(id)
    )
SQL

#checks if the interests table is empty
check_table = <<-SQL
  SELECT count(*) FROM interests 
SQL

#creates the tables in the database
db.execute(create_friend_table)
db.execute(create_interest_table)
db.execute(create_friends_interests_table)


#method that adds an interest to interest_db database
def add_interest(db, interest)
  db.execute("INSERT INTO interests (interest) VALUES (?)", [interest])
end

#method that adds a friend to friend_db database
def add_friend(db, friend_name, age, birth_month, birth_day, likes_birthdays)
  db.execute("INSERT INTO friends (friend_name, age, birth_month, birth_day, likes_birthdays) VALUES (?, ?, ?, ?, ?)", [friend_name, age, birth_month, birth_day, likes_birthdays])
end

#method that joins a friend to their interest in the join table
def add_friend_interest(db, friend_id, interest_id)
    db.execute("INSERT INTO friends_interests (friend_id, interest_id) VALUES (?, ?)", [friend_id, interest_id])
end

#method that returns the id of the name specied from the friends table
def find_friend_id(db, friend_name)
  friend_id = db.execute("SELECT friends.id FROM friends WHERE friend_name='#{friend_name}'")
  friend_id[0][0]
end

#method that returns the id of the interest specied from the interests table
def find_interest_id(db, interest_name)
  interest_id = db.execute("SELECT interests.id FROM interests WHERE interest='#{interest_name}'")
  interest_id[0][0]
end

#method that returns an array of all the interests of a friend
def find_interests_array(db, friend_name)
  friend_interests = db.execute("SELECT interests.interest FROM friends join friends_interests on friends.id=friends_interests.friend_id join interests on interests.id=friends_interests.interest_id where friend_name='#{friend_name}'")
end

#populates interest table
interest_list = ["art", "sports", "literature", "the outdoors", "movies", "video games", "traveling", "crafting", "music", "fitness"]

interest_row_count = db.execute(check_table)[0][0]
if interest_row_count == 0
  interest_list.each do |interest|
    add_interest(db, interest)
  end
end

#asks user for details about a friend and adds them to friends table
loop do 
  puts "What's your friend's name? Type 'quit' to escape."
  friend_name = gets.chomp
  break if friend_name == "quit"
  puts "What's your friend's age?"
  age = gets.chomp
  puts "What's your friend's birth month (MM)?"
  month = gets.chomp
  puts "What's your friend's birth day (DD)?"
  day = gets.chomp
  puts "Does your friend like birthdays? Y/N"
  answer = gets.chomp
  likes_birthdays = answer == "Y"
  likes_birthdays = likes_birthdays.to_s

  add_friend(db, friend_name, age, month, day, likes_birthdays)
  #asks user for friend's interests and adds them to the interest table
  loop do 
    puts "What is your friend interested in? Type 'quit' to escape."
    interest = gets.chomp
    break if interest == "quit"
    if interest_list.include? interest
      add_friend_interest(db, find_friend_id(db, friend_name), find_interest_id(db, interest))
    else
      puts "Please enter a valid interest."
    end
  end
end

#prints all friends' information and interests
all_friends = db.execute("SELECT * FROM friends")
all_friends.each do |friend|
  puts "***************************************"
  puts "#{friend[1]} is #{friend[2]}. #{friend[1]}'s birthday is on #{friend[3]}/#{friend[4]}."
  puts "Some of #{friend[1]}'s interests include:"
  find_interests_array(db, friend[1]).each do |interest|  
    puts interest
  end
  puts 
end

