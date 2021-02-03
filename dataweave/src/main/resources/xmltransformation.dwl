%dw 2.0
output application/xml
---
flights: {(payload map (value,index)-> flight:{
	ID : value.ID+1,
	flightCode : value.code,
	Price : value.price,
	DateOfDepature : value.departureDate
	}
	)}