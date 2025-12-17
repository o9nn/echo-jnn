.class public final enum Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;
.super Ljava/lang/Enum;
.source "FloatConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant$ConstantPool;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;

.field public static final enum ONE:Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;

.field private static final SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

.field public static final enum TWO:Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;

.field public static final enum ZERO:Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;


# instance fields
.field private final opcode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 33
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;

    const/4 v1, 0x0

    const/16 v2, 0xb

    const-string v3, "ZERO"

    invoke-direct {v0, v3, v1, v2}, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;

    .line 38
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;

    const/4 v2, 0x1

    const/16 v3, 0xc

    const-string v4, "ONE"

    invoke-direct {v1, v4, v2, v3}, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->ONE:Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;

    .line 43
    new-instance v2, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;

    const/4 v3, 0x2

    const/16 v4, 0xd

    const-string v5, "TWO"

    invoke-direct {v2, v5, v3, v4}, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->TWO:Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;

    filled-new-array {v0, v1, v2}, [Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;

    .line 48
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->opcode:I

    return-void
.end method

.method static synthetic access$000()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object v0
.end method

.method public static forValue(F)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;

    return-object p0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->ONE:Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;

    return-object p0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->TWO:Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;

    return-object p0

    .line 80
    :cond_2
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant$ConstantPool;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant$ConstantPool;-><init>(F)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;

    .line 28
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;

    .line 28
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    iget p2, p0, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->opcode:I

    .line 95
    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    sget-object p1, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
