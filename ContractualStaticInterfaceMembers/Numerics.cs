 using System;

interface INumeric<TSelf> where TSelf : INumeric<TSelf>
{
    TSelf Magnitude { get; }
    abstract static TSelf operator *(TSelf a, TSelf b);
}

interface IAdditiveArithmetic<TSelf> : INumeric<TSelf> where TSelf : IAdditiveArithmetic<TSelf>
{
    abstract static TSelf Zero { get; }
    abstract static TSelf operator +(TSelf a, TSelf b);
    abstract static TSelf operator -(TSelf a, TSelf b);
}

struct PartydonkReal : IAdditiveArithmetic<PartydonkReal>
{
    readonly double value;

    public PartydonkReal(double value)
        => this.value = value;

    public PartydonkReal Magnitude => Math.Abs(value);

    public override string ToString()
        => value.ToString();

    public static PartydonkReal Zero => 0.0;

    public static implicit operator PartydonkReal(double value)
        => new PartydonkReal(value);

    public static PartydonkReal operator*(PartydonkReal a, PartydonkReal b)
        => a.value * b.value;

    public static PartydonkReal operator+(PartydonkReal a, PartydonkReal b)
        => a.value + b.value;

    public static PartydonkReal operator-(PartydonkReal a, PartydonkReal b)
        => a.value - b.value;
}

static class Program
{
    static TAdditiveArithmetic Sum<TAdditiveArithmetic>(params TAdditiveArithmetic[] values)
        where TAdditiveArithmetic : IAdditiveArithmetic<TAdditiveArithmetic>
    {
        var sum = TAdditiveArithmetic.Zero;
        foreach (var value in values)
            sum += value;
        return sum;
    }

    static void Main()
        => Console.WriteLine(Sum<PartydonkReal>(10, Math.PI));
}
