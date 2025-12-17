.class public Lnet/bytebuddy/implementation/bytecode/member/HandleInvocation;
.super Ljava/lang/Object;
.source "HandleInvocation.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final INVOKE_EXACT:Ljava/lang/String; = "invokeExact"

.field private static final METHOD_HANDLE_NAME:Ljava/lang/String; = "java/lang/invoke/MethodHandle"


# instance fields
.field private final methodType:Lnet/bytebuddy/utility/JavaConstant$MethodType;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/utility/JavaConstant$MethodType;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/HandleInvocation;->methodType:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 6

    const/16 v1, 0xb6

    const-string v2, "java/lang/invoke/MethodHandle"

    const-string v3, "invokeExact"

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/HandleInvocation;->methodType:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    .line 66
    invoke-virtual {p2}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/HandleInvocation;->methodType:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    .line 67
    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result p1

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/HandleInvocation;->methodType:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    invoke-virtual {p2}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getParameterTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeList;->getStackSize()I

    move-result p2

    sub-int/2addr p1, p2

    .line 68
    new-instance p2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p2, p1, v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    return-object p2
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/HandleInvocation;->methodType:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/member/HandleInvocation;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/member/HandleInvocation;->methodType:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/HandleInvocation;->methodType:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
