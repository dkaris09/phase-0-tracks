school = {
	classroom: {
		math: ["texbook","algebra", "geometry"],
		
		history: ["American", "European", "East-Asian"]
		
	},
	
	cafeteria: ["hot lunch", "cold lunch", "lunch ladies"],
}

p school[:classroom][:math][0]
p school[:cafeteria][2]