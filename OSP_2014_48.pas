var
   data1 : array[1..10] of integer = (4,10,2,5,1,9,7,5,6,8);
   data2,data3 : array[1..10] of integer;
   i : integer;
begin
   writeln('Isi Data2 :');
   for i:= 1 to 10 do
   begin
      data2[i] := 1;
      write(data2[i],' ; ');
   end;
   writeln;
   writeln;
   writeln('i':2,'data1':7,'data2':7);
   for i:= 1 to 10 do
   begin
      inc(data2[data1[i]]);
      writeln(i:2,data1[i]:7,data2[data1[i]]:7);
   end;   
   writeln;
   writeln;
   writeln('i ':2,'data2[i]+data2[i-1]':7,'data2[i]':7);
   for i:= 2 to 10 do
   begin
      write(i:2,data2[i]:7,data2[i-1]:7);
      data2[i] := data2[i] + data2[i-1];
      writeln(data2[i]:7);
   end;
   writeln;
   writeln('i ':2,' data1':7,' data2':7,' data3':7,' dec(data2)':7);
   for i:= 10 downto 1 do
   begin
       data3[data2[data1[i]]] := data1[i];       
       write(i:2,data1[i]:7,data2[data1[i]]:7,data3[data2[data1[i]]]:7);              
       dec(data2[data1[i]]);
       writeln(data2[data1[i]]:10);
   end;
   
   writeln('Isi Data3 :');
   for i:= 1 to 30 do
     writeln(i:2,data3[i]:7);
 end.
