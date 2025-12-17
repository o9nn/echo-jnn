.class public final enum Lnet/bytebuddy/implementation/bytecode/Addition;
.super Ljava/lang/Enum;
.source "Addition.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/Addition;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/Addition;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/Addition;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/bytecode/Addition;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/Addition;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/Addition;


# instance fields
.field private final opcode:I

.field private final stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 30
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/Addition;

    const/16 v1, 0x60

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v3, "INTEGER"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lnet/bytebuddy/implementation/bytecode/Addition;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Addition;->INTEGER:Lnet/bytebuddy/implementation/bytecode/Addition;

    .line 35
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/Addition;

    const/16 v2, 0x61

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v4, "LONG"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lnet/bytebuddy/implementation/bytecode/Addition;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/Addition;->LONG:Lnet/bytebuddy/implementation/bytecode/Addition;

    .line 40
    new-instance v2, Lnet/bytebuddy/implementation/bytecode/Addition;

    const/16 v3, 0x62

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v5, "FLOAT"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lnet/bytebuddy/implementation/bytecode/Addition;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/Addition;->FLOAT:Lnet/bytebuddy/implementation/bytecode/Addition;

    .line 45
    new-instance v3, Lnet/bytebuddy/implementation/bytecode/Addition;

    const/16 v4, 0x63

    sget-object v5, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v6, "DOUBLE"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lnet/bytebuddy/implementation/bytecode/Addition;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v3, Lnet/bytebuddy/implementation/bytecode/Addition;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/Addition;

    filled-new-array {v0, v1, v2, v3}, [Lnet/bytebuddy/implementation/bytecode/Addition;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Addition;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/Addition;

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

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/Addition;->opcode:I

    iput-object p4, p0, Lnet/bytebuddy/implementation/bytecode/Addition;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/Addition;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/Addition;

    .line 25
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/Addition;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/Addition;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/Addition;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/Addition;

    .line 25
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/Addition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/Addition;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    iget p2, p0, Lnet/bytebuddy/implementation/bytecode/Addition;->opcode:I

    .line 79
    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/Addition;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    .line 80
    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toDecreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
