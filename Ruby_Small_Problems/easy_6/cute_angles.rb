=begin
PROBLEM:
Write a method that takes a floating point number that represents an angle
between 0 and 360 degrees and returns a String that represents that angle
in degrees, minutes and seconds. You should use a degree symbol (°) to
represent degrees, a single quote (') to represent minutes, and a double
quote (") to represent seconds. A degree has 60 minutes, while a minute
has 60 seconds
Note: your results may differ slightly depending on how you round values,
but should be within a second or two of the results shown.
You should use two digit numbers with leading zeros when formatting the
minutes and seconds, e.g., 321°03'07".

INPUT: float number
OUTPUT: formatted degree number including minutes and seconds

IDEAS: format method, string interpolation
ALGORITHM: 
- obtain minutes & seconds: in the case of 76.73, we multiply 0.73 by 60
  to get the minutes, 43.8, and then we multiply the 0.8 by 60 to get 48 seconds
  so we get 76 degrees, 43 minutes, and 48 seconds
- now we need to find a concise way to store these values for formatting, and
  find how to format them correctly
=end

# DEGREE = "\xC2\xB0"

# def dms(num)
#   degrees = num.to_i
#   minutes = ((num - degrees) * 60).to_i
#   seconds = ((((num - degrees) * 60) - minutes) * 60).to_i
#   p format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end






DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(x)
  p total_seconds = (x * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  p degrees
  p remaining_seconds
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  p minutes
  p seconds
  p format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

