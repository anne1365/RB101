=begin
PROBLEM:
The time of day can be represented as the number of
minutes before or after midnight. If the number of minutes
is positive, the time is after midnight. If the number of
minutes is negative, the time is before midnight.
Write a method that takes a time using this minute-based
format and returns the time of day in 24 hour format (hh:mm).
Your method should work with any integer input.
You may not use ruby's Date and Time classes.

UNDERSTANDING THE PROBLEM:
  INPUTS  --> integer, positive or negative
  OUTPUTS --> time formatted hh:mm (24 hour clock)
  QUESTIONS:
    - Would the format method help us format this output correctly?
    - Is there a method that would allow us to add times the way
      we need to to produce a time?
    - What happens if the inputted integer is large enough to carry over
      into a separate day?
    - How should the method cope with non-integer inputs?
  RULES:
    EXPLICIT:
      - integer input represents minutes before/after midnight
      - positive integer means minutes after midnight
      - negative integer means minutes before midnight
      - method should work with any integer input
      - can't use date or time classes

    IMPLICIT:
      - output is a string
      - if input is greater than 1440 (24 hours), we roll over into the
        next/previous day
      - 

EXAMPLES / TEST CASES:
  time_of_day(0) == "00:00"
  time_of_day(-3) == "23:57"
  time_of_day(35) == "00:35"
  time_of_day(-1437) == "00:03"
  time_of_day(3000) == "02:00"
  time_of_day(800) == "13:20"
  time_of_day(-4231) == "01:29" 

DATA STRUCTURE: 
  INPUTS  --> INTEGER, pos or neg, that represents minutes before/after midnight
  OUTPUTS --> STRING representing time, in 24 hour hh:mm format

=end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def time_of_day(minutes_before_midnight)
    leftover_minutes = minutes_before_midnight % MINUTES_PER_HOUR
    hours_from_midnight = ((minutes_before_midnight - leftover_minutes) / MINUTES_PER_HOUR) % HOURS_PER_DAY

    time = ("%02d" % hours_from_midnight).to_s + ':' + ("%02d" % leftover_minutes).to_s
end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29" 

=begin
LS SOLUTION

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_DAY * HOURS_PER_DAY           <-- constants minimize # of mystery numbers

def time_of_day(delta_minutes)
  delta_minutes = delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)                       <-- produces 2-digit number w leading 0s as needed
end
=end

def before_midnight(string_time)
  hours = string_time.scan(/\d/).first(2).join.to_i
  minutes = string_time.scan(/\d/).last(2).join.to_i
  minutes_before_midnight = MINUTES_PER_DAY - ((hours * MINUTES_PER_HOUR) + minutes)
  minutes_before_midnight = 0 if minutes_before_midnight == MINUTES_PER_DAY
  minutes_before_midnight

end

def after_midnight(string_time)
  hours = string_time.scan(/\d/).first(2).join.to_i
  minutes = string_time.scan(/\d/).last(2).join.to_i
  minutes_before_midnight = (hours * MINUTES_PER_HOUR) + minutes
  minutes_before_midnight = 0 if minutes_before_midnight == MINUTES_PER_DAY
  minutes_before_midnight
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0