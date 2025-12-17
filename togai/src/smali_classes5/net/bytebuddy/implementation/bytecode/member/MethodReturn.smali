.class public final enum Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;
.super Ljava/lang/Enum;
.source "MethodReturn.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

.field public static final enum REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

.field public static final enum VOID:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;


# instance fields
.field private final returnOpcode:I

.field private final size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 33
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    const/16 v1, 0xac

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v3, "INTEGER"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->INTEGER:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    .line 38
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    const/16 v2, 0xaf

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v4, "DOUBLE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    .line 43
    new-instance v2, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    const/16 v3, 0xae

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v5, "FLOAT"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->FLOAT:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    .line 48
    new-instance v3, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    const/16 v4, 0xad

    sget-object v5, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v6, "LONG"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v3, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->LONG:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    .line 53
    new-instance v4, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    const/16 v5, 0xb1

    sget-object v6, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v7, "VOID"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v5, v6}, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v4, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->VOID:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    .line 58
    new-instance v5, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    const/16 v6, 0xb0

    sget-object v7, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v8, "REFERENCE"

    const/4 v9, 0x5

    invoke-direct {v5, v8, v9, v6, v7}, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v5, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    filled-new-array/range {v0 .. v5}, [Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

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

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->returnOpcode:I

    .line 78
    invoke-virtual {p4}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toDecreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 88
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->LONG:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    return-object p0

    .line 91
    :cond_0
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    return-object p0

    .line 93
    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->FLOAT:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    return-object p0

    .line 95
    :cond_2
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->VOID:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    return-object p0

    :cond_3
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->INTEGER:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    return-object p0

    :cond_4
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    .line 28
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    .line 28
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    iget p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->returnOpcode:I

    .line 116
    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
