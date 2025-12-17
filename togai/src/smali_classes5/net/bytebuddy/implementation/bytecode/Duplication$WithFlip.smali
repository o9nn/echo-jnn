.class public final enum Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;
.super Ljava/lang/Enum;
.source "Duplication.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/Duplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "WithFlip"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

.field public static final enum DOUBLE_DOUBLE:Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

.field public static final enum DOUBLE_SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

.field public static final enum SINGLE_DOUBLE:Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

.field public static final enum SINGLE_SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;


# instance fields
.field private final opcode:I

.field private final stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 148
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    const/16 v1, 0x5a

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v3, "SINGLE_SINGLE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->SINGLE_SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    .line 153
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    const/16 v2, 0x5b

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v4, "SINGLE_DOUBLE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->SINGLE_DOUBLE:Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    .line 158
    new-instance v2, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    const/16 v3, 0x5d

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v5, "DOUBLE_SINGLE"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->DOUBLE_SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    .line 163
    new-instance v3, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    const/16 v4, 0x5e

    sget-object v5, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v6, "DOUBLE_DOUBLE"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v3, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->DOUBLE_DOUBLE:Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    filled-new-array {v0, v1, v2, v3}, [Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/bytebuddy/implementation/bytecode/StackSize;",
            ")V"
        }
    .end annotation

    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->opcode:I

    iput-object p4, p0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    .line 143
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    .line 143
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    iget p2, p0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->opcode:I

    .line 197
    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    .line 198
    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
