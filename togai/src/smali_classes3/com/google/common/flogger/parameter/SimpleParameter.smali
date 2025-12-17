.class public final Lcom/google/common/flogger/parameter/SimpleParameter;
.super Lcom/google/common/flogger/parameter/Parameter;
.source "SimpleParameter.java"


# static fields
.field private static final DEFAULT_PARAMETERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/common/flogger/backend/FormatChar;",
            "[",
            "Lcom/google/common/flogger/parameter/SimpleParameter;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_CACHED_PARAMETERS:I = 0xa


# instance fields
.field private final formatChar:Lcom/google/common/flogger/backend/FormatChar;

.field private final formatString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 41
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/common/flogger/backend/FormatChar;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 43
    invoke-static {}, Lcom/google/common/flogger/backend/FormatChar;->values()[Lcom/google/common/flogger/backend/FormatChar;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 44
    invoke-static {v4}, Lcom/google/common/flogger/parameter/SimpleParameter;->createParameterArray(Lcom/google/common/flogger/backend/FormatChar;)[Lcom/google/common/flogger/parameter/SimpleParameter;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/parameter/SimpleParameter;->DEFAULT_PARAMETERS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(ILcom/google/common/flogger/backend/FormatChar;Lcom/google/common/flogger/backend/FormatOptions;)V
    .locals 0

    .line 80
    invoke-direct {p0, p3, p1}, Lcom/google/common/flogger/parameter/Parameter;-><init>(Lcom/google/common/flogger/backend/FormatOptions;I)V

    const-string p1, "format char"

    .line 81
    invoke-static {p2, p1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/flogger/backend/FormatChar;

    iput-object p1, p0, Lcom/google/common/flogger/parameter/SimpleParameter;->formatChar:Lcom/google/common/flogger/backend/FormatChar;

    .line 83
    invoke-virtual {p3}, Lcom/google/common/flogger/backend/FormatOptions;->isDefault()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p2}, Lcom/google/common/flogger/backend/FormatChar;->getDefaultFormatString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {p3, p2}, Lcom/google/common/flogger/parameter/SimpleParameter;->buildFormatString(Lcom/google/common/flogger/backend/FormatOptions;Lcom/google/common/flogger/backend/FormatChar;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/common/flogger/parameter/SimpleParameter;->formatString:Ljava/lang/String;

    return-void
.end method

.method static buildFormatString(Lcom/google/common/flogger/backend/FormatOptions;Lcom/google/common/flogger/backend/FormatChar;)Ljava/lang/String;
    .locals 2

    .line 92
    invoke-virtual {p1}, Lcom/google/common/flogger/backend/FormatChar;->getChar()C

    move-result p1

    .line 93
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/FormatOptions;->shouldUpperCase()Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 p1, p1, -0x21

    int-to-char p1, p1

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/common/flogger/backend/FormatOptions;->appendPrintfOptions(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createParameterArray(Lcom/google/common/flogger/backend/FormatChar;)[Lcom/google/common/flogger/parameter/SimpleParameter;
    .locals 5

    const/16 v0, 0xa

    new-array v1, v0, [Lcom/google/common/flogger/parameter/SimpleParameter;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 53
    new-instance v3, Lcom/google/common/flogger/parameter/SimpleParameter;

    invoke-static {}, Lcom/google/common/flogger/backend/FormatOptions;->getDefault()Lcom/google/common/flogger/backend/FormatOptions;

    move-result-object v4

    invoke-direct {v3, v2, p0, v4}, Lcom/google/common/flogger/parameter/SimpleParameter;-><init>(ILcom/google/common/flogger/backend/FormatChar;Lcom/google/common/flogger/backend/FormatOptions;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static of(ILcom/google/common/flogger/backend/FormatChar;Lcom/google/common/flogger/backend/FormatOptions;)Lcom/google/common/flogger/parameter/SimpleParameter;
    .locals 1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 70
    invoke-virtual {p2}, Lcom/google/common/flogger/backend/FormatOptions;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lcom/google/common/flogger/parameter/SimpleParameter;->DEFAULT_PARAMETERS:Ljava/util/Map;

    .line 71
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/common/flogger/parameter/SimpleParameter;

    aget-object p0, p1, p0

    return-object p0

    .line 73
    :cond_0
    new-instance v0, Lcom/google/common/flogger/parameter/SimpleParameter;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/flogger/parameter/SimpleParameter;-><init>(ILcom/google/common/flogger/backend/FormatChar;Lcom/google/common/flogger/backend/FormatOptions;)V

    return-object v0
.end method


# virtual methods
.method protected accept(Lcom/google/common/flogger/parameter/ParameterVisitor;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/flogger/parameter/SimpleParameter;->formatChar:Lcom/google/common/flogger/backend/FormatChar;

    .line 99
    invoke-virtual {p0}, Lcom/google/common/flogger/parameter/SimpleParameter;->getFormatOptions()Lcom/google/common/flogger/backend/FormatOptions;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/google/common/flogger/parameter/ParameterVisitor;->visit(Ljava/lang/Object;Lcom/google/common/flogger/backend/FormatChar;Lcom/google/common/flogger/backend/FormatOptions;)V

    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/parameter/SimpleParameter;->formatString:Ljava/lang/String;

    return-object v0
.end method
