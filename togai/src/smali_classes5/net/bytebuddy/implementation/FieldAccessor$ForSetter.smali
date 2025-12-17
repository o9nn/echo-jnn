.class public abstract Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;
.super Lnet/bytebuddy/implementation/FieldAccessor;
.source "FieldAccessor.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation$Composable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FieldAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "ForSetter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;,
        Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfFieldValue;,
        Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfReferenceValue;,
        Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfConstantValue;,
        Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfDefaultValue;,
        Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$OfParameterValue;,
        Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/implementation/FieldAccessor;",
        "Lnet/bytebuddy/implementation/Implementation$Composable;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final terminationHandler:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;)V
    .locals 0

    .line 915
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/implementation/FieldAccessor;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    iput-object p4, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;->terminationHandler:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    return-void
.end method

.method static synthetic access$100(Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;)Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;
    .locals 0

    .line 899
    iget-object p0, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;->terminationHandler:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    return-object p0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 4

    .line 923
    new-instance v0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .line 924
    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;->initialize(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    .line 925
    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {v3, p1}, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;->prepare(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;

    move-result-object p1

    invoke-direct {v0, p0, v1, v2, p1}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Object;Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/FieldAccessor;->equals(Ljava/lang/Object;)Z

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;->terminationHandler:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    check-cast p1, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;

    iget-object p1, p1, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;->terminationHandler:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/implementation/FieldAccessor;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;->terminationHandler:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected abstract initialize(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract resolve(Ljava/lang/Object;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ")",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
        }
    .end annotation
.end method
