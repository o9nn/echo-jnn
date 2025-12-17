.class public final enum Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;
.super Ljava/lang/Enum;
.source "ClassConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant$ForReferenceType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field public static final enum BOOLEAN:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field public static final enum BYTE:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field public static final enum CHARACTER:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field private static final CLASS_TYPE_INTERNAL_NAME:Ljava/lang/String; = "Ljava/lang/Class;"

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field private static final PRIMITIVE_TYPE_FIELD:Ljava/lang/String; = "TYPE"

.field public static final enum SHORT:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field private static final SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

.field public static final enum VOID:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;


# instance fields
.field private final fieldOwnerInternalName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 36
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const-string v3, "VOID"

    invoke-direct {v0, v3, v1, v2}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->VOID:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    .line 41
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Boolean;

    const-string v4, "BOOLEAN"

    invoke-direct {v1, v4, v2, v3}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->BOOLEAN:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    .line 46
    new-instance v2, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/Byte;

    const-string v5, "BYTE"

    invoke-direct {v2, v5, v3, v4}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->BYTE:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    .line 51
    new-instance v3, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const/4 v4, 0x3

    const-class v5, Ljava/lang/Short;

    const-string v6, "SHORT"

    invoke-direct {v3, v6, v4, v5}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v3, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->SHORT:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    .line 56
    new-instance v4, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const/4 v5, 0x4

    const-class v6, Ljava/lang/Character;

    const-string v7, "CHARACTER"

    invoke-direct {v4, v7, v5, v6}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v4, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    .line 61
    new-instance v5, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const/4 v6, 0x5

    const-class v7, Ljava/lang/Integer;

    const-string v8, "INTEGER"

    invoke-direct {v5, v8, v6, v7}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v5, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->INTEGER:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    .line 66
    new-instance v6, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const/4 v7, 0x6

    const-class v8, Ljava/lang/Long;

    const-string v9, "LONG"

    invoke-direct {v6, v9, v7, v8}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v6, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->LONG:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    .line 71
    new-instance v7, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const/4 v8, 0x7

    const-class v9, Ljava/lang/Float;

    const-string v10, "FLOAT"

    invoke-direct {v7, v10, v8, v9}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v7, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->FLOAT:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    .line 76
    new-instance v8, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const/16 v9, 0x8

    const-class v10, Ljava/lang/Double;

    const-string v11, "DOUBLE"

    invoke-direct {v8, v11, v9, v10}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v8, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    filled-new-array/range {v0 .. v8}, [Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    .line 81
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    invoke-static {p3}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->fieldOwnerInternalName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object v0
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 115
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant$ForReferenceType;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant$ForReferenceType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    .line 117
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->BOOLEAN:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    .line 119
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->BYTE:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    .line 121
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->SHORT:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    .line 123
    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    .line 125
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->INTEGER:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    .line 127
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->LONG:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    .line 129
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->FLOAT:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    .line 131
    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    :cond_8
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->VOID:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    .line 31
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    .line 31
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 3

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->fieldOwnerInternalName:Ljava/lang/String;

    const-string v0, "TYPE"

    const-string v1, "Ljava/lang/Class;"

    const/16 v2, 0xb2

    .line 149
    invoke-virtual {p1, v2, p2, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
