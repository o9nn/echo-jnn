.class public Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;
.super Ljava/lang/Object;
.source "TypeProxy.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AccessorMethodInvocation"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field private final instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

.field private final specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

.field final synthetic this$2:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;->this$2:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;

    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p3, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;->this$2:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;

    .line 708
    iget-object v0, v0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;->this$1:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;

    invoke-static {v0}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;->access$500(Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;)Lnet/bytebuddy/implementation/MethodAccessorFactory;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    sget-object v2, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;->DEFAULT:Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/implementation/MethodAccessorFactory;->registerAccessorFor(Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    .line 709
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v2, 0x5

    new-array v2, v2, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v3, 0x0

    .line 710
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;->this$2:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;

    .line 711
    invoke-static {v3}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;->access$600(Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 712
    invoke-static {v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->allArgumentsOf(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;

    move-result-object v3

    invoke-virtual {v3, v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;->asBridgeOf(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x3

    .line 713
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v0

    aput-object v0, v2, v3

    iget-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 714
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    const/4 v3, 0x4

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 715
    invoke-virtual {v1, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    check-cast p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;

    iget-object v3, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    iget-object v3, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;->this$2:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;

    iget-object p1, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;->this$2:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;->this$2:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender$AccessorMethodInvocation;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    .line 701
    invoke-interface {v0}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;->isValid()Z

    move-result v0

    return v0
.end method
