  # Mon 1800-2000
  # Sat-Sun          
  # Mon-Fri 0800-1700
  # Mon-Sun 0600-0700
  # Fri-Sat 1900-2200

require 'date'
output = []
@week_data = {:Mon => 0000,:Tue => 2400,:Wed => 4800, :Thu => 7200,:Fri => 9600,:Sat => 12000,:Sun => 14400}

data = {
	1800..2000 => "Mon 1800-2000",
	12000..14400 => "Sat-Sun",
	800..11300 => "Mon-Fri 0800-1700",
	600..15100 => "Mon-Sun 0600-0700",
	11500..14200 => "Fri-Sat 1900-2200" 
}
 
  def check_time(input)
  	day = DateTime.parse(input).strftime("%a") 
  	time =  DateTime.parse(input).strftime("%H00")
  	#puts day
  	#puts time
  	puts @week_data[day.to_sym]
    @week_data[day.to_sym] + time.to_i
  end

  puts "Enter the time"
  input = gets.chomp
  formatted_data = check_time(input)
  #puts formatted_data
  data.each {|i,j|  output << j if i.include?(formatted_data) }
  puts output.inspect
  


