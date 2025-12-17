.class public final enum Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;
.super Ljava/lang/Enum;
.source "ArgumentTypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "PrimitiveTypePrecedence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

.field public static final enum BOOLEAN:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

.field public static final enum BYTE:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

.field public static final enum CHARACTER:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

.field public static final enum SHORT:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;


# instance fields
.field private final score:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 146
    new-instance v0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->BOOLEAN:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    .line 151
    new-instance v1, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    const-string v2, "BYTE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->BYTE:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    .line 156
    new-instance v2, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    const-string v3, "SHORT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->SHORT:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    .line 161
    new-instance v3, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    const-string v4, "INTEGER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->INTEGER:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    .line 166
    new-instance v4, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    const-string v5, "CHARACTER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->CHARACTER:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    .line 171
    new-instance v5, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    const-string v6, "LONG"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->LONG:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    .line 176
    new-instance v6, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    const-string v7, "FLOAT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->FLOAT:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    .line 181
    new-instance v7, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    const-string v8, "DOUBLE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->DOUBLE:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    filled-new-array/range {v0 .. v7}, [Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->$VALUES:[Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->score:I

    return-void
.end method

.method public static forPrimitive(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;
    .locals 3

    .line 204
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->BOOLEAN:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    return-object p0

    .line 206
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->BYTE:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    return-object p0

    .line 208
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->SHORT:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    return-object p0

    .line 210
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->INTEGER:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    return-object p0

    .line 212
    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->CHARACTER:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    return-object p0

    .line 214
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->LONG:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    return-object p0

    .line 216
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->FLOAT:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    return-object p0

    .line 218
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->DOUBLE:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    return-object p0

    .line 221
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a non-void, primitive type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    .line 141
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->$VALUES:[Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    .line 141
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;
    .locals 2

    iget v0, p0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->score:I

    .line 236
    iget p1, p1, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->score:I

    sub-int v1, v0, p1

    if-nez v1, :cond_0

    .line 237
    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->UNKNOWN:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object p1

    :cond_0
    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    .line 239
    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->RIGHT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object p1

    .line 241
    :cond_1
    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->LEFT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object p1
.end method
