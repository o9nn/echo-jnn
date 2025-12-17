.class public Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfDefaultValue;
.super Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;
.source "FieldAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OfDefaultValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/implementation/FieldAccessor$ForSetter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;)V
    .locals 0

    .line 1084
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;)V

    return-void
.end method


# virtual methods
.method public andThen(Lnet/bytebuddy/implementation/Implementation$Composable;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 6

    .line 1125
    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;

    new-instance v1, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfDefaultValue;

    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfDefaultValue;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    iget-object v3, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfDefaultValue;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfDefaultValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    sget-object v5, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;->NON_OPERATIONAL:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    invoke-direct {v1, v2, v3, v4, v5}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfDefaultValue;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;)V

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;-><init>(Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/implementation/Implementation$Composable;)V

    return-object v0
.end method

.method public andThen(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/implementation/Implementation;
    .locals 7

    .line 1115
    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/Implementation;

    new-instance v2, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfDefaultValue;

    iget-object v3, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfDefaultValue;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    iget-object v4, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfDefaultValue;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v5, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfDefaultValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    sget-object v6, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;->NON_OPERATIONAL:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    invoke-direct {v2, v3, v4, v5, v6}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfDefaultValue;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/Implementation$Compound;-><init>([Lnet/bytebuddy/implementation/Implementation;)V

    return-object v0
.end method

.method protected bridge synthetic initialize(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;
    .locals 0

    .line 1073
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfDefaultValue;->initialize(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected initialize(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Void;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method

.method protected bridge synthetic resolve(Ljava/lang/Object;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 0

    .line 1073
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfDefaultValue;->resolve(Ljava/lang/Void;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    return-object p1
.end method

.method protected resolve(Ljava/lang/Void;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 0

    .line 1108
    invoke-interface {p2}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    return-object p1
.end method
