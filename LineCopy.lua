local parseCsv = require 'csv'
function main(Data)
   local Csv = parseCsv(Data, '|')
   
   print(Csv)
   local Row1 = Csv[1]
   print(Row1)
   
   local Row2 = table.remove(Csv)
   print(Row2)
   PerNum = Row2[3]
   print(PerNum)
   result={}
   
   PerNum=PerNum+0
   
   for i=1,10,1
   do
      print(PerNum)
      t = {[1]='a',[2]='b',[4]='c'}
      table.insert(t,3,PerNum)
      table.insert(result,t)
      
      PerNum=PerNum+1
   end
   
   table.insert(result,1,Row1)
   print(result)
   
end
