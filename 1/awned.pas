{Alexandre Marcondes - Project Euler - Problem 1}
program p1(output);

var i : integer;
    ret : real;

const top = 1000;
      bottom = 1;

begin
    ret := 0;

    for i := 1 to 999 do begin
        if ((i mod 3) = 0) or ((i mod 5) = 0) then
            ret := ret + i;
    end;

    writeln (ret:2:2);
end.
