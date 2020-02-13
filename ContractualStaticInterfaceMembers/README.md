# Abstract Static Interface Members

Since C# 8 (and since the beginning of time for CIL), interfaces have been
allowed to declare static members. However, these members do not 
participate in the interface's contract, and must have a body:

```csharp
interface IPartydonk
{
    static void Helper()
        => Console.WriteLine("Hello!");
}
```

This prototype introduces static members on interfaces that _do_ 
participate in the interface's contract. They are _abstract_:

```csharp
interface IPartydonk
{
    abstract static void StaticContract();
}
```

For any type that implementes `IPartydonk`, it must implement a static
method `StaticContract`:

```csharp
class WildPartydonk : IPartydonk
{
    // SYNTAX TODO? require an 'override' decl modifier here?
    public static void StaticContract()
        => Console.WriteLine("Wild Hello!");
}
```

The callsite for `StaticContract` is exposed through generics:

```csharp
static void Call<T>() where T : IPartydonk
    => T.StaticContract();
```

This new feature will require runtime support for new (repurposed) CIL
semantics. Notably:

* On the interface declaration, these new contractual static members
  will be declared with the `abstract virtual static` declaration
  modifiers.
  ```cil
  .class interface private abstract auto ansi IPartydonk
  {
    .method public hidebysig newslot abstract virtual static
          void  StaticContract() cil managed
    {
    }
  }
  ```
* At the callsite, the `constrained.` + `callvirt` opcodes are [re]used,
  but the `callvirt` will be static (`instance` is missing from the IL).
  ```cil
  constrained. !!TPartydonk
  callvirt void IPartydonk::StaticHelper()
  ```

## Special Operator Support

Additionally, to support abstract static operators as interface members,
the following changes are made to C#:

* Explicit `public` accessibility is not required for an `abstract static`
  operator declaration on an interface.

* Special cased support for "self" referring generics:

  ```csharp
  interface IReal<TSelf> where TSelf : IReal<TSelf>
  {
      abstract static TSelf operator +(TSelf a, TSelf b);
  }

## Run the Sample

```bash
$ mono csc/csc.exe Example.cs
$ ikdasm Example.exe
```

```bash
$ mono csc/csc.exe Numerics.cs
$ ikdasm Numerics.exe
```