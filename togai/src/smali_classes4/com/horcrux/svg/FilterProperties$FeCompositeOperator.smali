.class final enum Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;
.super Ljava/lang/Enum;
.source "FilterProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/horcrux/svg/FilterProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FeCompositeOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

.field public static final enum ARITHMETIC:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

.field public static final enum ATOP:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

.field public static final enum IN:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

.field public static final enum OUT:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

.field public static final enum OVER:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

.field public static final enum XOR:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

.field private static final typeToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;
    .locals 6

    sget-object v0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->OVER:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    sget-object v1, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->IN:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    sget-object v2, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->OUT:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    sget-object v3, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->ATOP:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    sget-object v4, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->XOR:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    sget-object v5, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->ARITHMETIC:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    filled-new-array/range {v0 .. v5}, [Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 149
    new-instance v0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    const-string v1, "over"

    const-string v2, "OVER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->OVER:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    .line 150
    new-instance v0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    const/4 v1, 0x1

    const-string v2, "in"

    const-string v4, "IN"

    invoke-direct {v0, v4, v1, v2}, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->IN:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    .line 151
    new-instance v0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    const/4 v1, 0x2

    const-string v2, "out"

    const-string v4, "OUT"

    invoke-direct {v0, v4, v1, v2}, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->OUT:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    .line 152
    new-instance v0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    const/4 v1, 0x3

    const-string v2, "atop"

    const-string v4, "ATOP"

    invoke-direct {v0, v4, v1, v2}, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->ATOP:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    .line 153
    new-instance v0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    const/4 v1, 0x4

    const-string v2, "xor"

    const-string v4, "XOR"

    invoke-direct {v0, v4, v1, v2}, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->XOR:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    .line 154
    new-instance v0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    const/4 v1, 0x5

    const-string v2, "arithmetic"

    const-string v4, "ARITHMETIC"

    invoke-direct {v0, v4, v1, v2}, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->ARITHMETIC:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    .line 148
    invoke-static {}, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->$values()[Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    move-result-object v0

    sput-object v0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->$VALUES:[Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->typeToEnum:Ljava/util/Map;

    .line 173
    invoke-static {}, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->values()[Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    sget-object v4, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->typeToEnum:Ljava/util/Map;

    .line 174
    iget-object v5, v2, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->type:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->type:Ljava/lang/String;

    return-void
.end method

.method static getEnum(Ljava/lang/String;)Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;
    .locals 3

    sget-object v0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->typeToEnum:Ljava/util/Map;

    .line 164
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    return-object p0

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown String Value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    .line 148
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    return-object p0
.end method

.method public static values()[Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;
    .locals 1

    sget-object v0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->$VALUES:[Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    .line 148
    invoke-virtual {v0}, [Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->type:Ljava/lang/String;

    return-object v0
.end method
