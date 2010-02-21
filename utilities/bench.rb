#!/usr/bin/env ruby

file = ARGV.shift

reps = ARGV.shift.to_i
reps = 100_000 unless reps && reps > 0

width = ARGV.shift.to_i
width = 70 unless width && width != 0

unless file
  puts 'Filename required'
  puts
  puts 'Usage:   utilities/bench.rb <script> [repetitions] [bar_width]'
  puts
  puts 'Example: utilities/bench.rb 1/danopia.rb'
  puts '         utilities/bench.rb 25/baddog.rb 1,000,000'
  puts '         utilities/bench.rb 3/duckinator.rb 25000'
  puts '         utilities/bench.rb 3/duckinator.rb 12,500 100'
  puts
  puts 'Repetitions default to 100,000.'
  puts
  puts 'A bar width of -1 reverts to a simplistic bench with minimal junk in'
  puts 'the repetitions loop.'
  puts
  puts 'Only ruby files will work, as this script attempts to parse the provided'
  puts 'scripts into a function and use that to remove any extra time reading,'
  puts 'loading, and parsing files.'
  puts
  puts 'This library will not be very friendly to anything that uses its own'
  puts 'methods, functions, classes, etc.'
  
  exit
end

puts "Script: #{file}"

code = File.read(file)
eval "def go; #{code}; end"

if width < 0
  old_out = $stdout
  $stdout = File.open('/dev/null', 'w')
  
  start = Time.now
  reps.times {go}
  fin = Time.now
  total = fin - start
  
  $stdout.close
  $stdout = old_out
else

  step_size = (reps/width).to_i

  total = 0
  buffered = 0
  old_out = $stdout
  $stdout = File.open('/dev/null', 'w')

  main_start = Time.now

  reps.times do |rep|
    #start = Time.now
    go
    #fin = Time.now
    #total += (fin - start)
    
    buffered += 1
    if buffered > step_size
      buffered = 0
      old_out.print "\rRunning... [#{('='*((rep.to_f/reps)*width)+'>').ljust(width,' ')}]"
      old_out.flush
    end
  end

  total = Time.now - main_start

  $stdout.close
  $stdout = old_out

  puts
end
#puts "Real run-time: #{main_start - Time.now}"
puts "Total time:   #{total}"
puts "Repetitions:  #{reps}"
puts "Time per rep: #{total/reps}"
