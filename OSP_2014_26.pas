var
  i, j, total : integer;
begin
   total := 0;
   writeln('i':4,'j':4,'i-j':7,'total':7);
   for i := 1 to 100 do
       for j := 1 to 100 do
       begin
           total := total + i - j;
           if( ((i=1) and (j<=10)) or ((i=100) and (j>90)) )then
            writeln(i:4,j:4,(i-j):7,total:7);
           
       end;    
   //writeln(total);
end.
