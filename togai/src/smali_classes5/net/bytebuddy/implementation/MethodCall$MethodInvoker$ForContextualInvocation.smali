.class public Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForContextualInvocation;
.super Ljava/lang/Object;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForContextualInvocation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForContextualInvocation$Factory;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    .line 2708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForContextualInvocation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForContextualInvocation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForContextualInvocation;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForContextualInvocation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForContextualInvocation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public toStackManipulation(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    .line 2716
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isVirtual()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForContextualInvocation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/method/MethodDescription;->isInvokableOn(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2717
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot invoke "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " on "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForContextualInvocation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2719
    :cond_1
    :goto_0
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isVirtual()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2720
    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object p1

    iget-object p2, p0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForContextualInvocation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p1, p2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;->virtual(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    goto :goto_1

    .line 2721
    :cond_2
    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object p1

    :goto_1
    return-object p1
.end method
