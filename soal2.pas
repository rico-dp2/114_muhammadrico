program ketupat;
uses crt;

var
i,a,p,b,x,y: integer;
star : char;

begin
    clrscr;

    star := '*';
    i := 1;
    b := 3;
    x := 5;
    y := 1;

    while (i<=7) do
    begin
        for p:= 1 to b do
        begin
            write(' ');
        end;

        b := b -1;

        for a := 1 to i do
        begin
            write(star);
        end;
        writeln('');
        i +=2;
    end;

    while (x>=1) do
    begin
        for p:= 1 to y do
        begin
            write(' ');
        end;

        y := y +1;

        for a := 1 to x do
        begin
            write(star);
        end;
        writeln('');
        x -=2;
    end;

end.
