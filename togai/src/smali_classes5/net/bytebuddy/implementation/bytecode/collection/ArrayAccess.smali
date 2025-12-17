.class public final enum Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;
.super Ljava/lang/Enum;
.source "ArrayAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Putter;,
        Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

.field public static final enum BYTE:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

.field public static final enum CHARACTER:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

.field public static final enum REFERENCE:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

.field public static final enum SHORT:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;


# instance fields
.field private final loadOpcode:I

.field private final stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

.field private final storeOpcode:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 39
    new-instance v6, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    const-string v1, "BYTE"

    const/4 v2, 0x0

    const/16 v3, 0x33

    const/16 v4, 0x54

    sget-object v5, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;-><init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v6, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->BYTE:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    .line 44
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    const-string v8, "SHORT"

    const/4 v9, 0x1

    const/16 v10, 0x35

    const/16 v11, 0x56

    sget-object v12, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;-><init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->SHORT:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    .line 49
    new-instance v2, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    const-string v14, "CHARACTER"

    const/4 v15, 0x2

    const/16 v16, 0x34

    const/16 v17, 0x55

    sget-object v18, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;-><init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    .line 54
    new-instance v3, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    const-string v8, "INTEGER"

    const/4 v9, 0x3

    const/16 v10, 0x2e

    const/16 v11, 0x4f

    sget-object v12, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;-><init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v3, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->INTEGER:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    .line 59
    new-instance v4, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    const-string v14, "LONG"

    const/4 v15, 0x4

    const/16 v16, 0x2f

    const/16 v17, 0x50

    sget-object v18, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;-><init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v4, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->LONG:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    .line 64
    new-instance v5, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    const-string v8, "FLOAT"

    const/4 v9, 0x5

    const/16 v10, 0x30

    const/16 v11, 0x51

    sget-object v12, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;-><init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v5, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->FLOAT:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    .line 69
    new-instance v7, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    const-string v14, "DOUBLE"

    const/4 v15, 0x6

    const/16 v16, 0x31

    const/16 v17, 0x52

    sget-object v18, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;-><init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v7, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    .line 74
    new-instance v14, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    const-string v9, "REFERENCE"

    const/4 v10, 0x7

    const/16 v11, 0x32

    const/16 v12, 0x53

    sget-object v13, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;-><init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v14, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v7}, [Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lnet/bytebuddy/implementation/bytecode/StackSize;",
            ")V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->loadOpcode:I

    iput p4, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->storeOpcode:I

    iput-object p5, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-void
.end method

.method static synthetic access$000(Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;)I
    .locals 0

    .line 34
    iget p0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->loadOpcode:I

    return p0
.end method

.method static synthetic access$100(Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;)Lnet/bytebuddy/implementation/bytecode/StackSize;
    .locals 0

    .line 34
    iget-object p0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-object p0
.end method

.method static synthetic access$200(Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;)I
    .locals 0

    .line 34
    iget p0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->storeOpcode:I

    return p0
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;
    .locals 3

    .line 111
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    return-object p0

    .line 113
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->SHORT:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    return-object p0

    .line 117
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    return-object p0

    .line 119
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->INTEGER:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    return-object p0

    .line 121
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->LONG:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    return-object p0

    .line 123
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->FLOAT:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    return-object p0

    .line 125
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    return-object p0

    .line 128
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a legal array type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_0
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->BYTE:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    .line 34
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    .line 34
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    return-object v0
.end method


# virtual methods
.method public forEach(Ljava/util/List;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;)",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 160
    new-instance v4, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v5, 0x4

    new-array v5, v5, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    sget-object v6, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    aput-object v6, v5, v1

    add-int/lit8 v6, v2, 0x1

    .line 162
    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v5, v7

    new-instance v2, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;

    invoke-direct {v2, p0}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;-><init>(Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;)V

    const/4 v7, 0x2

    aput-object v2, v5, v7

    const/4 v2, 0x3

    aput-object v3, v5, v2

    invoke-direct {v4, v5}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 160
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v6

    goto :goto_0

    .line 167
    :cond_0
    new-instance p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    invoke-direct {p1, v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public load()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 138
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;-><init>(Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;)V

    return-object v0
.end method

.method public store()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 147
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Putter;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Putter;-><init>(Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;)V

    return-object v0
.end method
