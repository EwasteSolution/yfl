                                                            --[[                       YFL                       ]]--
                                     --[[the simple yad for lua modual to bring your lua scripts up a notch
                                                            Earl Thibeault                                  ]]--

---this just displays an about dialog whith sevral options name of program lisense imge website etc. it ex[pects a table of key value pairs a full list will be in yads manpage i will update documentation when i have time
local yfl={}
function yfl.about(tbl)
    local op=tbl
    local wo='yad --about '
    local ld='--'
    local eq ='='
    local sp=' '
    local  ex= '\"'
    for k,v in pairs(op) do
       wo=tostring(wo..ld..k..eq..ex..v..ex..sp)
     end
     os.execute(wo)
 end
 function yfl.help()
    h={"yfl.about()","the about screen for your programn",
    "yfl.slide()","a dialog whith a slide "
     }
 end
 --makes yad dialog that has a slider op;tions include min-value, max-value ,step , enforce step  ((booleen)) min-valuee and max-value are caklled whithout the hyphon minvalue maxvalue the hypon screws up the table called as a second table  inside the table mark={'5:5%','10:10%'}
 function yfl.slide(tbl)
   local op=tbl
   local m=mtbl
    local wo='yad --scale '
    local ld='--'
    local eq ='='
    local sp=' '
    local  ex= '\"'
    for k,v in pairs(op)  do
        if type(v)=='table' then
            for i,m in ipairs(v) do
                  wo=tostring(wo..ld..'mark'..eq..ex..m..ex..sp)
             end
        else
       if k=='minvalue' then
            k="min-value"
        elseif k=='maxvalue' then
            k= "max-value"
         end    
       wo=tostring(wo..ld..k..eq..ex..v..ex..sp)
      end
     end
     result=os.execute(wo)
return result
 end
 
 return yfl
 
