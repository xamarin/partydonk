 using System;
 using System.Reflection;

interface InterfaceWithClassConstraints
{
    abstract static void StaticContract();

    void InstanceContract();

    static void StaticHelper()
    {
    }
}

class X : InterfaceWithClassConstraints
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
    static void CallStaticContractMethod<T>(T t) where T : InterfaceWithClassConstraints
    {
        T.StaticContract();
        t.InstanceContract();
    }

    static void Main()
    {
        CallStaticContractMethod(new X());
    }
}
