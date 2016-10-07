program obdelnicky;
uses crt;
var a,b,c,i,y,x:integer;
begin
        clrscr;
        repeat
        writeln('Zadejte delku strany A:');
        readln(a);
        until (a>2) and (a<81);
        clrscr;
        repeat
        writeln('Zadejte delku strany B:');
        readln(b);
        until (b>2) and (b<26);
        clrscr;
        repeat
        randomize();
        x:=random((28)+1);
        y:=random((28)+1);
        until (x>y) or (x<y);
        gotoxy(1,1);
                begin
                        textcolor(x);
                        textbackground(x);
                        for i:=1 to a do
                        write('5');
                end;
                begin
                        for i:=1 to b do
                        begin
                        gotoxy(1,i);
                        write('5');
                        end;
                end;
        gotoxy(a-a,b);
                begin
                        for i:=1 to a-1 do
                        write('5');
                end;
                begin
                        for i:=1 to b do
                        begin
                                gotoxy(a,i);
                                write('5');
                        end;
                end;
        gotoxy(a-a+2,b-b+2);
                begin
                        for c:=b-b+2 to b-1 do
                        begin
                        gotoxy(a-a+2,c);
                                for i:=a-a+1 to a-2 do
                                begin
                                textcolor(y);
                                textbackground(y);
                                write('5');
                                end;
                        end;
                end;
        repeat
        until keypressed;
end.