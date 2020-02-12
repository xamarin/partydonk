
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly Example
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module Example.exe
// MVID: {8B0FAFCA-601D-4EEF-A7ED-A3908CEABFAF}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY


// =============== CLASS MEMBERS DECLARATION ===================

.class interface private abstract auto ansi InterfaceWithClassConstraints
{
  .method public hidebysig newslot abstract virtual static 
          void  StaticContract() cil managed
  {
  } // end of method InterfaceWithClassConstraints::StaticContract

  .method public hidebysig newslot abstract virtual 
          instance void  InstanceContract() cil managed
  {
  } // end of method InterfaceWithClassConstraints::InstanceContract

  .method public hidebysig static void  StaticHelper() cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method InterfaceWithClassConstraints::StaticHelper

} // end of class InterfaceWithClassConstraints

.class private auto ansi beforefieldinit X
       extends [mscorlib]System.Object
       implements InterfaceWithClassConstraints
{
  .method public hidebysig static void  StaticContract() cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method X::StaticContract

  .method public hidebysig newslot virtual final 
          instance void  InstanceContract() cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method X::InstanceContract

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method X::.ctor

} // end of class X

.class private abstract auto ansi sealed beforefieldinit Program
       extends [mscorlib]System.Object
{
  .method private hidebysig static void  CallStaticContractMethod<(InterfaceWithClassConstraints) T>(!!T t) cil managed
  {
    // Code size       28 (0x1c)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  constrained. !!T
    IL_0007:  callvirt   void InterfaceWithClassConstraints::StaticContract()
    IL_000c:  nop
    IL_000d:  ldarga.s   t
    IL_000f:  constrained. !!T
    IL_0015:  callvirt   instance void InterfaceWithClassConstraints::InstanceContract()
    IL_001a:  nop
    IL_001b:  ret
  } // end of method Program::CallStaticContractMethod

  .method private hidebysig static void  Main() cil managed
  {
    .entrypoint
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  newobj     instance void X::.ctor()
    IL_0006:  call       void Program::CallStaticContractMethod<class X>(!!0)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method Program::Main

} // end of class Program


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
