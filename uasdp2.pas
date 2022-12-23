program UAS_SEMESTER_1;
Uses crt;
type 
    biodata = Record
        nama    : string [35];
        nim     : string [10];
        alamat  : string [50];
        no_hp   : string [15];
        lahir   : string [25];
        tanggal : byte;
        bulan   : string [10];
        tahun   : integer;
    end;
var
    data : array [1..30] of biodata;
    i,n : integer;
procedure datanama;
begin
    clrscr;
        write('Masukkan Jumlah Mahasiswa : ');
        readln(n);
    clrscr;
    for i := 1 to n do
        begin
            writeln('Masukkan data ke-',i);
            with data[i] do
                begin
                    write('Masukkan Nama          : ');
                        readln(nama);
                    write('Masukkan NIM           : ');
                        readln(nim);
                    write('Masukkan Alamat        : ');
                        readln(alamat);
                    write('Masukkan No. HP        : ');
                        readln(no_hp);
                    write('Masukkan Tempat Lahir  : ');
                        readln(lahir);
                    write('Masukkan Tanggal Lahir : ');
                        readln(tanggal);
                    write('Masukkan Bulan Lahir   : ');
                        readln(bulan);
                    write('Masukkan Tahun Lahir   : ');
                        readln(tahun);
                    writeln;
                end;
        end;
    for i := 1 to n do
        begin
            writeln('Data mahasiswa ke-',i);
            with data[i] do
                begin
                    writeln('Nama           : ',nama);
                    writeln('NIM            : ',nim);
                    writeln('Alamat         : ',alamat);
                    writeln('No.HP          : ',no_hp);
                    writeln('Tempat lahir   : ',lahir);
                    writeln('Tanggal lahir  : ',tanggal);
                    writeln('Bulan lahir    : ',bulan);
                    writeln('Tahun lahir    : ',tahun);   
                    writeln;  
                end;
        writeln;
        end;
    ;readln;
end;
procedure thnkabisat;
var 
tahun : integer;
function kabisat (year : integer): boolean;
    begin
        kabisat := boolean (year mod 400 );
    end;
    begin clrscr;
        writeln('--------------------------');
        writeln('|Menentukan tahun kabisat|');
        writeln('--------------------------');
        writeln;
        write('Tentukan Tahun : ');
        readln(tahun);
        writeln;
    case kabisat(tahun) of
        true    : writeln('Tahun ',tahun,' Bukan Termasuk Tahun Kabisat');
        false   : writeln('Tahun ',tahun,' Termasuk Tahun Kabisat');
    end;
        readln;
end;
procedure kalkulator;
var
    bil1 : integer;
    bil2 : integer;
    kali : integer;
    tambah : integer;
    kurang : integer;
    modulo : integer;
    dive : integer;
    bagi :  real;
begin
    write('masukkan bilangan 1 :');
    read(bil1);
    write('masukkan bilangan 2 :');
    read(bil2);
        kali    :=bil1*bil2;
        bagi    :=bil1/bil2;
        tambah  :=bil1+bil2;
        kurang  :=bil1-bil2;
        dive    :=bil1 div bil2;
        modulo  :=bil1 mod bil2;
        writeln('hasil kali adalah   : ',kali);
        writeln('hasil bagi adalah   : ',bagi:5:3);
        writeln('hasil tambah adalah : ',tambah);
        writeln('hasil kurang adalah : ',kurang);
        writeln('hasil modulo adalah : ',modulo);
        writeln('hasil div adalah    : ' ,dive);
    readln;
end; 
procedure makanan;
var 
    m:string;
    n:char;
begin
    writeln('Pilihlah makanan di bawah ini untuk melihat harga: ');
    writeln('A. Bakso Bulat ');
    writeln('B. Nasi Goreng');
    writeln('C. Mie Goreng');
    writeln('D. Ayam Bakar');
    writeln('E. Mie Aceh');
    writeln;
    writeln;
    writeln('Masukkan kode menu ');readln(n);
     if (n= 'A') or (n='a') then
        begin 
            writeln('Bakso Bulat harga Rp. 15000');
        end
    else if (n= 'B') or (n='b') then
        begin
            writeln('Nasi Goreng harga Rp. 20000');
        end
    else if (n= 'C') or (n='c') then
        begin
            writeln('Mie Goreng harga Rp. 50000');
        end
    else if (n= 'D') or (n='d') then
        begin
            writeln('Ayam Bakar harga Rp. 10000');
        end
    else if (n= 'E') or (n='e') then
        begin
            writeln('Mie Aceh harga Rp. 10000');
        end;
end;
procedure kelulusan;
type
Array_1 = array[1..5,1..4] of real;
var
i,j,k,n : integer;
Table : Array_1;
Mean,Avg: real;
begin
    clrscr;
        write('Masukkan jumlah siswa (Maks 5) : ');readln(n);
        writeln;
        if (n > 5) then
        begin
            clrscr;
            writeln('Jumlah maksimum siswa adalah 5!');
        end
        else
        begin
        for i := 1 to n do
        begin 
            for j := 1 to 4 do
            begin
                if (j = 1) then
                    begin
                     write('Masukkan nilai Tugas mahasiswa ke-',i,': ');readln(Table[i,j]);
                    end
                else if (j = 2) then 
                    begin
                     write('Masukkan nilai Kuis mahasiswa ke-',i,' : ');readln(Table[i,j]);
                    end
                else if (j = 3) then 
                    begin
                     write('Masukkan nilai UTS mahasiswa ke-',i,'  : ');readln(Table[i,j]);
                    end
                else 
                    begin
                     write('Masukkan nilai UAS mahasiswa ke-',i,'  : ');readln(Table[i,j]);
                 writeln;
            end;          
        end;
    end;
    clrscr;
    Avg := 0;
    for i :=  1 to n do
    begin 
        for j := 1 to 4 do
            begin
                Avg := Avg + Table[i,j];
            end;
        Mean := Avg/4 ;
        if (Mean >= 70) then
          begin
            writeln('Rata-rata nilai mahasiswa ke-',i,' adalah: ',Mean:3:2,' (Lulus)');
          end
        else
          begin
            writeln('Rata-rata nilai mahasiswa ke-',i,' adalah: ',Mean:3:2,' (Tidak Lulus)');
          end;
         Avg := 0;
        end;
    end;
    writeln;
    readln;
end;
var
pil : integer;
ulangi :char;
begin
    repeat
         clrscr;
            clrscr;
            writeln('============================ ');
            writeln('|     Pilihan Program      | ');
            writeln('============================ ');
            writeln('1. Biodata Mahasiswa         ');
            writeln('2. Menentukan Tahun Kabisat  ');
            writeln('3. kalkulator                ');
            writeln('4. Menu Makanan              ');
            writeln('5. Menentukan Kelulusan Nilai');
            writeln('6. Exit                      ');
            writeln('=============================');
            writeln('Masukkan Nomor Pilihan Program 1-6');
            readln(pil);
            case pil of
            1: begin
            datanama;
            end; 
            2: begin
            thnkabisat;
            end;
            3: begin
            kalkulator;
            end;
            4: begin
            makanan;
            end;
            5: begin 
            kelulusan;
            end;
            6: begin
            writeln('Terima Kasih');
            halt;
            end;
            else writeln('Masukkan inputan 1 sampai 6 saja !');
            end;
            writeln('Mau ulangi program? ');
            write  ('Tekan Y untuk mengulang dan tekan tombol lain untuk berhenti : ');
         readln(ulangi);
    until upcase(ulangi) <> 'Y';
readln;
end.