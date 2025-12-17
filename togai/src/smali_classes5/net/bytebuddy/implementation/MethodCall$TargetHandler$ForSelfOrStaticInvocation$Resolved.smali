.class public Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Resolved;
.super Ljava/lang/Object;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Resolved"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)V
    .locals 0

    .line 2041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Resolved;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Resolved;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Resolved;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Resolved;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Resolved;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Resolved;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Resolved;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Resolved;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Resolved;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Resolved;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toStackManipulation(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    iget-object p2, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Resolved;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 2057
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result p2

    const-string p3, " from "

    const-string v0, "Cannot invoke "

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2058
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Resolved;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2059
    :cond_1
    :goto_0
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Resolved;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Resolved;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 2060
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Resolved;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 2061
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 2062
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Resolved;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " in "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Resolved;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2064
    :cond_3
    :goto_1
    new-instance p2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 p3, 0x2

    new-array p3, p3, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 2065
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    goto :goto_2

    .line 2067
    :cond_4
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    :goto_2
    const/4 v1, 0x0

    aput-object v0, p3, v1

    .line 2068
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    goto :goto_3

    :cond_5
    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    :goto_3
    check-cast p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v0, 0x1

    aput-object p1, p3, v0

    invoke-direct {p2, p3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p2
.end method
