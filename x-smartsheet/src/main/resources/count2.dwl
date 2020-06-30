%dw 2.0
output application/json


var Rejections= sizeOf(payload.rows filter(not $.cells[25].value == null ) filter((daysBetween(
    $.cells[9].value , now() as DateTime )  < 7) and ($.cells[1].value=="ECN Rejection")  ))
    
var Rejections_HSV=sizeOf(payload.rows filter(not $.cells[25].value == null ) filter((daysBetween(
    $.cells[9].value , now() as DateTime )  < 7) and ($.cells[1].value=="ECN Rejection") and ($.cells[10].value=="Huntsville") )) 
    
var Rejections_TOW=sizeOf(payload.rows filter(not $.cells[25].value == null ) filter((daysBetween(
    $.cells[9].value , now() as DateTime )  < 7) and ($.cells[1].value=="ECN Rejection") and ($.cells[10].value=="Towcester") )) 
    
 var   Rejections_GOL=sizeOf(payload.rows  filter(not $.cells[25].value == null ) filter((daysBetween(
    $.cells[9].value , now() as DateTime )  < 7) and ($.cells[1].value=="ECN Rejection") and ($.cells[10].value=="Goleta") )) 
    
 var   Rejections_AUS=sizeOf(payload.rows filter(not $.cells[25].value == null ) filter((daysBetween(
    $.cells[9].value , now() as DateTime )  < 7) and ($.cells[1].value=="ECN Rejection") and ($.cells[10].value=="Austin") )) 
    

---

{
	'Rejections':Rejections,
	'Rejections_HSV':Rejections_HSV,
	'Rejections_TOW':Rejections_TOW,
	'Rejections_GOL':Rejections_GOL,
	'Rejections_AUS':Rejections_AUS
	
	
}