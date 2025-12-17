.class public final Lcom/google/common/flogger/context/Tags;
.super Ljava/lang/Object;
.source "Tags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/context/Tags$LightweightTagMap;,
        Lcom/google/common/flogger/context/Tags$Builder;,
        Lcom/google/common/flogger/context/Tags$KeyValuePair;,
        Lcom/google/common/flogger/context/Tags$Type;
    }
.end annotation


# static fields
.field private static final EMPTY_TAGS:Lcom/google/common/flogger/context/Tags;

.field private static final KEY_VALUE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/common/flogger/context/Tags$KeyValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALUE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final map:Lcom/google/common/flogger/context/Tags$LightweightTagMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 115
    new-instance v0, Lcom/google/common/flogger/context/Tags$1;

    invoke-direct {v0}, Lcom/google/common/flogger/context/Tags$1;-><init>()V

    sput-object v0, Lcom/google/common/flogger/context/Tags;->VALUE_COMPARATOR:Ljava/util/Comparator;

    .line 140
    new-instance v0, Lcom/google/common/flogger/context/Tags$2;

    invoke-direct {v0}, Lcom/google/common/flogger/context/Tags$2;-><init>()V

    sput-object v0, Lcom/google/common/flogger/context/Tags;->KEY_VALUE_COMPARATOR:Ljava/util/Comparator;

    .line 156
    new-instance v0, Lcom/google/common/flogger/context/Tags;

    new-instance v1, Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/google/common/flogger/context/Tags;-><init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap;)V

    sput-object v0, Lcom/google/common/flogger/context/Tags;->EMPTY_TAGS:Lcom/google/common/flogger/context/Tags;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap;)V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/flogger/context/Tags;->map:Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap;Lcom/google/common/flogger/context/Tags$1;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/google/common/flogger/context/Tags;-><init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 289
    new-instance v0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    invoke-static {p1}, Lcom/google/common/flogger/util/Checks;->checkMetadataIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "value"

    invoke-static {p2, v1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/common/flogger/context/Tags;-><init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap;)V

    return-void
.end method

.method static synthetic access$400()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/common/flogger/context/Tags;->VALUE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$600()Lcom/google/common/flogger/context/Tags;
    .locals 1

    sget-object v0, Lcom/google/common/flogger/context/Tags;->EMPTY_TAGS:Lcom/google/common/flogger/context/Tags;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/common/flogger/context/Tags;->KEY_VALUE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public static builder()Lcom/google/common/flogger/context/Tags$Builder;
    .locals 1

    .line 245
    new-instance v0, Lcom/google/common/flogger/context/Tags$Builder;

    invoke-direct {v0}, Lcom/google/common/flogger/context/Tags$Builder;-><init>()V

    return-object v0
.end method

.method public static empty()Lcom/google/common/flogger/context/Tags;
    .locals 1

    sget-object v0, Lcom/google/common/flogger/context/Tags;->EMPTY_TAGS:Lcom/google/common/flogger/context/Tags;

    return-object v0
.end method

.method public static of(Ljava/lang/String;D)Lcom/google/common/flogger/context/Tags;
    .locals 1

    .line 282
    new-instance v0, Lcom/google/common/flogger/context/Tags;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/common/flogger/context/Tags;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;J)Lcom/google/common/flogger/context/Tags;
    .locals 1

    .line 274
    new-instance v0, Lcom/google/common/flogger/context/Tags;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/common/flogger/context/Tags;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/flogger/context/Tags;
    .locals 1

    .line 258
    new-instance v0, Lcom/google/common/flogger/context/Tags;

    invoke-direct {v0, p0, p1}, Lcom/google/common/flogger/context/Tags;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;Z)Lcom/google/common/flogger/context/Tags;
    .locals 1

    .line 266
    new-instance v0, Lcom/google/common/flogger/context/Tags;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/common/flogger/context/Tags;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/context/Tags;->map:Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 324
    instance-of v0, p1, Lcom/google/common/flogger/context/Tags;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/flogger/context/Tags;

    iget-object p1, p1, Lcom/google/common/flogger/context/Tags;->map:Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    iget-object v0, p0, Lcom/google/common/flogger/context/Tags;->map:Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    invoke-virtual {p1, v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/context/Tags;->map:Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    .line 330
    invoke-virtual {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->hashCode()I

    move-result v0

    not-int v0, v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/context/Tags;->map:Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    .line 305
    invoke-virtual {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public merge(Lcom/google/common/flogger/context/Tags;)Lcom/google/common/flogger/context/Tags;
    .locals 3

    .line 311
    invoke-virtual {p1}, Lcom/google/common/flogger/context/Tags;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/flogger/context/Tags;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 319
    :cond_1
    new-instance v0, Lcom/google/common/flogger/context/Tags;

    new-instance v1, Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    iget-object v2, p0, Lcom/google/common/flogger/context/Tags;->map:Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    iget-object p1, p1, Lcom/google/common/flogger/context/Tags;->map:Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    invoke-direct {v1, v2, p1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;-><init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap;Lcom/google/common/flogger/context/Tags$LightweightTagMap;)V

    invoke-direct {v0, v1}, Lcom/google/common/flogger/context/Tags;-><init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/context/Tags;->map:Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    .line 340
    invoke-virtual {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
