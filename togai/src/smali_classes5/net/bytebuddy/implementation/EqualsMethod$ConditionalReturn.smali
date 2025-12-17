.class public Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;
.super Ljava/lang/Object;
.source "EqualsMethod.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/EqualsMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ConditionalReturn"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final EMPTY:[Ljava/lang/Object;


# instance fields
.field private final jumpCondition:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    const/4 v0, 0x3

    .line 841
    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;-><init>(II)V

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;->jumpCondition:I

    iput p2, p0, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;->value:I

    return-void
.end method

.method protected static onIdentity()Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;
    .locals 2

    .line 897
    new-instance v0, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;

    const/16 v1, 0xa6

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;-><init>(I)V

    return-object v0
.end method

.method protected static onNonEqualInteger()Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;
    .locals 2

    .line 906
    new-instance v0, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;

    const/16 v1, 0x9f

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;-><init>(I)V

    return-object v0
.end method

.method protected static onNonIdentity()Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;
    .locals 2

    .line 888
    new-instance v0, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;

    const/16 v1, 0xa5

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;-><init>(I)V

    return-object v0
.end method

.method protected static onNonZeroInteger()Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;
    .locals 2

    .line 870
    new-instance v0, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;

    const/16 v1, 0x99

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;-><init>(I)V

    return-object v0
.end method

.method protected static onNullValue()Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;
    .locals 2

    .line 879
    new-instance v0, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;

    const/16 v1, 0xc7

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;-><init>(I)V

    return-object v0
.end method

.method protected static onZeroInteger()Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;
    .locals 2

    .line 861
    new-instance v0, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;

    const/16 v1, 0x9a

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 6

    .line 929
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iget v1, p0, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;->jumpCondition:I

    .line 930
    invoke-virtual {p1, v1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    iget v1, p0, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;->value:I

    .line 931
    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0xac

    .line 932
    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 933
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 934
    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$Context;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object p2

    sget-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V6:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {p2, v0}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x3

    sget-object v5, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;->EMPTY:[Ljava/lang/Object;

    .line 935
    array-length v2, v5

    array-length v4, v5

    move-object v0, p1

    move-object v3, v5

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 937
    :cond_0
    new-instance p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    const/4 p2, -0x1

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

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
    iget v2, p0, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;->jumpCondition:I

    check-cast p1, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;

    iget v3, p1, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;->jumpCondition:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;->value:I

    iget p1, p1, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;->value:I

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget v1, p0, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;->jumpCondition:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;->value:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected returningTrue()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 3

    .line 915
    new-instance v0, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;

    iget v1, p0, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;->jumpCondition:I

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;-><init>(II)V

    return-object v0
.end method
