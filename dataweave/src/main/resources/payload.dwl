%dw 2.0
output application/xml
---
flights: {(payload..*return map (value,index)-> {
	flight : value
	}
)}