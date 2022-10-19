program makanan;
uses crt;

var menu: integer;

begin
clrscr;

writeln('=======================================================================');
writeln('                         Kantin Serba 10rb                           ');
writeln(' 101. Nasi Gurih                                                     ');
writeln(' 102. Ayam Geprek                                                    ');
writeln(' 103. Ayam Penyet                                                    ');
writeln(' 104. Indomie                                                        ');
writeln(' 105. Burger                                                         ');
writeln('=======================================================================');
writeln;
write('Pilih nomor menu makanan anda: ');readln(menu);
case (menu) of
    101: writeln('Nasi Gurih  Rp.10000 ');
    102: writeln('Ayam Geprek Rp.10000 ');
    103: writeln('Ayam Penyet Rp.10000 ');
    104: writeln('Indomie     Rp.10000 ');
    105: writeln('Burger      Rp.10000 ');

else 
    begin 
        writeln(' Menu Tidak Tersedia');
     end;   
end;

writeln;
end.