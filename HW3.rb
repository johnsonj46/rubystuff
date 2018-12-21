require 'date'

class Appointment
	
	def initialize(description, date)
		@description = description
		@date = date
	end

	def description=(description)
		@description = description
	end

	def date=(date)
		@date = date
	end

	def description
		@description
	end

	def date
		@date
	end

end

class OneTime < Appointment
	def initialize(description, date)
		super(description, date)
	end


	def occursOn(comp)
		if self.date == comp
			out = "Your appointment: " + self.description.to_s + "is listed on, " + self.date.to_s 
			puts out

		else
			puts "this date was not included"

		end
	end

end

class Day < Appointment
	def initialize(description, date)
		super(description, date)
	end


	def occursOn(comp)
		if self.date == comp
			out = "Your appointment: " + self.description + "is listed on, " + self.date.to_s 
			puts out
		else
			puts "this date was not incuded"
		end
	end

end

class Month < Appointment
	def initialize(description, date)
		super(description, date)
	end


	def occursOn(comp)
		if self.date == comp 
			out = "Your appointment: " + self.description + "is listed on, " + self.date.to_s 
			puts out

		else
			puts "this date was not included"
		end
	end

end

def seed

end

def test
	d = Date.new(2017, 1, 1)
	d1 = OneTime.new("root canal", d)
	d2 = Month.new("cleaning", 5)
	d3 = Day.new("visit", 1)
	pkg = [d1, d2, d3]


	pkg.each do |typ|
		puts "please select validation option: "
		puts "1. One Time, 2. Month, 3. Day"
		usr = gets.chomp.to_i
		if usr == 1
			puts "Please enter validation date: "
			puts "Enter Year:"
			year = gets.chomp
			puts "Enter Month:"
			month = gets.chomp
			puts "Enter day:"
			day = gets.chomp

			pkg = Date.new(year.to_i, month.to_i, day.to_i)
			puts typ.occursOn(pkg)
		

		elsif usr == 2
			puts "Please enter validation date: "
			puts "Enter Month:"
			month = gets.chomp

			pkg = month
			puts typ.occursOn(pkg.to_i)

		else
			puts "Please enter validation day: "
			day = gets.chomp

			pkg = day
			puts typ.occursOn(pkg.to_i)

		end

	end
end

test






