
# Write a Ruby program that uses persistent data 
# to make your life better, or makes someone else's 
# life better. Find several opportunities to try 
# something not explicitly shown in the video. Can 
# users create data? Retrieve it? Manipulate it? 
# It's up to you. Push yourself, and decide with 
# integrity when you are finished. Note that you do 
# not need to use classes in this assignment -- 
# keeping a class instance and a database row in 
# sync is a lot of work, so that might be too much 
# to tackle.

require 'sqlite3'
require 'faker'

#create databases
friend_db = SQLite3::Database.new("birthday_tracker.db")
interest_db = SQLite3::Database.new("birthday_tracker.db")
friends_interests_db = SQLite3::Database.new("birthday_tracker.db")

#create a table of friends and their birthdays
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

#create a table for friends' interests
create_interest_table = <<-SQL 
  CREATE TABLE IF NOT EXISTS interests(
    id INT PRIMARY KEY,
    interest VARCHAR(255)
    )
SQL

#create a join table to link a people to interests
create_friends_interests_table = <<-SQL 
  CREATE TABLE IF NOT EXISTS friends_interests(
    friend_id INT,
    interest_id INT
    )
SQL

friend_db.execute(create_friend_table)
interest_db.execute(create_interest_table)
friends_interests_db.execute(create_friends_interests_table)


def add_friend(db, friend_name, age, birth_month, birth_day, likes_birthdays)
  db.execute("INSERT INTO friends (friend_name, age, birth_month, birth_day, likes_birthdays) VALUES (?, ?, ?, ?, ?)", [friend_name, age, birth_month, birth_day, likes_birthdays])
end

def add_interest(db, interest)
  db.execute("INSERT INTO interests (interest) VALUES (?, ?)", [interest])
end



loop do 
  puts "What's your friend's name?"
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

  add_friend(friend_db, friend_name, age, month, day, likes_birthdays)
end





