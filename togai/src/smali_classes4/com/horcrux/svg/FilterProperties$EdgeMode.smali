.class final enum Lcom/horcrux/svg/FilterProperties$EdgeMode;
.super Ljava/lang/Enum;
.source "FilterProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/horcrux/svg/FilterProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EdgeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/horcrux/svg/FilterProperties$EdgeMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/horcrux/svg/FilterProperties$EdgeMode;

.field public static final enum DUPLICATE:Lcom/horcrux/svg/FilterProperties$EdgeMode;

.field public static final enum NONE:Lcom/horcrux/svg/FilterProperties$EdgeMode;

.field public static final enum UNKNOWN:Lcom/horcrux/svg/FilterProperties$EdgeMode;

.field public static final enum WRAP:Lcom/horcrux/svg/FilterProperties$EdgeMode;

.field private static final edgeModeToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/horcrux/svg/FilterProperties$EdgeMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final edgeMode:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/horcrux/svg/FilterProperties$EdgeMode;
    .locals 4

    sget-object v0, Lcom/horcrux/svg/FilterProperties$EdgeMode;->UNKNOWN:Lcom/horcrux/svg/FilterProperties$EdgeMode;

    sget-object v1, Lcom/horcrux/svg/FilterProperties$EdgeMode;->DUPLICATE:Lcom/horcrux/svg/FilterProperties$EdgeMode;

    sget-object v2, Lcom/horcrux/svg/FilterProperties$EdgeMode;->WRAP:Lcom/horcrux/svg/FilterProperties$EdgeMode;

    sget-object v3, Lcom/horcrux/svg/FilterProperties$EdgeMode;->NONE:Lcom/horcrux/svg/FilterProperties$EdgeMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/horcrux/svg/FilterProperties$EdgeMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 42
    new-instance v0, Lcom/horcrux/svg/FilterProperties$EdgeMode;

    const-string v1, "unknown"

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/horcrux/svg/FilterProperties$EdgeMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/FilterProperties$EdgeMode;->UNKNOWN:Lcom/horcrux/svg/FilterProperties$EdgeMode;

    .line 43
    new-instance v0, Lcom/horcrux/svg/FilterProperties$EdgeMode;

    const/4 v1, 0x1

    const-string v2, "duplicate"

    const-string v4, "DUPLICATE"

    invoke-direct {v0, v4, v1, v2}, Lcom/horcrux/svg/FilterProperties$EdgeMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/FilterProperties$EdgeMode;->DUPLICATE:Lcom/horcrux/svg/FilterProperties$EdgeMode;

    .line 44
    new-instance v0, Lcom/horcrux/svg/FilterProperties$EdgeMode;

    const/4 v1, 0x2

    const-string v2, "wrap"

    const-string v4, "WRAP"

    invoke-direct {v0, v4, v1, v2}, Lcom/horcrux/svg/FilterProperties$EdgeMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/FilterProperties$EdgeMode;->WRAP:Lcom/horcrux/svg/FilterProperties$EdgeMode;

    .line 45
    new-instance v0, Lcom/horcrux/svg/FilterProperties$EdgeMode;

    const/4 v1, 0x3

    const-string v2, "none"

    const-string v4, "NONE"

    invoke-direct {v0, v4, v1, v2}, Lcom/horcrux/svg/FilterProperties$EdgeMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/FilterProperties$EdgeMode;->NONE:Lcom/horcrux/svg/FilterProperties$EdgeMode;

    .line 41
    invoke-static {}, Lcom/horcrux/svg/FilterProperties$EdgeMode;->$values()[Lcom/horcrux/svg/FilterProperties$EdgeMode;

    move-result-object v0

    sput-object v0, Lcom/horcrux/svg/FilterProperties$EdgeMode;->$VALUES:[Lcom/horcrux/svg/FilterProperties$EdgeMode;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/horcrux/svg/FilterProperties$EdgeMode;->edgeModeToEnum:Ljava/util/Map;

    .line 64
    invoke-static {}, Lcom/horcrux/svg/FilterProperties$EdgeMode;->values()[Lcom/horcrux/svg/FilterProperties$EdgeMode;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    sget-object v4, Lcom/horcrux/svg/FilterProperties$EdgeMode;->edgeModeToEnum:Ljava/util/Map;

    .line 65
    iget-object v5, v2, Lcom/horcrux/svg/FilterProperties$EdgeMode;->edgeMode:Ljava/lang/String;

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

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/horcrux/svg/FilterProperties$EdgeMode;->edgeMode:Ljava/lang/String;

    return-void
.end method

.method static getEnum(Ljava/lang/String;)Lcom/horcrux/svg/FilterProperties$EdgeMode;
    .locals 3

    sget-object v0, Lcom/horcrux/svg/FilterProperties$EdgeMode;->edgeModeToEnum:Ljava/util/Map;

    .line 55
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/horcrux/svg/FilterProperties$EdgeMode;

    return-object p0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown \'edgeMode\' Value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/horcrux/svg/FilterProperties$EdgeMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/horcrux/svg/FilterProperties$EdgeMode;

    .line 41
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/horcrux/svg/FilterProperties$EdgeMode;

    return-object p0
.end method

.method public static values()[Lcom/horcrux/svg/FilterProperties$EdgeMode;
    .locals 1

    sget-object v0, Lcom/horcrux/svg/FilterProperties$EdgeMode;->$VALUES:[Lcom/horcrux/svg/FilterProperties$EdgeMode;

    .line 41
    invoke-virtual {v0}, [Lcom/horcrux/svg/FilterProperties$EdgeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/horcrux/svg/FilterProperties$EdgeMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lcom/horcrux/svg/FilterProperties$EdgeMode;->edgeMode:Ljava/lang/String;

    return-object v0
.end method
