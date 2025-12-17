.class public final enum Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;
.super Ljava/lang/Enum;
.source "PrimitiveBoxingDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate$BoxingStackManipulation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

.field public static final enum BOOLEAN:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

.field public static final enum BYTE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

.field public static final enum CHARACTER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

.field public static final enum SHORT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;


# instance fields
.field private final boxingMethodDescriptor:Ljava/lang/String;

.field private final boxingMethodName:Ljava/lang/String;

.field private final size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

.field private final wrapperType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 35
    new-instance v7, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Boolean;

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v5, "valueOf"

    const-string v6, "(Z)Ljava/lang/Boolean;"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;-><init>(Ljava/lang/String;ILjava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackSize;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->BOOLEAN:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    .line 40
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    const-string v9, "BYTE"

    const/4 v10, 0x1

    const-class v11, Ljava/lang/Byte;

    sget-object v12, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v13, "valueOf"

    const-string v14, "(B)Ljava/lang/Byte;"

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;-><init>(Ljava/lang/String;ILjava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackSize;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->BYTE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    .line 45
    new-instance v2, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    const-string v16, "SHORT"

    const/16 v17, 0x2

    const-class v18, Ljava/lang/Short;

    sget-object v19, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v20, "valueOf"

    const-string v21, "(S)Ljava/lang/Short;"

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;-><init>(Ljava/lang/String;ILjava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackSize;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->SHORT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    .line 50
    new-instance v3, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    const-string v9, "CHARACTER"

    const/4 v10, 0x3

    const-class v11, Ljava/lang/Character;

    sget-object v12, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v13, "valueOf"

    const-string v14, "(C)Ljava/lang/Character;"

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;-><init>(Ljava/lang/String;ILjava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackSize;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    .line 55
    new-instance v4, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    const-string v16, "INTEGER"

    const/16 v17, 0x4

    const-class v18, Ljava/lang/Integer;

    sget-object v19, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v20, "valueOf"

    const-string v21, "(I)Ljava/lang/Integer;"

    move-object v15, v4

    invoke-direct/range {v15 .. v21}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;-><init>(Ljava/lang/String;ILjava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackSize;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->INTEGER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    .line 60
    new-instance v5, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    const-string v9, "LONG"

    const/4 v10, 0x5

    const-class v11, Ljava/lang/Long;

    sget-object v12, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v13, "valueOf"

    const-string v14, "(J)Ljava/lang/Long;"

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;-><init>(Ljava/lang/String;ILjava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackSize;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->LONG:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    .line 65
    new-instance v6, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    const-string v16, "FLOAT"

    const/16 v17, 0x6

    const-class v18, Ljava/lang/Float;

    sget-object v19, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v20, "valueOf"

    const-string v21, "(F)Ljava/lang/Float;"

    move-object v15, v6

    invoke-direct/range {v15 .. v21}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;-><init>(Ljava/lang/String;ILjava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackSize;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->FLOAT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    .line 70
    new-instance v15, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    const-string v9, "DOUBLE"

    const/4 v10, 0x7

    const-class v11, Ljava/lang/Double;

    sget-object v12, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v13, "valueOf"

    const-string v14, "(D)Ljava/lang/Double;"

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;-><init>(Ljava/lang/String;ILjava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackSize;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    move-object v7, v15

    filled-new-array/range {v0 .. v7}, [Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackSize;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/implementation/bytecode/StackSize;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    invoke-static {p3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->wrapperType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 105
    invoke-virtual {p4}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toDecreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    iput-object p5, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->boxingMethodName:Ljava/lang/String;

    iput-object p6, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->boxingMethodDescriptor:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 0

    .line 30
    iget-object p0, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->wrapperType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object p0
.end method

.method static synthetic access$100(Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->boxingMethodName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->boxingMethodDescriptor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    .line 30
    iget-object p0, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object p0
.end method

.method public static forPrimitive(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;
    .locals 3

    .line 117
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->BOOLEAN:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    return-object p0

    .line 119
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->BYTE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    return-object p0

    .line 121
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->SHORT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    return-object p0

    .line 123
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    return-object p0

    .line 125
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->INTEGER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    return-object p0

    .line 127
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->LONG:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    return-object p0

    .line 129
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->FLOAT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    return-object p0

    .line 131
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    return-object p0

    .line 134
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a non-void, primitive type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    .line 30
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    .line 30
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    return-object v0
.end method


# virtual methods
.method public assignBoxedTo(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    .line 148
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate$BoxingStackManipulation;

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->wrapperType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {p2, v1, p1, p3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate$BoxingStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0
.end method
