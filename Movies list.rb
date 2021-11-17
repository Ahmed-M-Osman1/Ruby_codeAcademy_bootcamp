movies = {
  StarWars: 4.8, 
  Divergent: 4.7
  }

puts "What would you like to do? "

choice = gets.chomp

case choice
when "add"
  puts "What movie would you like to add? "
  title = gets.chomp
  if movies[title.to_sym].nil? 
    puts "What rating does the movie have? "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when "update"
  puts "What movie would you like to add? "
  title = gets.chomp
  if movies[title.to_sym].nil?
     puts "This is not existing move "
  else 
    puts "what rating does the movie have? "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts " new rating was add to #{title}. The new rating is #{movies[title.to_sym]}."
  end
when "display"
  movies.each do |movie,rate|
  puts "#{movie}: #{rate}" 
  end
when "delete"
  movies.each do |movie,rate|
  puts "#{movie}: #{rate}" 
  end
  puts "Which one to delete ?"
  toDelete = gets.chomp
  movies.delete(toDelete.to_sym)
  puts "#{toDelete} was deleted. The new list Is #{movies[title.to_s]}"
else
  puts "This is not correct commend!"
end
