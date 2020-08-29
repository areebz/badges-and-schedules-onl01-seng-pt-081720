
def badge_maker(name)
   return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
   array = []

   attendees.each { |name| array << badge_maker(name) }
   array
end

def assign_rooms(attendees)
   array = []
   #each_with_index: keep track of the index number of the current iteration
   attendees.each_with_index do |name, index|
      array << "Hello, #{name}! You'll be assigned to room #{index+1}!" 
   end
   array
end

def printer(attendees)
#print the name of each index in the array
   batch_badge_creator(attendees).each { |names| puts names }
   assign_rooms(attendees).each { |room| puts room }
end