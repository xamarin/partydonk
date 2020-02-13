 using System;
 using System.Reflection;

interface IPartydonk
{
    void InstanceContract();

    abstract static void StaticContract();

    static void StaticHelper()
    {
    }
}

sealed class Partydonk : IPartydonk
{
    public static void StaticContract()
    {
    }

    public void InstanceContract()
    {
    }
}

static class Program
{
    static void Call<TPartydonk>(TPartydonk partydonk) where TPartydonk : IPartydonk
    {
        TPartydonk.StaticContract(); // OK
        partydonk.InstanceContract(); // OK
        IPartydonk.StaticHelper(); // OK
        
        // IPartydonk.StaticContract(); // TODO: needs error diagnostic
    }

    static void Main()
    {
        Call(new Partydonk());

        foreach (var member in typeof(IPartydonk).GetMembers())
        {
            if (member is MethodBase method)
                Console.WriteLine($"{method}: {method.Attributes}");
            else
                Console.WriteLine(member);
        }
    }
}
