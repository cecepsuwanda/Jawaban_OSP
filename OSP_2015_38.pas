type
  tarrstat = array[1..100,1..5,1..100] of longint;
  tarr = array [1..100000] of longint;
  
  procedure stat_arr(n:integer;a:tarr;var stat:tarrstat);
  var
    i,j,k : integer;
  begin
    for i := 1 to n do
    begin
       
       if i<100 then
          k:=1
       else
          if i<200 then
             k:=2
          else
            if i<300 then
             k:=3;
         
         j:=1;
          while(stat[a[i],k,j]<>0)do
            j:=j+1; 
         
       stat[a[i],k,j]:=i;       
    end;  
  end;
  
  procedure cetak_stat_arr(var stat:tarrstat);
  var
    i,j,k,jml : integer;
  begin    
    for i := 1 to 4 do
    begin
       writeln('isi_array ',i,': ');
       writeln('index array : ');
       for j:=1 to 5 do
       begin
          jml:=1;
          for k:=1 to 100 do
          begin 
            if (stat[i,j,k]>0) then
            begin
              write(stat[i,j,k]:4);
              jml:=jml+1;
            end;
            
            if((jml>1)and ((jml mod 10)=0))then
            begin
              jml:=1;
              writeln;
            end;
            
          end;          
       end;
       writeln;
       writeln;
    end;  
  end;


var
   a : tarr;
   stat : tarrstat;
   i, j, n : longint;
begin
   n:=300;   
    for i := 1 to n do
      a[i] := 0;
    
    for i := 2 to n do
    begin
      if (a[i] = 0) then
         begin
           j := i;
           while (j <= n) do
           begin
             a[j] := a[j] + 1;
             j := j + i;
           end;
         end;
    end;
   stat_arr(n,a,stat);
   cetak_stat_arr(stat);
end.