function main(Data)

  Data = Data:gsub('\r\n','\n')

  tbl={}
  cnt=0
  start=1

  for i = 1, #Data do
    local c = Data:sub(i,i)

    if(c =='\n') then
      cnt=cnt+1
      if(cnt==1) then
        start=i+1
      end
    else
      if(cnt ==1) then
        if(c==',') then
          table.insert(tbl,  Data:sub(start,i-1))
          print(c)
          start=i+1
        end
      end
    end
    print(start)
    print(i)

  end
  table.insert(tbl,  Data:sub(start,#Data-1))

  for i = 1,10000,1
  do
    print(i, tbl[2],tbl[3],tbl[4],tbl[5],tbl[6])
  end

end
