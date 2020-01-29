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

static class Program
{
    static void Main()
    {
        foreach (var member in typeof(InterfaceWithClassConstraints).GetMembers())
        {
            if (member is MethodBase method)
                Console.WriteLine($"{method}: {method.Attributes}");
            else
                Console.WriteLine(member);
        }
    }
}
