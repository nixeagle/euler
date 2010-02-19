
fib : func (n : Int) -> Int
{
    if (n == 0)
    {
        return 0
    }
    else if (n == 1)
    {
        return 1
    }
    else
    {
        return fib(n-1) + fib(n-2)
    }
}
sum := 0
n := 1
while (fib (n) < 4000000)
{
    if (fib(n) % 2 == 0)
    {
        sum += fib(n)
        printf("%i\n", fib(n))
    }
    n += 1
}

printf("%i\n", sum)
