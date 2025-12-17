.class public Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$TwoBytePush;
.super Ljava/lang/Object;
.source "IntegerConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TwoBytePush"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final value:S


# direct methods
.method protected constructor <init>(S)V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$TwoBytePush;->value:S

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    const/16 p2, 0x11

    iget-short v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$TwoBytePush;->value:S

    .line 216
    invoke-virtual {p1, p2, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    .line 217
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->access$000()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

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
    iget-short v2, p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$TwoBytePush;->value:S

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$TwoBytePush;

    iget-short p1, p1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$TwoBytePush;->value:S

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget-short v1, p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$TwoBytePush;->value:S

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
