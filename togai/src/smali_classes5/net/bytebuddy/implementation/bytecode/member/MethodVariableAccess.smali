.class public final enum Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;
.super Ljava/lang/Enum;
.source "MethodVariableAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetIncrementing;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetWriting;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetLoading;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

.field public static final enum REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;


# instance fields
.field private final loadOpcode:I

.field private final size:Lnet/bytebuddy/implementation/bytecode/StackSize;

.field private final storeOpcode:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 41
    new-instance v6, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    const/16 v3, 0x15

    const/16 v4, 0x36

    sget-object v5, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;-><init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v6, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->INTEGER:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    .line 46
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    const-string v8, "LONG"

    const/4 v9, 0x1

    const/16 v10, 0x16

    const/16 v11, 0x37

    sget-object v12, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;-><init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->LONG:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    .line 51
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    const-string v14, "FLOAT"

    const/4 v15, 0x2

    const/16 v16, 0x17

    const/16 v17, 0x38

    sget-object v18, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;-><init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->FLOAT:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    .line 56
    new-instance v2, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    const-string v8, "DOUBLE"

    const/4 v9, 0x3

    const/16 v10, 0x18

    const/16 v11, 0x39

    sget-object v12, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;-><init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    .line 61
    new-instance v3, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    const-string v14, "REFERENCE"

    const/4 v15, 0x4

    const/16 v16, 0x19

    const/16 v17, 0x3a

    sget-object v18, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;-><init>(Ljava/lang/String;IIILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v3, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    filled-new-array {v6, v0, v1, v2, v3}, [Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

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

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadOpcode:I

    iput-object p5, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->size:Lnet/bytebuddy/implementation/bytecode/StackSize;

    iput p4, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->storeOpcode:I

    return-void
.end method

.method static synthetic access$000(Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;)I
    .locals 0

    .line 36
    iget p0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadOpcode:I

    return p0
.end method

.method static synthetic access$100(Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;)Lnet/bytebuddy/implementation/bytecode/StackSize;
    .locals 0

    .line 36
    iget-object p0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->size:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-object p0
.end method

.method static synthetic access$200(Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;)I
    .locals 0

    .line 36
    iget p0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->storeOpcode:I

    return p0
.end method

.method public static allArgumentsOf(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;
    .locals 2

    .line 122
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler;)V

    return-object v0
.end method

.method public static increment(Lnet/bytebuddy/description/method/ParameterDescription;I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 196
    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    move-result-object v0

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getOffset()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->increment(II)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    return-object p0
.end method

.method public static load(Lnet/bytebuddy/description/method/ParameterDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 175
    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    move-result-object v0

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getOffset()I

    move-result p0

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    return-object p0
.end method

.method public static loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    const/4 v1, 0x0

    .line 131
    invoke-virtual {v0, v1}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;
    .locals 1

    .line 98
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->LONG:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    return-object p0

    .line 101
    :cond_0
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    return-object p0

    .line 103
    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->FLOAT:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    return-object p0

    .line 105
    :cond_2
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->INTEGER:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    return-object p0

    .line 106
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Variable type cannot be void"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    return-object p0
.end method

.method public static store(Lnet/bytebuddy/description/method/ParameterDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 185
    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    move-result-object v0

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getOffset()I

    move-result p0

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->storeAt(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    .line 36
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    .line 36
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    return-object v0
.end method


# virtual methods
.method public increment(II)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->INTEGER:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    if-ne p0, v0, :cond_0

    .line 165
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetIncrementing;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetIncrementing;-><init>(II)V

    return-object v0

    .line 163
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot increment type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 141
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetLoading;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetLoading;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;I)V

    return-object v0
.end method

.method public storeAt(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 151
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetWriting;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetWriting;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;I)V

    return-object v0
.end method
