
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
// MVID: {8F2024A2-6B06-45A9-8741-791A3218C387}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY


// =============== CLASS MEMBERS DECLARATION ===================

.class interface private abstract auto ansi IPartydonk
{
  .method public hidebysig newslot abstract virtual 
          instance void  InstanceContract() cil managed
  {
  } // end of method IPartydonk::InstanceContract

  .method public hidebysig newslot abstract virtual static 
          void  StaticContractMethod() cil managed
  {
  } // end of method IPartydonk::StaticContractMethod

  .method public hidebysig newslot abstract virtual static 
          void  StaticContractMethod(bool a) cil managed
  {
  } // end of method IPartydonk::StaticContractMethod

  .method public hidebysig newslot specialname abstract virtual static 
          bool  get_StaticContractProperty() cil managed
  {
  } // end of method IPartydonk::get_StaticContractProperty

  .method public hidebysig static void  StaticHelper() cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method IPartydonk::StaticHelper

  .property bool StaticContractProperty()
  {
    .get bool IPartydonk::get_StaticContractProperty()
  } // end of property IPartydonk::StaticContractProperty
} // end of class IPartydonk

.class private auto ansi sealed beforefieldinit Partydonk
       extends [mscorlib]System.Object
       implements IPartydonk
{
  .method public hidebysig static void  StaticContract() cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method Partydonk::StaticContract

  .method public hidebysig newslot virtual final 
          instance void  InstanceContract() cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method Partydonk::InstanceContract

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Partydonk::.ctor

} // end of class Partydonk

.class private abstract auto ansi sealed beforefieldinit Program
       extends [mscorlib]System.Object
{
  .method private hidebysig static void  Call<(IPartydonk) TPartydonk>(!!TPartydonk partydonk) cil managed
  {
    // Code size       65 (0x41)
    .maxstack  1
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  constrained. !!TPartydonk
    IL_0007:  callvirt   void IPartydonk::StaticContractMethod()
    IL_000c:  nop
    IL_000d:  ldc.i4.1
    IL_000e:  constrained. !!TPartydonk
    IL_0014:  callvirt   void IPartydonk::StaticContractMethod(bool)
    IL_0019:  nop
    IL_001a:  call       void IPartydonk::StaticHelper()
    IL_001f:  nop
    IL_0020:  constrained. !!TPartydonk
    IL_0026:  callvirt   bool IPartydonk::get_StaticContractProperty()
    IL_002b:  stloc.0
    IL_002c:  ldarga.s   partydonk
    IL_002e:  constrained. !!TPartydonk
    IL_0034:  callvirt   instance void IPartydonk::InstanceContract()
    IL_0039:  nop
    IL_003a:  call       void IPartydonk::StaticHelper()
    IL_003f:  nop
    IL_0040:  ret
  } // end of method Program::Call

  .method private hidebysig static void  Main() cil managed
  {
    .entrypoint
    // Code size       104 (0x68)
    .maxstack  3
    .locals init ([mscorlib]System.Reflection.MemberInfo[] V_0,
             int32 V_1,
             [mscorlib]System.Reflection.MemberInfo V_2,
             [mscorlib]System.Reflection.MethodBase V_3,
             bool V_4)
    IL_0000:  nop
    IL_0001:  newobj     instance void Partydonk::.ctor()
    IL_0006:  call       void Program::Call<class Partydonk>(!!0)
    IL_000b:  nop
    IL_000c:  nop
    IL_000d:  ldtoken    IPartydonk
    IL_0012:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_0017:  call       instance [mscorlib]System.Reflection.MemberInfo[] [mscorlib]System.Type::GetMembers()
    IL_001c:  stloc.0
    IL_001d:  ldc.i4.0
    IL_001e:  stloc.1
    IL_001f:  br.s       IL_0061

    IL_0021:  ldloc.0
    IL_0022:  ldloc.1
    IL_0023:  ldelem.ref
    IL_0024:  stloc.2
    IL_0025:  nop
    IL_0026:  ldloc.2
    IL_0027:  isinst     [mscorlib]System.Reflection.MethodBase
    IL_002c:  stloc.3
    IL_002d:  ldloc.3
    IL_002e:  ldnull
    IL_002f:  cgt.un
    IL_0031:  stloc.s    V_4
    IL_0033:  ldloc.s    V_4
    IL_0035:  brfalse.s  IL_0055

    IL_0037:  ldstr      "{0}: {1}"
    IL_003c:  ldloc.3
    IL_003d:  ldloc.3
    IL_003e:  callvirt   instance [mscorlib]System.Reflection.MethodAttributes [mscorlib]System.Reflection.MethodBase::get_Attributes()
    IL_0043:  box        [mscorlib]System.Reflection.MethodAttributes
    IL_0048:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_004d:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0052:  nop
    IL_0053:  br.s       IL_005c

    IL_0055:  ldloc.2
    IL_0056:  call       void [mscorlib]System.Console::WriteLine(object)
    IL_005b:  nop
    IL_005c:  nop
    IL_005d:  ldloc.1
    IL_005e:  ldc.i4.1
    IL_005f:  add
    IL_0060:  stloc.1
    IL_0061:  ldloc.1
    IL_0062:  ldloc.0
    IL_0063:  ldlen
    IL_0064:  conv.i4
    IL_0065:  blt.s      IL_0021

    IL_0067:  ret
  } // end of method Program::Main

} // end of class Program


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
