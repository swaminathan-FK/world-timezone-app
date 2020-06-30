%dw 2.0
output application/json
import * from dw::core::Objects
var SNDO_HSV=sizeOf(payload.rows filter(($.cells[2].value=="SNDO")and  ($.cells[38].value=="Huntsville") ))

var date = now() as Date

var Log_Date = if(now().dayOfWeek == 5) now() as Date else ""

var SNDO_TOW=sizeOf(payload.rows filter(($.cells[2].value=="SNDO")and  ($.cells[38].value=="Towcester") ))

var SNDO = sizeOf(payload.rows filter(($.cells[2].value=="SNDO")) )
  
var SNDO_AUS=sizeOf(payload.rows filter(($.cells[2].value=="SNDO")and  ($.cells[38].value=="Austin") ))  

var SNDO_GOL=sizeOf(payload.rows filter(($.cells[2].value=="SNDO")and  ($.cells[38].value=="Goleta") ))  

var RQAP=sizeOf(payload.rows filter(($.cells[2].value=="RQAP")) )  

var RQAP_HSV=sizeOf(payload.rows filter(($.cells[2].value=="RQAP")and  ($.cells[38].value=="Huntsville") )) 
 
var RQAP_TOW=sizeOf(payload.rows filter(($.cells[2].value=="RQAP")and  ($.cells[38].value=="Towcester") ))  

var RQAP_GOL=sizeOf(payload.rows filter(($.cells[2].value=="RQAP")and  ($.cells[38].value=="Goleta") )) 
 
var RQAP_AUS=sizeOf(payload.rows filter(($.cells[2].value=="RQAP")and  ($.cells[38].value=="Austin") ))  

var DOAP=sizeOf(payload.rows filter(($.cells[2].value=="DOAP")) )  

var DOAP_HSV=sizeOf(payload.rows filter(($.cells[2].value=="DOAP")and  ($.cells[38].value=="Huntsville") ))  

var DOAP_TOW=sizeOf(payload.rows filter(($.cells[2].value=="DOAP")and  ($.cells[38].value=="Towcester") ))  

var DOAP_GOL=sizeOf(payload.rows filter(($.cells[2].value=="DOAP")and  ($.cells[38].value=="Goleta") ))  

var DOAP_AUS=sizeOf(payload.rows filter(($.cells[2].value=="DOAP")and  ($.cells[38].value=="Austin") ))  

var Appr=sizeOf(payload.rows filter(($.cells[2].value=="Appr") )) 

var Appr_HSV=sizeOf(payload.rows filter(($.cells[2].value=="Appr")and ($.cells[38].value=="Huntsville") )) 
 
var Appr_TOW=sizeOf(payload.rows filter(($.cells[2].value=="Appr")and ($.cells[38].value=="Towcester") )) 
 
var Appr_GOL=sizeOf(payload.rows filter(($.cells[2].value=="Appr")and  ($.cells[38].value=="Goleta") ))  

var Appr_AUS=sizeOf(payload.rows filter(($.cells[2].value=="Appr")and  ($.cells[38].value=="Austin") )) 
 
var BOMW=sizeOf(payload.rows filter(($.cells[2].value=="BOMW") )) 

 
var BOMW_HSV=sizeOf(payload.rows filter(($.cells[2].value=="BOMW")and ($.cells[38].value=="Huntsville") ))  

var BOMW_TOW=sizeOf(payload.rows filter(($.cells[2].value=="BOMW")and ($.cells[38].value=="Towcester") )) 
 
var BOMW_GOL= sizeOf(payload.rows filter(($.cells[2].value=="BOMW")and ($.cells[38].value=="Goleta") ))

var BOMW_AUS=sizeOf(payload.rows filter(($.cells[2].value=="BOMW")and ($.cells[38].value=="Austin") )) 
 
var BOMU=sizeOf(payload.rows filter(($.cells[2].value=="BOMU") ))  

var BOMU_HSV=sizeOf(payload.rows filter(($.cells[2].value=="BOMU")and ($.cells[38].value=="Huntsville") ))  

var BOMU_TOW=sizeOf(payload.rows filter(($.cells[2].value=="BOMU")and ($.cells[38].value=="Towcester") )) 
 
var BOMU_GOL=sizeOf(payload.rows filter(($.cells[2].value=="BOMU")and ($.cells[38].value=="Goleta") ))  

var BOMU_AUS=sizeOf(payload.rows filter(($.cells[2].value=="BOMU")and ($.cells[38].value=="Austin") )) 
 
var BOMO=sizeOf(payload.rows filter(($.cells[2].value=="BOMO"))) 
 
var BOMO_HSV=sizeOf(payload.rows filter(($.cells[2].value=="BOMO")and ($.cells[38].value=="Huntsville") ))  

var BOMO_TOW=sizeOf(payload.rows filter(($.cells[2].value=="BOMO")and ($.cells[38].value=="Towcester") )) 
 
var BOMO_GOL=sizeOf(payload.rows filter(($.cells[2].value=="BOMO")and ($.cells[38].value=="Goleta") )) 
 
var BOMO_AUS=sizeOf(payload.rows filter(($.cells[2].value=="BOMO")and ($.cells[38].value=="Austin") )) 
 
var ROTU=sizeOf(payload.rows filter(($.cells[2].value=="ROTU") ))  

var ROTU_HSV=sizeOf(payload.rows filter(($.cells[2].value=="ROTU")and ($.cells[38].value=="Huntsville") ))  

var ROTU_TOW=sizeOf(payload.rows filter(($.cells[2].value=="ROTU")and ($.cells[38].value=="Towcester") )) 
 
var ROTU_GOL=sizeOf(payload.rows filter(($.cells[2].value=="ROTU")and ($.cells[38].value=="Goleta") )) 
 
var ROTU_AUS=sizeOf(payload.rows filter(($.cells[2].value=="ROTU")and ($.cells[38].value=="Austin") ))
  
var MMRU=sizeOf(payload.rows filter(($.cells[2].value=="MMRU") )) 
 
var MMRU_HSV=sizeOf(payload.rows filter(($.cells[2].value=="MMRU")and ($.cells[38].value=="Huntsville") ))
  
var MMRU_TOW=sizeOf(payload.rows filter(($.cells[2].value=="MMRU")and ($.cells[38].value=="Towcester") )) 
 
var MMRU_GOL=sizeOf(payload.rows filter(($.cells[2].value=="MMRU")and ($.cells[38].value=="Goleta") )) 
 
var MMRU_AUS=sizeOf(payload.rows filter(($.cells[2].value=="MMRU")and ($.cells[38].value=="Austin") )) 
 
var Rel=sizeOf(payload.rows filter(($.cells[2].value=="REL") ))  

var Rel_HSV=sizeOf(payload.rows filter(($.cells[2].value=="REL")and ($.cells[38].value=="Huntsville") )) 
 
var Rel_TOW=sizeOf(payload.rows filter(($.cells[2].value=="REL")and ($.cells[38].value=="Towcester") ))  

var Rel_GOL=sizeOf(payload.rows filter(($.cells[2].value=="REL")and ($.cells[38].value=="Goleta") ))  

var Rel_AUS=sizeOf(payload.rows filter(($.cells[2].value=="REL")and ($.cells[38].value=="Austin") ))  

var MRPU=sizeOf(payload.rows filter(($.cells[2].value=="MRPU") ))  

var MRPU_HSV=sizeOf(payload.rows filter(($.cells[2].value=="MRPU")and ($.cells[38].value=="Huntsville") )) 
 
var MRPU_TOW=sizeOf(payload.rows filter(($.cells[2].value=="MRPU")and ($.cells[38].value=="Towcester") ))  

var MRPU_GOL=sizeOf(payload.rows filter(($.cells[2].value=="MRPU")and ($.cells[38].value=="Goleta") ))  

var MRPU_AUS=sizeOf(payload.rows filter(($.cells[2].value=="MRPU")and ($.cells[38].value=="Austin") ))  

var PRDU=sizeOf(payload.rows filter(($.cells[2].value=="PRDU") )) 
 
var PRDU_HSV=sizeOf(payload.rows filter(($.cells[2].value=="PRDU")and ($.cells[38].value=="Huntsville") )) 
 
var PRDU_TOW=sizeOf(payload.rows filter(($.cells[2].value=="PRDU")and ($.cells[38].value=="Towcester") ))
  
var PRDU_GOL=sizeOf(payload.rows filter(($.cells[2].value=="PRDU")and ($.cells[38].value=="Goleta") )) 
 
var PRDU_AUS=sizeOf(payload.rows filter(($.cells[2].value=="PRDU")and ($.cells[38].value=="Austin") )) 
 
var CLSD=sizeOf(payload.rows filter(($.cells[2].value=="CLSD") ))
 
var CRTD=sizeOf(payload.rows filter(($.cells[2].value=="CRTD") )) 
 
var CRTD_HSV=sizeOf(payload.rows filter(($.cells[2].value=="CRTD")and ($.cells[38].value=="Huntsville") )) 

var CRTD_TOW=sizeOf(payload.rows filter(($.cells[2].value=="CRTD")and ($.cells[38].value=="Towcester") )) 
 
var CRTD_GOL=sizeOf(payload.rows filter(($.cells[2].value=="CRTD")and ($.cells[38].value=="Goleta") ))  

var CRTD_AUS=sizeOf(payload.rows filter(($.cells[2].value=="CRTD")and ($.cells[38].value=="Austin") )) 

var REL_LW= sizeOf(payload.rows filter(not $.cells[25].value == null ) filter((daysBetween($.cells[25].value as Date, now() as Date  )  < 7) and ($.cells[2].value=="REL") ))
 
var REL_LW_HSV=sizeOf(payload.rows filter(not $.cells[25].value == null ) filter((daysBetween($.cells[25].value as Date, now() as Date  )  < 7) and ($.cells[2].value=="REL")and($.cells[38].value=="Huntsville") ))
 
 var REL_LW_TOW=sizeOf(payload.rows filter(not $.cells[25].value == null ) filter((daysBetween($.cells[25].value as Date, now() as Date  )  < 7) and ($.cells[2].value=="REL")and($.cells[38].value=="Towcester") ))
 
 var REL_LW_GOL=sizeOf(payload.rows filter(not $.cells[25].value == null ) filter((daysBetween($.cells[25].value as Date, now() as Date  )  < 7) and ($.cells[2].value=="REL")and($.cells[38].value=="Goleta") ))
 
 var REL_LW_AUS=sizeOf(payload.rows filter(not $.cells[25].value == null ) filter((daysBetween($.cells[25].value as Date, now() as Date  )  < 7) and ($.cells[2].value=="REL")and($.cells[38].value=="Austin") ))
 
var SNDO_LW=sizeOf(payload.rows filter(not $.cells[26].value == null ) filter((daysBetween($.cells[26].value as Date, now() as Date  )  < 7) and ($.cells[2].value=="SNDO") ))
 
 var SNDO_LW_HSV=sizeOf(payload.rows filter(not $.cells[26].value == null ) filter((daysBetween($.cells[26].value as Date, now() as Date  )  < 7) and ($.cells[2].value=="SNDO") and ($.cells[38].value=="Huntsville") ))
 
 var SNDO_LW_TOW=sizeOf(payload.rows filter(not $.cells[26].value == null ) filter((daysBetween($.cells[26].value as Date, now() as Date  )  < 7) and ($.cells[2].value=="SNDO") and ($.cells[38].value=="Towcester") ))
 
 
 var SNDO_LW_GOL=sizeOf(payload.rows filter(not $.cells[26].value == null ) filter((daysBetween($.cells[26].value as Date, now() as Date  )  < 7) and ($.cells[2].value=="SNDO") and ($.cells[38].value=="Goleta") ))
 
 var SNDO_LW_AUS=sizeOf(payload.rows filter(not $.cells[26].value == null ) filter((daysBetween($.cells[26].value as Date, now() as Date  )  < 7) and ($.cells[2].value=="SNDO") and ($.cells[38].value=="Austin") ))
 
 var Customer_Approval=sizeOf(payload.rows filter(($.cells[11].value == true) and (($.cells[2].value=="SNDO") or ($.cells[2].value=="RQAP") or ($.cells[2].value=="DOAP") or ($.cells[2].value=="Appr") or ($.cells[2].value=="BOMW") or ($.cells[2].value=="BOMU") or ($.cells[2].value=="BOMO") or ($.cells[2].value=="ROTU") or ($.cells[2].value=="MMRU") ) ))

var Customer_Approval_HSV=sizeOf(payload.rows filter(($.cells[11].value == true) and (($.cells[2].value=="SNDO") or ($.cells[2].value=="RQAP") or ($.cells[2].value=="DOAP") or ($.cells[2].value=="Appr") or ($.cells[2].value=="BOMW") or ($.cells[2].value=="BOMU") or ($.cells[2].value=="BOMO") or ($.cells[2].value=="ROTU") or ($.cells[2].value=="MMRU") ) and ($.cells[38].value=="Huntsville")))

var Customer_Approval_TOW=sizeOf(payload.rows filter(($.cells[11].value == true) and (($.cells[2].value=="SNDO") or ($.cells[2].value=="RQAP") or ($.cells[2].value=="DOAP") or ($.cells[2].value=="Appr") or ($.cells[2].value=="BOMW") or ($.cells[2].value=="BOMU") or ($.cells[2].value=="BOMO") or ($.cells[2].value=="ROTU") or ($.cells[2].value=="MMRU") ) and ($.cells[38].value=="Towcester")))

var Customer_Approval_GOL=sizeOf(payload.rows filter(($.cells[11].value == true) and (($.cells[2].value=="SNDO") or ($.cells[2].value=="RQAP") or ($.cells[2].value=="DOAP") or ($.cells[2].value=="Appr") or ($.cells[2].value=="BOMW") or ($.cells[2].value=="BOMU") or ($.cells[2].value=="BOMO") or ($.cells[2].value=="ROTU") or ($.cells[2].value=="MMRU") ) and ($.cells[38].value=="Goleta")))

var Customer_Approval_AUS=sizeOf(payload.rows filter(($.cells[11].value == true) and (($.cells[2].value=="SNDO") or ($.cells[2].value=="RQAP") or ($.cells[2].value=="DOAP") or ($.cells[2].value=="Appr") or ($.cells[2].value=="BOMW") or ($.cells[2].value=="BOMU") or ($.cells[2].value=="BOMO") or ($.cells[2].value=="ROTU") or ($.cells[2].value=="MMRU") ) and ($.cells[38].value=="Austin")))

var ECN_Sales_Orders=sizeOf(payload.rows filter(($.cells[10].value == "Sales") and (($.cells[2].value=="SNDO") or ($.cells[2].value=="RQAP") or ($.cells[2].value=="DOAP") or ($.cells[2].value=="Appr") or ($.cells[2].value=="BOMW") or ($.cells[2].value=="BOMU") or ($.cells[2].value=="BOMO") or ($.cells[2].value=="ROTU") or ($.cells[2].value=="MMRU") ) ))

var ECN_Sales_Orders_HSV=sizeOf(payload.rows filter(($.cells[10].value == "Sales") and (($.cells[2].value=="SNDO") or ($.cells[2].value=="RQAP") or ($.cells[2].value=="DOAP") or ($.cells[2].value=="Appr") or ($.cells[2].value=="BOMW") or ($.cells[2].value=="BOMU") or ($.cells[2].value=="BOMO") or ($.cells[2].value=="ROTU") or ($.cells[2].value=="MMRU"))and ($.cells[38].value=="Huntsville") ))

var ECN_Sales_Orders_TOW=sizeOf(payload.rows filter(($.cells[10].value == "Sales") and (($.cells[2].value=="SNDO") or ($.cells[2].value=="RQAP") or ($.cells[2].value=="DOAP") or ($.cells[2].value=="Appr") or ($.cells[2].value=="BOMW") or ($.cells[2].value=="BOMU") or ($.cells[2].value=="BOMO") or ($.cells[2].value=="ROTU") or ($.cells[2].value=="MMRU"))and ($.cells[38].value=="Towcester") ))

var ECN_Sales_Orders_GOL=sizeOf(payload.rows filter(($.cells[10].value == "Sales") and (($.cells[2].value=="SNDO") or ($.cells[2].value=="RQAP") or ($.cells[2].value=="DOAP") or ($.cells[2].value=="Appr") or ($.cells[2].value=="BOMW") or ($.cells[2].value=="BOMU") or ($.cells[2].value=="BOMO") or ($.cells[2].value=="ROTU") or ($.cells[2].value=="MMRU"))and ($.cells[38].value=="Goleta") ))

var ECN_Sales_Orders_AUS=sizeOf(payload.rows filter(($.cells[10].value == "Sales") and (($.cells[2].value=="SNDO") or ($.cells[2].value=="RQAP") or ($.cells[2].value=="DOAP") or ($.cells[2].value=="Appr") or ($.cells[2].value=="BOMW") or ($.cells[2].value=="BOMU") or ($.cells[2].value=="BOMO") or ($.cells[2].value=="ROTU") or ($.cells[2].value=="MMRU"))and ($.cells[38].value=="Austin") ))

var Pending_over_10=sizeOf(payload.rows filter(not $.cells[22].value == null ) filter((daysBetween($.cells[22].value as Date , now() as Date )  > 14) and ($.cells[2].value=="CRTD")  ))
 
 var Pending_over_10_HSV=sizeOf(payload.rows filter(not $.cells[22].value == null ) filter((daysBetween($.cells[22].value as Date , now() as Date )  > 14) and ($.cells[2].value=="CRTD") and ($.cells[38].value=="Huntsville") ))
 
 var Pending_over_10_TOW=sizeOf(payload.rows filter(not $.cells[22].value == null ) filter((daysBetween($.cells[22].value as Date , now() as Date )  > 14) and ($.cells[2].value=="CRTD") and ($.cells[38].value=="Towcester") ))
 
 var Pending_over_10_GOL=sizeOf(payload.rows filter(not $.cells[22].value == null ) filter((daysBetween($.cells[22].value as Date , now() as Date )  > 14) and ($.cells[2].value=="CRTD") and ($.cells[38].value=="Goleta") ))
 
 var Pending_over_10_AUS=sizeOf(payload.rows filter(not $.cells[22].value == null ) filter((daysBetween($.cells[22].value as Date , now() as Date )  > 14) and ($.cells[2].value=="CRTD") and ($.cells[38].value=="Austin") ))
 
 
 var ENC_Sales_Order_Over_a_week=sizeOf(payload.rows filter(($.cells[10].value == "Sales") and ($.cells[20].value > 7) and(($.cells[2].value=="SNDO") or ($.cells[2].value=="RQAP") or ($.cells[2].value=="DOAP") or ($.cells[2].value=="Appr") or ($.cells[2].value=="BOMW") or ($.cells[2].value=="BOMU") or ($.cells[2].value=="BOMO") or ($.cells[2].value=="ROTU") or ($.cells[2].value=="MMRU"))))

var ENC_Sales_Order_Over_a_week_HSV=sizeOf(payload.rows filter(($.cells[10].value == "Sales") and ($.cells[20].value > 7) and(($.cells[2].value=="SNDO") or ($.cells[2].value=="RQAP") or ($.cells[2].value=="DOAP") or ($.cells[2].value=="Appr") or ($.cells[2].value=="BOMW") or ($.cells[2].value=="BOMU") or ($.cells[2].value=="BOMO") or ($.cells[2].value=="ROTU") or ($.cells[2].value=="MMRU"))and ($.cells[38].value=="Huntsville")))

var ENC_Sales_Order_Over_a_week_TOW=sizeOf(payload.rows filter(($.cells[10].value == "Sales") and ($.cells[20].value > 7) and (($.cells[2].value=="SNDO") or ($.cells[2].value=="RQAP") or ($.cells[2].value=="DOAP") or ($.cells[2].value=="Appr") or ($.cells[2].value=="BOMW") or ($.cells[2].value=="BOMU") or ($.cells[2].value=="BOMO") or ($.cells[2].value=="ROTU") or ($.cells[2].value=="MMRU"))and ($.cells[38].value=="Towcester")))

var ENC_Sales_Order_Over_a_week_GOL=sizeOf(payload.rows filter(($.cells[10].value == "Sales") and ($.cells[20].value > 7) and (($.cells[2].value=="SNDO") or ($.cells[2].value=="RQAP") or ($.cells[2].value=="DOAP") or ($.cells[2].value=="Appr") or ($.cells[2].value=="BOMW") or ($.cells[2].value=="BOMU") or ($.cells[2].value=="BOMO") or ($.cells[2].value=="ROTU") or ($.cells[2].value=="MMRU"))and ($.cells[38].value=="Goleta")))

var ENC_Sales_Order_Over_a_week_AUS=sizeOf(payload.rows filter(($.cells[10].value == "Sales") and ($.cells[20].value > 7) and (($.cells[2].value=="SNDO") or ($.cells[2].value=="RQAP") or ($.cells[2].value=="DOAP") or ($.cells[2].value=="Appr") or ($.cells[2].value=="BOMW") or ($.cells[2].value=="BOMU") or ($.cells[2].value=="BOMO") or ($.cells[2].value=="ROTU") or ($.cells[2].value=="MMRU"))and ($.cells[38].value=="Austin")))

var crtdData = payload.rows.cells filter(not $.cells[38].value == null ) map  {
    ($[2].value) : $[20].value,
    ($[38].value) : $[38].value
} map ((item, index) -> {
    status: keySet(item)[0],
    value: valueSet(item)[0],
    status1: keySet(item)[1],
    value1: valueSet(item)[1] 
}) filter (($.status contains 'CRTD') and ($.status1 contains 'Huntsville' )) 
var Pending_Age_HSV=avg(crtdData.value default [0]) as Number

var crtdData1 = payload.rows.cells  filter(not $.cells[2].value == null) map {
    ($[2].value) : $[20].value
} map ((item, index) -> {
    status: keySet(item)[0],
    value: valueSet(item)[0] 
}) filter ($.status contains 'CRTD') 

var Pending_Age=avg(crtdData1.value default [0]) as Number

var crtdData2 = payload.rows.cells  filter(not $.cells[38].value == null ) map {
    ($[2].value) : $[20].value,
    ($[38].value) : $[38].value
} map ((item, index) -> {
    status: keySet(item)[0],
    value: valueSet(item)[0],
    status1: keySet(item)[1],
    value1: valueSet(item)[1] 
}) filter (($.status contains 'CRTD') 
and($.status1 contains 'Towcester' )) 

var Pending_Age_TOW=avg(crtdData2.value default [0]) as Number default 0

var crtdData3 = payload.rows.cells filter(not $.cells[38].value == null ) map {
    ($[2].value) : $[20].value,
    ($[38].value) : $[38].value
} map ((item, index) -> {
    status: keySet(item)[0],
    value: valueSet(item)[0],
    status1: keySet(item)[1],
    value1: valueSet(item)[1] 
}) filter (($.status contains 'CRTD') 
and($.status1 contains 'Goleta' )) 

var Pending_Age_GOL=avg(crtdData3.value default [0]) as Number



var crtdData4 = payload.rows.cells  filter(not $.cells[38].value == null ) map {
    ($[2].value) : $[20].value,
    ($[38].value) : $[38].value
} map ((item, index) -> {
    status: keySet(item)[0],
    value: valueSet(item)[0],
    status1: keySet(item)[1],
    value1: valueSet(item)[1] 
}) filter (($.status contains 'CRTD') 
and($.status1 contains 'Austin' )) 

var Pending_Age_AUS=avg(crtdData4.value default [0]) as Number

var crtdData5=payload.rows.cells  filter(not $.cells[38].value == null ) map {
    ($[2].value) : $[20].value,
    ($[38].value) : $[38].value
} map ((item, index) -> {
    status: keySet(item)[0],
    age: valueSet(item)[0],
    status1: keySet(item)[1],
    site: valueSet(item)[1] 
}) filter (($.status contains 'SNDO') 
 or ($.status contains 'RQAP') or ($.status contains 'DOAP')
 or ($.status contains 'Appr') or ($.status contains 'BOMW') or ($.status contains 'BOMU')
 or ($.status contains 'BOMO') or ($.status contains ' ROTU') or ($.status contains 'MMRU') )  

var In_Process_Age=avg(crtdData5.age default [0]) as Number

var crtdData6=payload.rows.cells filter(not $.cells[38].value == null ) map {
    ($[2].value) : $[20].value,
    ($[38].value) : $[38].value
} map ((item, index) -> {
    status: keySet(item)[0],
    age: valueSet(item)[0],
    status1: keySet(item)[1],
    site: valueSet(item)[1] 
}) filter((($.status contains 'SNDO') 
 or ($.status contains 'RQAP') or ($.status contains 'DOAP')
 or ($.status contains 'Appr') or ($.status contains 'BOMW') or ($.status contains 'BOMU')
 or ($.status contains 'BOMO') or ($.status contains ' ROTU') or ($.status contains 'MMRU') )
 and ($.status1 contains 'Huntsville'))  
 
var In_Process_Age_HSV=avg(crtdData6.age default [0]) as Number

var crtdData7=payload.rows.cells filter(not $.cells[38].value == null ) map {
    ($[2].value) : $[20].value,
    ($[38].value) : $[38].value
} map ((item, index) -> {
    status: keySet(item)[0],
    age: valueSet(item)[0],
    status1: keySet(item)[1],
    site: valueSet(item)[1] 
}) filter((($.status contains 'SNDO') 
 or ($.status contains 'RQAP') or ($.status contains 'DOAP')
 or ($.status contains 'Appr') or ($.status contains 'BOMW') or ($.status contains 'BOMU')
 or ($.status contains 'BOMO') or ($.status contains ' ROTU') or ($.status contains 'MMRU') )
 and ($.status1 contains 'Towcester')) 
 
var In_Process_Age_TOW=avg(crtdData7.age default [0]) as Number

var crtdData8=payload.rows.cells filter(not $.cells[38].value == null ) map {
    ($[2].value) : $[20].value,
    ($[38].value) : $[38].value
} map ((item, index) -> {
    status: keySet(item)[0],
    age: valueSet(item)[0],
    status1: keySet(item)[1],
    site: valueSet(item)[1] 
}) filter((($.status contains 'SNDO') 
 or ($.status contains 'RQAP') or ($.status contains 'DOAP')
 or ($.status contains 'Appr') or ($.status contains 'BOMW') or ($.status contains 'BOMU')
 or ($.status contains 'BOMO') or ($.status contains ' ROTU') or ($.status contains 'MMRU') )
 and ($.status1 contains 'Goleta')) 
 
var In_Process_Age_GOL=avg(crtdData8.age default [0]) as Number

var crtdData9=payload.rows.cells filter(not $.cells[38].value == null ) map {
    ($[2].value) : $[20].value,
    ($[38].value) : $[38].value
} map ((item, index) -> {
    status: keySet(item)[0],
    age: valueSet(item)[0],
    status1: keySet(item)[1],
    site: valueSet(item)[1] 
}) filter((($.status contains 'SNDO') 
 or ($.status contains 'RQAP') or ($.status contains 'DOAP')
 or ($.status contains 'Appr') or ($.status contains 'BOMW') or ($.status contains 'BOMU')
 or ($.status contains 'BOMO') or ($.status contains ' ROTU') or ($.status contains 'MMRU') )
 and ($.status1 contains 'Austin')) 
 
var In_Process_Age_AUS=avg(crtdData9.age default [0]) as Number

var data=payload.rows.cells filter (not $[25].value == null) map {
    ($[25].value) : $[25].value,
    ($[25].value): $[20].value    
} map ((item, index) -> {
    date: keySet(item)[0],
    reldate: valueSet(item)[0],
    date: keySet(item)[1],
    age:valueSet(item)[1]
    
})filter(daysBetween($.reldate as Date, now() as Date) < 7) 
var REL_LW_Age= avg(data.age default [0]) as Number

var data1=payload.rows.cells filter (not $[25].value == null) map {
    ($[25].value) : $[25].value,
    ($[38].value): $[20].value    
} map ((item, index) -> {
    date: keySet(item)[0],
    reldate: valueSet(item)[0],
    site: keySet(item)[1],
    age:valueSet(item)[1]
    
}) filter((daysBetween($.reldate as Date, now() as Date) < 7) and ($.site contains 'Huntsville')) 
 
var REL_LW_Age_HSV=avg(data1.age default [0]) as Number


var data2=payload.rows.cells filter (not $[25].value == null) map {
    ($[25].value) : $[25].value,
    ($[38].value): $[20].value    
} map ((item, index) -> {
    date: keySet(item)[0],
    reldate: valueSet(item)[0],
    site: keySet(item)[1],
    age:valueSet(item)[1]
    
}) filter((daysBetween($.reldate as Date, now() as Date) < 7) and ($.site contains 'Towcester')) 
 
var REL_LW_Age_TOW=avg(data2.age default [0]) as Number

var data3=payload.rows.cells filter (not $[25].value == null) map {
    ($[25].value) : $[25].value,
    ($[38].value): $[20].value    
} map ((item, index) -> {
    date: keySet(item)[0],
    reldate: valueSet(item)[0],
    site: keySet(item)[1],
    age:valueSet(item)[1]
    
}) filter((daysBetween($.reldate as Date, now() as Date) < 7) and ($.site contains 'Goleta')) 

 
var REL_LW_Age_GOL=avg(data3.age default [0]) as Number


var data4=payload.rows.cells filter (not $[25].value == null) map {
    ($[25].value) : $[25].value,
    ($[38].value): $[20].value    
} map ((item, index) -> {
    date: keySet(item)[0],
    reldate: valueSet(item)[0],
    site: keySet(item)[1],
    age:valueSet(item)[1]
    
}) filter((daysBetween($.reldate as Date, now() as Date) < 7) and ($.site contains 'Austin')) 
 
var REL_LW_Age_AUS= avg(data4.age default [0]) as Number


var data5=payload.rows.cells filter (not $[25].value == null) map {
    ($[25].value) : $[25].value,
    ($[25].value): $[47].value    
} map ((item, index) -> {
    date: keySet(item)[0],
    reldate: valueSet(item)[0],
    site: keySet(item)[1],
    Nobj:valueSet(item)[1]
    
}) filter((daysBetween($.reldate as Date, now() as Date) < 7) )
 
var Objects_LW=sum(data5.Nobj default [0]) as Number

var data6=payload.rows.cells filter (not $[25].value == null) map {
    ($[25].value) : $[25].value,
    ($[25].value): $[47].value,
    ($[25].value) : $[38].value 
      
} map ((item, index) -> {
    date: keySet(item)[0],
    reldate: valueSet(item)[0],
    date: keySet(item)[1],
    Nobj:valueSet(item)[1],
    date: keySet(item)[2],
    site:valueSet(item)[2]
    
}) filter(((daysBetween($.reldate as Date, now() as Date) < 7) )and($.site=="Huntsville"))

var Objects_LW_HSV=sum(data6.Nobj default [0]) as Number

var data7=payload.rows.cells filter (not $[25].value == null) map {
    ($[25].value) : $[25].value,
    ($[25].value): $[47].value,
    ($[25].value) : $[38].value 
      
} map ((item, index) -> {
    date: keySet(item)[0],
    reldate: valueSet(item)[0],
    date: keySet(item)[1],
    Nobj:valueSet(item)[1],
    date: keySet(item)[2],
    site:valueSet(item)[2]
    
}) filter(((daysBetween($.reldate as Date, now() as Date) < 7) )and($.site=="Towcester"))

var Objects_LW_TOW =sum(data7.Nobj default [0]) as Number

var data8=payload.rows.cells filter (not $[25].value == null) map {
    ($[25].value) : $[25].value,
    ($[25].value): $[47].value,
    ($[25].value) : $[38].value 
      
} map ((item, index) -> {
    date: keySet(item)[0],
    reldate: valueSet(item)[0],
    date: keySet(item)[1],
    Nobj:valueSet(item)[1],
    date: keySet(item)[2],
    site:valueSet(item)[2]
    
}) filter(((daysBetween($.reldate as Date, now() as Date) < 7) )and($.site=="Goleta"))

var Objects_LW_GOL=sum(data8.Nobj default [0]) as Number

var data9=payload.rows.cells  filter (not $[25].value == null) map {
    ($[25].value) : $[25].value,
    ($[25].value): $[47].value,
    ($[25].value) : $[38].value 
      
} map ((item, index) -> {
    date: keySet(item)[0],
    reldate: valueSet(item)[0],
    date: keySet(item)[1],
    Nobj:valueSet(item)[1],
    date: keySet(item)[2],
    site:valueSet(item)[2]
    
}) filter(((daysBetween($.reldate as Date, now() as Date) < 7) )and($.site=="Austin"))

var Objects_LW_AUS=sum(data9.Nobj default [0]) as Number

var data10=payload.rows.cells filter (not $[25].value == null) map {
   ($[25].value) : $[25].value,
    ($[25].value): $[48].value,
    ($[25].value) : $[38].value 
      
} map ((item, index) -> {
    date: keySet(item)[0],
    reldate: valueSet(item)[0],
    date: keySet(item)[1],
    Nobj:valueSet(item)[1],
    date: keySet(item)[2],
    site:valueSet(item)[2]
    
}) filter(((daysBetween($.reldate as Date, now() as Date) < 7) ))



var BOM_Changes_LW=
if(sizeOf(data10)>0)
data10.Nobj reduce (item, accumulator = "0") -> 
accumulator as Number + (item default 0) as Number
else
0



var data11=payload.rows.cells filter (not $[25].value == null) map {
    ($[25].value) : $[25].value,
    ($[25].value): $[48].value,
    ($[25].value) : $[38].value 
      
} map ((item, index) -> {
    date: keySet(item)[0],
    reldate: valueSet(item)[0],
    date: keySet(item)[1],
    Nobj:valueSet(item)[1],
    date: keySet(item)[2],
    site:valueSet(item)[2]
    
}) filter(((daysBetween($.reldate as Date, now() as Date) < 7) ) and($.site=="Huntsville"))


var BOM_Changes_LW_HSV=if(sizeOf(data11)>0)
data11.Nobj reduce (item, accumulator = "0") -> 
accumulator as Number + (item default 0) as Number
else
0

var data12=payload.rows.cells filter (not $[25].value == null) map {
    ($[25].value) : $[25].value,
    ($[25].value): $[48].value,
    ($[25].value) : $[38].value 
      
} map ((item, index) -> {
    date: keySet(item)[0],
    reldate: valueSet(item)[0],
    date: keySet(item)[1],
    Nobj:valueSet(item)[1],
    date: keySet(item)[2],
    site:valueSet(item)[2]
    
}) filter(((daysBetween($.reldate as Date, now() as Date) < 7) ) and($.site=="Towcester"))


var BOM_Changes_LW_TOW=if(sizeOf(data12)>0)
data12.Nobj reduce (item, accumulator = "0") -> 
accumulator as Number + (item default 0) as Number
else
0

var data13=payload.rows.cells filter (not $[25].value == null) map {
    ($[25].value) : $[25].value,
    ($[25].value): $[48].value,
    ($[25].value) : $[38].value 
      
} map ((item, index) -> {
    date: keySet(item)[0],
    reldate: valueSet(item)[0],
    date: keySet(item)[1],
    Nobj:valueSet(item)[1],
    date: keySet(item)[2],
    site:valueSet(item)[2]
    
}) filter(((daysBetween($.reldate as Date, now() as Date) < 7) ) and($.site=="Goleta"))


var BOM_Changes_LW_GOL=if(sizeOf(data13)>0)
data13.Nobj reduce (item, accumulator = "0") -> 
accumulator as Number + (item default 0) as Number
else
0

var data14=payload.rows.cells filter (not $[25].value == null) map {
    ($[25].value) : $[25].value,
    ($[25].value): $[48].value,
    ($[25].value) : $[38].value 
      
} map ((item, index) -> {
    date: keySet(item)[0],
    reldate: valueSet(item)[0],
    date: keySet(item)[1],
    Nobj:valueSet(item)[1],
    date: keySet(item)[2],
    site:valueSet(item)[2]
    
}) filter(((daysBetween($.reldate as Date, now() as Date) < 7) ) and($.site=="Austin"))


var BOM_Changes_LW_AUS=if(sizeOf(data14)>0)
data14.Nobj reduce (item, accumulator = "0") -> 
accumulator as Number + (item default 0) as Number
else
0

var data21=payload.rows.cells filter ((not $[25].value == null) and (not $[20].value == null)) map {
    ($[25].value) : $[25].value,
    ($[25].value): $[20].value,
    ($[25].value) : $[38].value 
      
} map ((item, index) -> {
    date: keySet(item)[0],
    reldate: valueSet(item)[0],
    date: keySet(item)[1],
    age:valueSet(item)[1],
    date: keySet(item)[2],
    site:valueSet(item)[2]
    
}) filter(((daysBetween($.reldate as Date, now() as Date) < 7) ))  orderBy $.age
 
 

var median1=if((sizeOf(data21) mod 2) == 0)
(sizeOf(data21)/2)
else
floor(sizeOf(data21)/2)

var RW_LW_Median=if((median1 mod 2) !=0)
data.age[median1]
else
((data.age[median1] default 0) + (data.age[median1-1] default 0 ))/2



var data22=payload.rows.cells filter ((not $[25].value == null) and (not $[20].value == null)) map {
    ($[25].value) : $[25].value,
    ($[25].value): $[20].value,
    ($[25].value) : $[38].value 
      
} map ((item, index) -> {
    date: keySet(item)[0],
    reldate: valueSet(item)[0],
    date: keySet(item)[1],
    age:valueSet(item)[1],
    date: keySet(item)[2],
    site:valueSet(item)[2]
    
}) filter(((daysBetween($.reldate as Date, now() as Date) < 7)) and ($.site=="Huntsville")) orderBy $.age
 
 

var median2=if((sizeOf(data22) mod 2) == 0)
(sizeOf(data22)/2)
else
floor(sizeOf(data22)/2)

var RW_LW_Median_HSV=if((median2 mod 2) !=0)
data.age[median2]
else
((data.age[median2] default 0) + (data.age[median2-1] default 0 ))/2


var data23=payload.rows.cells filter ((not $[25].value == null) and (not $[20].value == null)) map {
    ($[25].value) : $[25].value,
    ($[25].value): $[20].value,
    ($[25].value) : $[38].value 
      
} map ((item, index) -> {
    date: keySet(item)[0],
    reldate: valueSet(item)[0],
    date: keySet(item)[1],
    age:valueSet(item)[1],
    date: keySet(item)[2],
    site:valueSet(item)[2]
    
}) filter(((daysBetween($.reldate as Date, now() as Date) < 7)) and ($.site=="Towcester")) orderBy $.age
 
 

var median3=if((sizeOf(data23) mod 2) == 0)
(sizeOf(data23)/2)
else
floor(sizeOf(data23)/2)

var RW_LW_Median_TOW=if((median3 mod 2) !=0)
data.age[median3]
else
((data.age[median3] default 0) + (data.age[median3-1] default 0 ))/2

var data24=payload.rows.cells filter ((not $[25].value == null) and (not $[20].value == null)) map {
    ($[25].value) : $[25].value,
    ($[25].value): $[20].value,
    ($[25].value) : $[38].value 
      
} map ((item, index) -> {
    date: keySet(item)[0],
    reldate: valueSet(item)[0],
    date: keySet(item)[1],
    age:valueSet(item)[1],
    date: keySet(item)[2],
    site:valueSet(item)[2]
    
}) filter(((daysBetween($.reldate as Date, now() as Date) < 7)) and ($.site=="Goleta")) orderBy $.age
 
 

var median4=if((sizeOf(data24) mod 2) == 0)
(sizeOf(data24)/2)
else
floor(sizeOf(data24)/2)

var RW_LW_Median_GOL=if((median4 mod 2) !=0)
data.age[median4]
else
((data.age[median4] default 0) + (data.age[median4-1] default 0 ))/2

var data25=payload.rows.cells filter ((not $[25].value == null) and (not $[20].value == null)) map {
    ($[25].value) : $[25].value,
    ($[25].value): $[20].value,
    ($[25].value) : $[38].value 
      
} map ((item, index) -> {
    date: keySet(item)[0],
    reldate: valueSet(item)[0],
    date: keySet(item)[1],
    age:valueSet(item)[1],
    date: keySet(item)[2],
    site:valueSet(item)[2]
    
}) filter(((daysBetween($.reldate as Date, now() as Date) < 7)) and ($.site=="Austin")) orderBy $.age
 
 

var median5=if((sizeOf(data25) mod 2) == 0)
(sizeOf(data25)/2)
else
floor(sizeOf(data25)/2)

var RW_LW_Median_AUS=if((median5 mod 2) !=0)
data.age[median5]
else
((data.age[median5] default 0) + (data.age[median5-1] default 0 ))/2

---
{
	'Date':date,
	'Log_Date':Log_Date,
	'SNDO':SNDO,
	'SNDO_HSV':SNDO_HSV,
	'SNDO_TOW':SNDO_TOW,
	'SNDO_GOL':SNDO_GOL,
	'SNDO_AUS':SNDO_AUS,
	'RQAP':RQAP,
	'RQAP_HSV':RQAP_HSV,
	'RQAP_TOW':RQAP_TOW,
	'RQAP_GOL':RQAP_GOL,
	'RQAP_AUS':RQAP_AUS,
	'DOAP':DOAP,
	'DOAP_HSV':DOAP_HSV,
	'DOAP_TOW':DOAP_TOW,
	'DOAP_GOL':DOAP_GOL,
	'DOAP_AUS':DOAP_AUS,
	'Appr':Appr,
	'Appr_HSV': Appr_HSV,
	'Appr_TOW':Appr_TOW,
	'Appr_GOL':Appr_GOL,
    'Appr_AUS':Appr_AUS,
    'BOMW':BOMW,
    'BOMW_HSV':BOMW_HSV,
    'BOMW_TOW':BOMW_TOW,
    'BOMW_GOL':BOMW_GOL,
    'BOMW_AUS':BOMW_AUS,
    'BOMU':BOMU,
    'BOMU_HSV':BOMU_HSV,
    'BOMU_TOW':BOMU_TOW,
    'BOMU_GOL':BOMU_GOL,
    'BOMU_AUS':BOMU_AUS,
    'BOMO': BOMO,
    'BOMO_HSV':BOMO_HSV,
    'BOMO_TOW':BOMO_TOW,
    'BOMO_GOL':BOMO_GOL,
    'BOMO_AUS':BOMO_AUS,
    'ROTU':ROTU,
    'ROTU_HSV':ROTU_HSV,
    'ROTU_TOW':ROTU_TOW,
    'ROTU_GOL':ROTU_GOL,
    'ROTU_AUS':ROTU_AUS,
    'MMRU': MMRU,
    'MMRU_HSV':MMRU_HSV,
    'MMRU_TOW':MMRU_TOW,
    'MMRU_GOL':MMRU_GOL,
    'MMRU_AUS':MMRU_AUS,
    'Rel':Rel,
    'Rel_HSV':Rel_HSV,
    'Rel_TOW':Rel_TOW,
    'Rel_GOL': Rel_GOL,
    'Rel_AUS':Rel_AUS,
    'MRPU': MRPU,
    'MRPU_HSV':MRPU_HSV,
    'MRPU_TOW':MRPU_TOW,
    'MRPU_GOL':MRPU_GOL,
    'MRPU_AUS': MRPU_AUS,
    'PRDU':PRDU,
    'PRDU_HSV': PRDU_HSV,
    'PRDU_TOW':PRDU_TOW,
    'PRDU_GOL':PRDU_GOL,
    'PRDU_AUS':PRDU_AUS,
    'CLSD':CLSD,
    'CRTD':CRTD,
    'CRTD_HSV':CRTD_HSV,
    'CRTD_TOW':CRTD_TOW,
    'CRTD_GOL':CRTD_GOL,
    'CRTD_AUS':CRTD_AUS,
    'REL_LW':REL_LW,
    'REL_LW_HSV':REL_LW_HSV,
    'REL_LW_TOW':REL_LW_TOW ,
    'REL_LW_GOL':REL_LW_GOL,
    'REL_LW_AUS':REL_LW_AUS,
    'SNDO_LW':SNDO_LW,
    'SNDO_LW_HSV':SNDO_LW_HSV,
    'SNDO_LW_TOW':SNDO_LW_TOW,
    'SNDO_LW_GOL':SNDO_LW_GOL,
    'SNDO_LW_AUS':SNDO_LW_AUS,
    'Pending_over_10':Pending_over_10,
    'Pending_over_10_HSV': Pending_over_10_HSV,
    'Pending_over_10_TOW':Pending_over_10_TOW,  
    'Pending_over_10_GOL':Pending_over_10_GOL,
    'Pending_over_10_AUS':Pending_over_10_AUS,
    'Customer_Approval':Customer_Approval,
    'Customer_Approval_HSV':Customer_Approval_HSV,
    'Customer_Approval_TOW':Customer_Approval_TOW,
    'Customer_Approval_GOL':Customer_Approval_GOL,
    'Customer_Approval_AUS':Customer_Approval_AUS,
    'ECN_Sales_Orders':ECN_Sales_Orders,
    'ECN_Sales_Orders_HSV':ECN_Sales_Orders_HSV,
    'ECN_Sales_Orders_TOW':ECN_Sales_Orders_TOW,
    'ECN_Sales_Orders_GOL':ECN_Sales_Orders_GOL,
    'ECN_Sales_Orders_AUS':ECN_Sales_Orders_AUS,
    'ENC_Sales_Order_Over_a_week':ENC_Sales_Order_Over_a_week,
    'ENC_Sales_Order_Over_a_week_HSV':ENC_Sales_Order_Over_a_week_HSV,
    'ENC_Sales_Order_Over_a_week_TOW':ENC_Sales_Order_Over_a_week_TOW,
    'ENC_Sales_Order_Over_a_week_GOL':ENC_Sales_Order_Over_a_week_GOL,
    'ENC_Sales_Order_Over_a_week_AUS':ENC_Sales_Order_Over_a_week_AUS,
     'Pending_Age_HSV':Pending_Age_HSV,
     'Pending_Age':Pending_Age,
     'Pending_Age_TOW':Pending_Age_TOW,
     'Pending_Age_GOL':Pending_Age_GOL,
     'Pending_Age_AUS':Pending_Age_AUS,
     'In_Process_Age':In_Process_Age,
     'In_Process_Age_HSV':In_Process_Age_HSV,
     'In_Process_Age_TOW':In_Process_Age_TOW,
     'In_Process_Age_GOL':In_Process_Age_GOL,
     'In_Process_Age_AUS':In_Process_Age_AUS,
     'REL_LW_Age':REL_LW_Age,
     'REL_LW_Age_HSV':REL_LW_Age_HSV,
     'REL_LW_Age_TOW':REL_LW_Age_TOW,
     'REL_LW_Age_GOL':REL_LW_Age_GOL,
     'REL_LW_Age_AUS':REL_LW_Age_AUS,
     'Objects_LW':Objects_LW,
      'Objects_LW_HSV':Objects_LW_HSV,
     'Objects_LW_TOW':Objects_LW_TOW,
     'Objects_LW_GOL':Objects_LW_GOL,
     'Objects_LW_AUS':Objects_LW_AUS,
     'BOM_Changes_LW':BOM_Changes_LW,
     'BOM_Changes_LW_TOW':BOM_Changes_LW_TOW,
     'BOM_Changes_LW_HSV':BOM_Changes_LW_HSV,
     'BOM_Changes_LW_GOL':BOM_Changes_LW_GOL,
     'BOM_Changes_LW_AUS':BOM_Changes_LW_AUS,
     'RW_LW_Median':RW_LW_Median,
     'RW_LW_Median_HSV':RW_LW_Median_HSV,
     'RW_LW_Median_TOW':RW_LW_Median_TOW,
     'RW_LW_Median_GOL':RW_LW_Median_GOL,
     'RW_LW_Median_AUS':RW_LW_Median_AUS
     
	
}