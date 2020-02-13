
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly Numerics
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module Numerics.exe
// MVID: {5CD46D59-DBEA-49C1-9EE4-166FBFEBEDD9}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY


// =============== CLASS MEMBERS DECLARATION ===================

.class interface private abstract auto ansi INumeric`1<(class INumeric`1<!TSelf>) TSelf>
{
  .method public hidebysig newslot specialname abstract virtual 
          instance !TSelf  get_Magnitude() cil managed
  {
  } // end of method INumeric`1::get_Magnitude

  .method private hidebysig newslot specialname abstract strict virtual static 
          !TSelf  op_Multiply(!TSelf a,
                              !TSelf b) cil managed
  {
  } // end of method INumeric`1::op_Multiply

  .property instance !TSelf Magnitude()
  {
    .get instance !TSelf INumeric`1::get_Magnitude()
  } // end of property INumeric`1::Magnitude
} // end of class INumeric`1

.class interface private abstract auto ansi IAdditiveArithmetic`1<(class IAdditiveArithmetic`1<!TSelf>) TSelf>
       implements class INumeric`1<!TSelf>
{
  .method public hidebysig newslot specialname abstract virtual static 
          !TSelf  get_Zero() cil managed
  {
  } // end of method IAdditiveArithmetic`1::get_Zero

  .method private hidebysig newslot specialname abstract strict virtual static 
          !TSelf  op_Addition(!TSelf a,
                              !TSelf b) cil managed
  {
  } // end of method IAdditiveArithmetic`1::op_Addition

  .method private hidebysig newslot specialname abstract strict virtual static 
          !TSelf  op_Subtraction(!TSelf a,
                                 !TSelf b) cil managed
  {
  } // end of method IAdditiveArithmetic`1::op_Subtraction

  .property !TSelf Zero()
  {
    .get !TSelf IAdditiveArithmetic`1::get_Zero()
  } // end of property IAdditiveArithmetic`1::Zero
} // end of class IAdditiveArithmetic`1

.class private sequential ansi sealed beforefieldinit PartydonkReal
       extends [mscorlib]System.ValueType
       implements class IAdditiveArithmetic`1<valuetype PartydonkReal>,
                  class INumeric`1<valuetype PartydonkReal>
{
  .field private initonly float64 'value'
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(float64 'value') cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float64 PartydonkReal::'value'
    IL_0007:  ret
  } // end of method PartydonkReal::.ctor

  .method public hidebysig newslot specialname virtual final 
          instance valuetype PartydonkReal 
          get_Magnitude() cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float64 PartydonkReal::'value'
    IL_0006:  call       float64 [mscorlib]System.Math::Abs(float64)
    IL_000b:  call       valuetype PartydonkReal PartydonkReal::op_Implicit(float64)
    IL_0010:  ret
  } // end of method PartydonkReal::get_Magnitude

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     float64 PartydonkReal::'value'
    IL_0006:  call       instance string [mscorlib]System.Double::ToString()
    IL_000b:  ret
  } // end of method PartydonkReal::ToString

  .method public hidebysig specialname static 
          valuetype PartydonkReal  get_Zero() cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.r8     0.0
    IL_0009:  call       valuetype PartydonkReal PartydonkReal::op_Implicit(float64)
    IL_000e:  ret
  } // end of method PartydonkReal::get_Zero

  .method public hidebysig specialname static 
          valuetype PartydonkReal  op_Implicit(float64 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void PartydonkReal::.ctor(float64)
    IL_0006:  ret
  } // end of method PartydonkReal::op_Implicit

  .method public hidebysig specialname static 
          valuetype PartydonkReal  op_Multiply(valuetype PartydonkReal a,
                                               valuetype PartydonkReal b) cil managed
  {
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float64 PartydonkReal::'value'
    IL_0006:  ldarg.1
    IL_0007:  ldfld      float64 PartydonkReal::'value'
    IL_000c:  mul
    IL_000d:  call       valuetype PartydonkReal PartydonkReal::op_Implicit(float64)
    IL_0012:  ret
  } // end of method PartydonkReal::op_Multiply

  .method public hidebysig specialname static 
          valuetype PartydonkReal  op_Addition(valuetype PartydonkReal a,
                                               valuetype PartydonkReal b) cil managed
  {
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float64 PartydonkReal::'value'
    IL_0006:  ldarg.1
    IL_0007:  ldfld      float64 PartydonkReal::'value'
    IL_000c:  add
    IL_000d:  call       valuetype PartydonkReal PartydonkReal::op_Implicit(float64)
    IL_0012:  ret
  } // end of method PartydonkReal::op_Addition

  .method public hidebysig specialname static 
          valuetype PartydonkReal  op_Subtraction(valuetype PartydonkReal a,
                                                  valuetype PartydonkReal b) cil managed
  {
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float64 PartydonkReal::'value'
    IL_0006:  ldarg.1
    IL_0007:  ldfld      float64 PartydonkReal::'value'
    IL_000c:  sub
    IL_000d:  call       valuetype PartydonkReal PartydonkReal::op_Implicit(float64)
    IL_0012:  ret
  } // end of method PartydonkReal::op_Subtraction

  .property instance valuetype PartydonkReal
          Magnitude()
  {
    .get instance valuetype PartydonkReal PartydonkReal::get_Magnitude()
  } // end of property PartydonkReal::Magnitude
  .property valuetype PartydonkReal Zero()
  {
    .get valuetype PartydonkReal PartydonkReal::get_Zero()
  } // end of property PartydonkReal::Zero
} // end of class PartydonkReal

.class private abstract auto ansi sealed beforefieldinit Program
       extends [mscorlib]System.Object
{
  .method private hidebysig static !!TAdditiveArithmetic 
          Sum<(class IAdditiveArithmetic`1<!!TAdditiveArithmetic>) TAdditiveArithmetic>(!!TAdditiveArithmetic[] values) cil managed
  {
    .param [1]
    .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       54 (0x36)
    .maxstack  2
    .locals init (!!TAdditiveArithmetic V_0,
             !!TAdditiveArithmetic[] V_1,
             int32 V_2,
             !!TAdditiveArithmetic V_3,
             !!TAdditiveArithmetic V_4)
    IL_0000:  nop
    IL_0001:  constrained. !!TAdditiveArithmetic
    IL_0007:  callvirt   !0 class IAdditiveArithmetic`1<!!TAdditiveArithmetic>::get_Zero()
    IL_000c:  stloc.0
    IL_000d:  nop
    IL_000e:  ldarg.0
    IL_000f:  stloc.1
    IL_0010:  ldc.i4.0
    IL_0011:  stloc.2
    IL_0012:  br.s       IL_0028

    IL_0014:  ldloc.1
    IL_0015:  ldloc.2
    IL_0016:  ldelem     !!TAdditiveArithmetic
    IL_001b:  stloc.3
    IL_001c:  ldloc.0
    IL_001d:  ldloc.3
    IL_001e:  call       !0 class IAdditiveArithmetic`1<!!TAdditiveArithmetic>::op_Addition(!0,
                                                                                            !0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.2
    IL_0025:  ldc.i4.1
    IL_0026:  add
    IL_0027:  stloc.2
    IL_0028:  ldloc.2
    IL_0029:  ldloc.1
    IL_002a:  ldlen
    IL_002b:  conv.i4
    IL_002c:  blt.s      IL_0014

    IL_002e:  ldloc.0
    IL_002f:  stloc.s    V_4
    IL_0031:  br.s       IL_0033

    IL_0033:  ldloc.s    V_4
    IL_0035:  ret
  } // end of method Program::Sum

  .method private hidebysig static void  Main() cil managed
  {
    .entrypoint
    // Code size       65 (0x41)
    .maxstack  4
    IL_0000:  ldc.i4.2
    IL_0001:  newarr     PartydonkReal
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.r8     10
    IL_0011:  call       valuetype PartydonkReal PartydonkReal::op_Implicit(float64)
    IL_0016:  stelem     PartydonkReal
    IL_001b:  dup
    IL_001c:  ldc.i4.1
    IL_001d:  ldc.r8     3.1415926535897931
    IL_0026:  call       valuetype PartydonkReal PartydonkReal::op_Implicit(float64)
    IL_002b:  stelem     PartydonkReal
    IL_0030:  call       !!0 Program::Sum<valuetype PartydonkReal>(!!0[])
    IL_0035:  box        PartydonkReal
    IL_003a:  call       void [mscorlib]System.Console::WriteLine(object)
    IL_003f:  nop
    IL_0040:  ret
  } // end of method Program::Main

} // end of class Program


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
