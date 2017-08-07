Program osp1626;
var
  is_0,is_1,is_2,is_3: boolean;
    
   function Proses(x : integer) : integer; 
   var
     hsl_div : integer;
     hsl_mod : integer;
     hsl_kali : integer;
     hsl_tmbh : integer;
   begin          
      if(x <= 1) then
      begin
         Proses := x;
        if( (not is_0) or (not is_1) )then 
        begin
          writeln('Proses(',x,')=',x);
          if(not is_0)then 
           is_0:=x=0;
          if(not is_1)then 
           is_1:=x=1;          
        end;  
         
      end   
      else 
      begin
        hsl_div := x div 2;
        hsl_mod := x mod 2;
        hsl_kali := hsl_div*hsl_mod;
        hsl_tmbh := hsl_div+hsl_mod;
        Proses := Proses(hsl_kali) + Proses(hsl_tmbh); 
        if(((not is_2) or (not is_3)) or (x>3)) then
        begin
          writeln('Proses(',x,')= Proses(',hsl_kali,') + Proses(',hsl_tmbh,') = ',proses);        
          if(not is_2)then 
           is_2:=x=2;
          if(not is_3)then 
           is_3:=x=3; 
        end;  
      end;  
   end;


begin
  is_0:=false;
  is_1:=false;
  is_2:=false;
  is_3:=false;
  Proses(11);
end.