uses crt,math;

function F1(i, j : integer) : integer;
begin
   if (i < 0) or (j < 0) then
   begin
      F1 := max(i, j) + 1;
      writeln('F1(',i,',',j,')=',F1);
   end   
   else 
     if i = j then
     begin        
        F1 := F1(i + 1, j - 1);
        //writeln('  F1(',i + 1,',',j - 1,')=',F1);
     end   
     else
     begin
        
        F1 := F1(i - 2, j - 1) + F1(i - 1, j - 2);
        writeln('    F1(',i,',',j,')=F1(',i-2,',',j-1,')+F1(',i-1,',',j-2,')=',F1);
     end;   
end;

begin
 F1(4,3);
end.