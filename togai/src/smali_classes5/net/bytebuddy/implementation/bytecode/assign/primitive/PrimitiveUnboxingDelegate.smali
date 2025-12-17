.class public final enum Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;
.super Ljava/lang/Enum;
.source "PrimitiveUnboxingDelegate.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ImplicitlyTypedUnboxingResponsible;,
        Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$UnboxingResponsible;,
        Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

.field public static final enum BOOLEAN:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

.field public static final enum BYTE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

.field public static final enum CHARACTER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

.field public static final enum SHORT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;


# instance fields
.field private final primitiveType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

.field private final unboxingMethodDescriptor:Ljava/lang/String;

.field private final unboxingMethodName:Ljava/lang/String;

.field private final wrapperType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 36
    new-instance v8, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v5, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v6, "booleanValue"

    const-string v7, "()Z"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackSize;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->BOOLEAN:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    .line 41
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v10, "BYTE"

    const/4 v11, 0x1

    const-class v12, Ljava/lang/Byte;

    sget-object v13, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v14, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v15, "byteValue"

    const-string v16, "()B"

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackSize;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->BYTE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    .line 46
    new-instance v2, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v18, "SHORT"

    const/16 v19, 0x2

    const-class v20, Ljava/lang/Short;

    sget-object v21, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v22, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v23, "shortValue"

    const-string v24, "()S"

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v24}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackSize;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->SHORT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    .line 51
    new-instance v3, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v10, "CHARACTER"

    const/4 v11, 0x3

    const-class v12, Ljava/lang/Character;

    sget-object v13, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v14, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v15, "charValue"

    const-string v16, "()C"

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackSize;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    .line 56
    new-instance v4, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v18, "INTEGER"

    const/16 v19, 0x4

    const-class v20, Ljava/lang/Integer;

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v22, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v23, "intValue"

    const-string v24, "()I"

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v24}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackSize;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->INTEGER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    .line 61
    new-instance v5, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v10, "LONG"

    const/4 v11, 0x5

    const-class v12, Ljava/lang/Long;

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v14, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v15, "longValue"

    const-string v16, "()J"

    move-object v9, v5

    invoke-direct/range {v9 .. v16}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackSize;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->LONG:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    .line 66
    new-instance v6, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v18, "FLOAT"

    const/16 v19, 0x6

    const-class v20, Ljava/lang/Float;

    sget-object v21, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v22, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v23, "floatValue"

    const-string v24, "()F"

    move-object/from16 v17, v6

    invoke-direct/range {v17 .. v24}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackSize;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->FLOAT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    .line 71
    new-instance v7, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v10, "DOUBLE"

    const/4 v11, 0x7

    const-class v12, Ljava/lang/Double;

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v14, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v15, "doubleValue"

    const-string v16, "()D"

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackSize;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    filled-new-array/range {v0 .. v7}, [Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackSize;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/implementation/bytecode/StackSize;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    invoke-virtual {p5}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    .line 113
    invoke-static {p3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->wrapperType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 114
    invoke-static {p4}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->primitiveType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p6, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->unboxingMethodName:Ljava/lang/String;

    iput-object p7, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->unboxingMethodDescriptor:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 0

    .line 31
    iget-object p0, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->primitiveType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object p0
.end method

.method protected static forPrimitive(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;
    .locals 3

    .line 126
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->BOOLEAN:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    return-object p0

    .line 128
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->BYTE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    return-object p0

    .line 130
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->SHORT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    return-object p0

    .line 132
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    return-object p0

    .line 134
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->INTEGER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    return-object p0

    .line 136
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->LONG:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    return-object p0

    .line 138
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->FLOAT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    return-object p0

    .line 140
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    return-object p0

    .line 143
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected non-void primitive type instead of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forReferenceType(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$UnboxingResponsible;
    .locals 3

    .line 162
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_8

    .line 164
    const-class v0, Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->BOOLEAN:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    return-object p0

    .line 166
    :cond_0
    const-class v0, Ljava/lang/Byte;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->BYTE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    return-object p0

    .line 168
    :cond_1
    const-class v0, Ljava/lang/Short;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->SHORT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    return-object p0

    .line 170
    :cond_2
    const-class v0, Ljava/lang/Character;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    return-object p0

    .line 172
    :cond_3
    const-class v0, Ljava/lang/Integer;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->INTEGER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    return-object p0

    .line 174
    :cond_4
    const-class v0, Ljava/lang/Long;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->LONG:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    return-object p0

    .line 176
    :cond_5
    const-class v0, Ljava/lang/Float;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 177
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->FLOAT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    return-object p0

    .line 178
    :cond_6
    const-class v0, Ljava/lang/Double;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    return-object p0

    .line 181
    :cond_7
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ImplicitlyTypedUnboxingResponsible;

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ImplicitlyTypedUnboxingResponsible;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-object v0

    .line 163
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected reference type instead of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    .line 31
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    .line 31
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 6

    const/16 v1, 0xb6

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->wrapperType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 206
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->unboxingMethodName:Ljava/lang/String;

    iget-object v4, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->unboxingMethodDescriptor:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p1

    .line 205
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object p1
.end method

.method protected getWrapperType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->wrapperType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 191
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
