.class public Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;
.super Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;
.source "FieldAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OfParameterValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/implementation/FieldAccessor$ForSetter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final index:I


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;I)V
    .locals 0

    .line 1012
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;)V

    iput p5, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;->index:I

    return-void
.end method


# virtual methods
.method public andThen(Lnet/bytebuddy/implementation/Implementation$Composable;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 8

    .line 1062
    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;

    new-instance v7, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;

    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    iget-object v3, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    sget-object v5, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;->NON_OPERATIONAL:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    iget v6, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;->index:I

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;I)V

    invoke-direct {v0, v7, p1}, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;-><init>(Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/implementation/Implementation$Composable;)V

    return-object v0
.end method

.method public andThen(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/implementation/Implementation;
    .locals 9

    .line 1051
    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/Implementation;

    new-instance v8, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;

    iget-object v3, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    iget-object v4, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v5, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    sget-object v6, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;->NON_OPERATIONAL:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    iget v7, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;->index:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;I)V

    const/4 v2, 0x0

    aput-object v8, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/Implementation$Compound;-><init>([Lnet/bytebuddy/implementation/Implementation;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;->index:I

    check-cast p1, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;

    iget p1, p1, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;->index:I

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;->index:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected bridge synthetic initialize(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;
    .locals 0

    .line 990
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;->initialize(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Void;

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

    .line 990
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;->resolve(Ljava/lang/Void;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    return-object p1
.end method

.method protected resolve(Ljava/lang/Void;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    .line 1037
    invoke-interface {p4}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result p1

    iget p3, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;->index:I

    if-le p1, p3, :cond_0

    .line 1040
    new-instance p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 p3, 0x2

    new-array p3, p3, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 1041
    invoke-interface {p4}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;->index:I

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->load(Lnet/bytebuddy/description/method/ParameterDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    iget-object v0, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    .line 1042
    invoke-interface {p4}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p4

    iget v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;->index:I

    invoke-interface {p4, v1}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {p4}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p4

    invoke-interface {p2}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {v0, p4, p2, v1}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p2

    const/4 p4, 0x1

    aput-object p2, p3, p4

    invoke-direct {p1, p3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p1

    .line 1038
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " does not define a parameter with index "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;->index:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
