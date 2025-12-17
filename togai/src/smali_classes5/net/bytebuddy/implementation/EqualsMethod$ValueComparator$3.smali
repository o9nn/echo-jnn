.class final enum Lnet/bytebuddy/implementation/EqualsMethod$ValueComparator$3;
.super Lnet/bytebuddy/implementation/EqualsMethod$ValueComparator;
.source "EqualsMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/EqualsMethod$ValueComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 566
    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/EqualsMethod$ValueComparator;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/EqualsMethod$1;)V

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    const/16 p2, 0x97

    .line 569
    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 570
    new-instance p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    const/4 p2, -0x2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    return-object p1
.end method
