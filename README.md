# Partydonk Projects

<img src="Images/Partydonk.png" width="320" alt="Partydonk Logo" />

## Abstract Static Interface Members

A prototype for supporting static members as part of an interface's contract,
which is a building block for operator support against generic types that
implement an interface.

Changes are required to both the C# language and .NET runtimes:

* [Roslyn Fork](https://github.com/abock/roslyn/tree/dev/abock/asim/asim-playground)
* [.NET Runtime Fork](https://github.com/abock/runtime/tree/dev/abock/asim)

### Example

```csharp
interface INumeric<TSelf> where TSelf : INumeric<TSelf>
{
    abstract static TSelf Zero { get; }
    abstract static TSelf operator +(TSelf a, TSelf b);
}

struct PartydonkReal : INumeric<PartydonkReal>
{
    readonly double value;

    public PartydonkReal(double value)
        => this.value = value;

    public static PartydonkReal Zero { get; } = new PartydonkReal(0.0);
    
    public static PartydonkReal operator +(PartydonkReal a, PartydonkReal b)
        => new PartydonkReal(a.value + b.value);
}

static TNumeric Sum<TNumeric>(IEnumerable<TNumeric> numbers)
    where TNumeric : INumeric<TNumeric>
{
    var sum = TNumeric.Zero;
    foreach (var number in numbers)
        sum += number;
    return sum;
}
```

### Try It Out

_Note: development so far has only happened on macOS. More detailed
instructions are available in the [asim-playground README](https://github.com/abock/roslyn/tree/dev/abock/asim/asim-playground/README.md)_.

```bash
$ git clone https://github.com/abock/roslyn -b dev/abock/asim roslyn-asim
$ cd roslyn-asim/asim-playground
$ make runtime
$ make samples
```

# Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
