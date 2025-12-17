.class public Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;
.super Ljava/lang/Object;
.source "DoubleConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ConstantPool"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final value:D


# direct methods
.method protected constructor <init>(D)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;->value:D

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 2

    iget-wide v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;->value:D

    .line 123
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 124
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->access$000()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

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
    iget-wide v2, p0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;->value:D

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;

    iget-wide v4, p1, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;->value:D

    cmpl-double p1, v2, v4

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
