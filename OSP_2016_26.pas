Program osp1626;
const 
    MAXS = 10; 
var 
   i, n : integer; 
   A : array[1..10] of integer; 
   
   procedure klik(); 
   begin 
      i := i-1; 
      writeln('klik:i=',i,' ');
   end;
 
   function klek(x : integer) : integer; 
   begin 
     if(x = MAXS) then 
        klek := A[x] * A[1] 
     else 
        klek := A[x] * A[x+1]; 
     write('klek:',klek,' ');   
   end;
 
   function klok() : integer; 
   var 
     tmp : integer; 
   begin 
     
     if(i = 0) then
     begin
        klok := i;        
        writeln('Rekrusif Balik : ');
        write('klok:',klok,' + ');
     end   
     else 
        begin 
          tmp := i; 
          write('klok:tmp=',tmp,' ');
          klik();
          writeln;
          klok := klok() + klek(tmp); 
          write('= klok:',klok,' + ');
        end; 
   end; 

begin 
  A[1] := 1; 
  A[2] := 2; 
  A[3] := 3; 
  A[4] := 4; 
  A[5] := 5; 
  A[6] := 6; 
  A[10] := 11; 
  A[9] := 9; 
  A[7] := 8; 
  A[8]:=7; 
  
  writeln('Isi Array A : ');
  for i:=1 to 10 do
   write(A[i],' ');
  
  writeln;
  writeln;
  
  n:=6; 
  i := n; 
  klok();
  //writeln(klok()); 
end. 