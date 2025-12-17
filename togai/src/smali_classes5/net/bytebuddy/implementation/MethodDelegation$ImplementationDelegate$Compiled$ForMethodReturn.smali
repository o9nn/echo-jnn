.class public Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForMethodReturn;
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
    name = "ForMethodReturn"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

.field private final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;",
            ">;)V"
        }
    .end annotation

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForMethodReturn;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p2, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForMethodReturn;->records:Ljava/util/List;

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForMethodReturn;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    check-cast p1, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForMethodReturn;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForMethodReturn;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForMethodReturn;->records:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForMethodReturn;->records:Ljava/util/List;

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

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForMethodReturn;->records:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForMethodReturn;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForMethodReturn;->records:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public invoke()Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;
    .locals 2

    .line 793
    new-instance v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Virtual;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForMethodReturn;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Virtual;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public prepare(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 3

    .line 781
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForMethodReturn;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 782
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot invoke "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForMethodReturn;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_1
    :goto_0
    new-instance p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForMethodReturn;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    goto :goto_1

    .line 786
    :cond_2
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    :goto_1
    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled$ForMethodReturn;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p1, v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p1
.end method
