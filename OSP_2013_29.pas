var
   we: longint;
   Z: array[1..15] of longint = (64, 19, 56, 67, 66, 82,31, 20, 67, 10, 94, 100, 57, 14, 86);

   function f(x: longint; y: longint): longint;
   var
     a, b,tmp_x,tmp_y: longint;
   begin
     
     if (x = y) then
     begin
        f := Z[y]; 
        writeln('f(',x,',',y,')=',f);
     end   
     else 
        begin
           
          tmp_y:= (x+y) div 2;
          tmp_x:= ((x+y) div 2)+1;          
          a := f(x, tmp_y);
          b := f(tmp_x, y);
          
          if (a < b) then 
              f := a
          else 
              f := b;              
          writeln('    f(',x,',',y,')=min(f(',x,',',tmp_y,'),f(',tmp_x,',',y,'))=',f);    
        end;
        
   end;
begin
we := f(3,11);
//writeln(we);
end.