require 'date'

class Problem

  Week_data = {:Mon => 00,:Tue => 24,:Wed => 48, :Thu => 72,:Fri => 96,:Sat => 120,:Sun => 144}
  Given_data = {
  	18..20 => "Mon 1800-2000",
  	120..168 => "Sat-Sun",
  	[8..17, 32..41, 56..65, 80..89, 104..113] => "Mon-Fri 0800-1700",
  	[6..7, 30..31, 54..55, 78..79, 102..103, 126..127, 150..151] => "Mon-Sun 0600-0700",
  	[115..118,139..142] => "Fri-Sat 1900-2200" 
  }
   
  def check_time(input)
    output = []
    day = DateTime.parse(input).strftime("%a") 
    time =  DateTime.parse(input).strftime("%H")
    formatted_data = Week_data[day.to_sym] + time.to_i
    Given_data.each do |i,j|
      if i.is_a?(Range)
        output << j if i.include?(formatted_data)
      else
        i.each {|i| output << j if i.include?(formatted_data)}
      end
    end
    puts output.inspect
  end

end

sample = Problem.new
sample.check_time('2015-06-29 11:58:47')
sample.check_time('2015-06-27 06:20:07')
sample.check_time('2015-05-07 20:10:40')


