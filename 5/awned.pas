{Alexandre Marcondes - Porject Euler - Problem 5}
program p5(output);

var x : longint;
    i : longint;    
    a : array [1..20] of integer;

begin
    for i := 1 to 20 do
        a[i] := 0;

    x := 0;

    while (a[1] <> 0) and (a[2] <> 0) and (a[3] <> 0) and (a[4] <> 0) do begin
        x := x + 1;
        for i := 1 to 20 do
            a[i] = x div i
    end;
end.
