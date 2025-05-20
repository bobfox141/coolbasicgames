#!/usr/bin/env ruby
# file: autorally.rb
# desc: conversion  to ruby from basic.
# In this auto rally you can choose both the car and the route. But the
# better the car, the more gas it eats; and the good routes are more
# dangerous. It's all lots of fun, but be careful.



carnames = [ "FreeRide", "Mini", "Lotus", "Trans-Am", "Ferrari" ]
coursenames = ["Freecourse", "StraightOn", "CurvyCanyon", "Window" ]
puts "The Car Rally"
puts "This is the Super Car Rally that all drivers in the world"
puts "wait for. The driving is tough this year and we all wish you"
puts "good luck!"
puts ""
puts "Choice of Cars:"
puts " Mini     [1]"
puts " Lotus    [2]"
puts " Trans-Am [3]"
puts " Ferrari  [4]"
puts ""
puts "Choose the car by the number after. Remember the"
puts "better the car, the more gas it uses."
while true
  print "Which car [1..4]: "
  car = gets.to_i()
  if car < 1 or car > 4
    puts "I don't have a car with that number."
  else
    break
  end
end
puts "You have chosen the #{carnames[car]}."
puts "You now choose the course you want to race on."
puts "The easiest course is number 1, and it is the straightest route. "
puts "Course 5 consists mostly of twists and turns."
while true
    print "Which course do you want to race [1..5]: "
    course = gets.to_i()
    if course < 1 or course > 5
      puts "I don't have a course with that number."
    else
      break
    end
end
puts "You have chosen to race the #{course}."
puts "You need to travel 5 miles with each .5 gallons of gas."
puts "Your status will shown for each 10 seconds after each status"
puts "check you will be asked for a new rate of gas flow. A rate is"
puts "[-10..10] where 1 is idle and 10 is hard acceleration, and"
puts "(-) numbers are braking."
# so it appears that the number of the car is matched the amount of
# control inputs and petrol it uses.
for i in 1..car do
  read h,m,s
  b=b/10
end




exit(true)
