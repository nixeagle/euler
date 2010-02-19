{Alexandre Marcondes - Project Euler - Problem 2}
program p2(output);

var x, y, z, ret : real;

const top = 4000000;

begin
    x := 1;
    y := 2;
    z := 0;
    ret := y;

    while (x < top) and (y < top) and (z < top) do begin
        z := x + y;
        if ((z mod 2) = 0) then
            ret := ret + z;
        x := z + y;
        if ((x mod 2) = 0) then
            ret := ret + x;
        y := x + z;
        if ((y mod 2) = 0) then
            ret := ret + y;
    end;

    writeln (ret:2:2);
end.
