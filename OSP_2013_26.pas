var N,hasil: integer;
    
    procedure solve(X:integer);
    begin
       if (X>1) then
       begin
          hasil:=hasil+1;
          writeln(hasil:7,x:7,(x div 2):7,(x mod 2):7,((x div 2)+(x mod 2)):7);
          solve(X div 2 + X mod 2);
       end;
    end;

begin
  N:=77;
  hasil:=0;
  writeln('hasil':7,'x':7,'div':7,'mod':7,'div+mod':10);
  solve(N);
  //writeln(hasil);
end.
