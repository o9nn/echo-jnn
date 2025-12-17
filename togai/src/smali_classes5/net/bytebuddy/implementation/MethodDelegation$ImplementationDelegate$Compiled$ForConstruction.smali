.class public Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForConstruction;
.super Ljava/lang/Object;
.source "MethodDelegation.java"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForConstruction"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;",
            ">;)V"
        }
    .end annotation

    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForConstruction;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForConstruction;->records:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForConstruction;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForConstruction;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForConstruction;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForConstruction;->records:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForConstruction;->records:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForConstruction;->records:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForConstruction;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForConstruction;->records:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public invoke()Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;
    .locals 1

    .line 842
    sget-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Simple;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Simple;

    return-object v0
.end method

.method public prepare(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 3

    .line 835
    new-instance p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForConstruction;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/TypeCreation;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    aput-object v2, v0, v1

    invoke-direct {p1, v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p1
.end method
