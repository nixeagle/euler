{Alexandre Marcondes - Porject Euler - Problem 5}
program p5(output);

var x : longint;
    i : longint;    
    a : array [1..20] of integer;

begin
    for i := 1 to 20 do
        a[i] := 0;

    x := 0;

    while (a[1] <> 0) and (a[2] <> 0) and (a[3] <> 0) and (a[4] <> 0) and  (a[5] <> 0) and (a[6] <> 0) and (a[7] <> 0) and (a[8] <> 0) and (a[9] <> 0) and (a[10] <> 0) and (a[11] <> 0) and (a[12] <> 0) and (a[13] <> 0) and (a[14] <> 0) and (a[15] <> 0) and (a[16] <> 0) and (a[17] <> 0) and (a[18] <> 0) and (a[19] <> 0) and (a[20] <> 0) do begin
        x := x + 1;
        for i := 1 to 20 do begin
            a[i] := x div i;
        end;
    end;
    writeln (x);
end.

