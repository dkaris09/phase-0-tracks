kennedy_expressway = {
	#Lists red_car model as key-value of red_car hash
	#car info as nested hash
	#passengers as nested array
	red_car: {
		car_model: "Camry",
		car_info: {
			total_seats: 5,
			seats_taken: 4,
		},
		passengers: ["Bill", "Betsy", "Bruce", "Blake"],
	},
	#Lists blue_car model as key-value of blue_car hash,
	#car info as nested hash 
	#passengers as nested array
	blue_car: {
		car_model: "Focus",
		car_info: {
			total_seats: 4,
			seats_taken: 2,
		},
		passengers: ["Chris", "Chloe"],
	},
	#Lists gray_truck model as key-value of gray_truck hash, 
	#truck info as nested hash, 
	#passengers as nested array.
	gray_truck: {
		truck_model: "F-150",
		truck_info: {
			total_seats: 2,
			seats_taken: 1,
		},
		passengers: ["Tim"],
	}
}

kennedy_expressway[:gray_truck][:passengers].push("Taylor")
kennedy_expressway[:red_car][:passengers].each{|x| puts "#{x} is enjoying the ride!"}


