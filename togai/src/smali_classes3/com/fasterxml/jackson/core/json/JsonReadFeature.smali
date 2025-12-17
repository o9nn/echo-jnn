.class public final enum Lcom/fasterxml/jackson/core/json/JsonReadFeature;
.super Ljava/lang/Enum;
.source "JsonReadFeature.java"

# interfaces
.implements Lcom/fasterxml/jackson/core/FormatFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
        ">;",
        "Lcom/fasterxml/jackson/core/FormatFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/json/JsonReadFeature;

.field public static final enum ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

.field public static final enum ALLOW_JAVA_COMMENTS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

.field public static final enum ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

.field public static final enum ALLOW_LEADING_ZEROS_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

.field public static final enum ALLOW_MISSING_VALUES:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

.field public static final enum ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

.field public static final enum ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

.field public static final enum ALLOW_TRAILING_COMMA:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

.field public static final enum ALLOW_UNESCAPED_CONTROL_CHARS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

.field public static final enum ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

.field public static final enum ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;


# instance fields
.field private final _defaultState:Z

.field private final _mappedFeature:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field private final _mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 28
    new-instance v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v2, "ALLOW_JAVA_COMMENTS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;-><init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonParser$Feature;)V

    sput-object v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_JAVA_COMMENTS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    .line 42
    new-instance v1, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    const/4 v2, 0x1

    sget-object v4, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v5, "ALLOW_YAML_COMMENTS"

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;-><init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonParser$Feature;)V

    sput-object v1, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    .line 56
    new-instance v2, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    const/4 v4, 0x2

    sget-object v5, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v6, "ALLOW_SINGLE_QUOTES"

    invoke-direct {v2, v6, v4, v3, v5}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;-><init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonParser$Feature;)V

    sput-object v2, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    .line 67
    new-instance v4, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    const/4 v5, 0x3

    sget-object v6, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v7, "ALLOW_UNQUOTED_FIELD_NAMES"

    invoke-direct {v4, v7, v5, v3, v6}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;-><init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonParser$Feature;)V

    sput-object v4, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    .line 80
    new-instance v5, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    const/4 v6, 0x4

    sget-object v7, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v8, "ALLOW_UNESCAPED_CONTROL_CHARS"

    invoke-direct {v5, v8, v6, v3, v7}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;-><init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonParser$Feature;)V

    sput-object v5, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_UNESCAPED_CONTROL_CHARS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    .line 92
    new-instance v6, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    const/4 v7, 0x5

    sget-object v8, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v9, "ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER"

    invoke-direct {v6, v9, v7, v3, v8}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;-><init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonParser$Feature;)V

    sput-object v6, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    .line 107
    new-instance v7, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    const/4 v8, 0x6

    sget-object v9, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v10, "ALLOW_LEADING_ZEROS_FOR_NUMBERS"

    invoke-direct {v7, v10, v8, v3, v9}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;-><init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonParser$Feature;)V

    sput-object v7, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_ZEROS_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    .line 121
    new-instance v8, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    const/4 v9, 0x7

    sget-object v10, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v11, "ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS"

    invoke-direct {v8, v11, v9, v3, v10}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;-><init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonParser$Feature;)V

    sput-object v8, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    .line 142
    new-instance v9, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    const/16 v10, 0x8

    sget-object v11, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v12, "ALLOW_NON_NUMERIC_NUMBERS"

    invoke-direct {v9, v12, v10, v3, v11}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;-><init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonParser$Feature;)V

    sput-object v9, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    .line 161
    new-instance v10, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    const/16 v11, 0x9

    sget-object v12, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_MISSING_VALUES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v13, "ALLOW_MISSING_VALUES"

    invoke-direct {v10, v13, v11, v3, v12}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;-><init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonParser$Feature;)V

    sput-object v10, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_MISSING_VALUES:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    .line 183
    new-instance v11, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    const/16 v12, 0xa

    sget-object v13, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_TRAILING_COMMA:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v14, "ALLOW_TRAILING_COMMA"

    invoke-direct {v11, v14, v12, v3, v13}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;-><init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonParser$Feature;)V

    sput-object v11, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_TRAILING_COMMA:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    filled-new-array/range {v0 .. v10}, [Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->$VALUES:[Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonParser$Feature;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/fasterxml/jackson/core/JsonParser$Feature;",
            ")V"
        }
    .end annotation

    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->_defaultState:Z

    const/4 p1, 0x1

    .line 216
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ordinal()I

    move-result p2

    shl-int/2addr p1, p2

    iput p1, p0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->_mask:I

    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->_mappedFeature:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    return-void
.end method

.method public static collectDefaults()I
    .locals 6

    .line 205
    invoke-static {}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->values()[Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 206
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 207
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->getMask()I

    move-result v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/json/JsonReadFeature;
    .locals 1

    const-class v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    .line 11
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/json/JsonReadFeature;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->$VALUES:[Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    .line 11
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/json/JsonReadFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->_defaultState:Z

    return v0
.end method

.method public enabledIn(I)Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->_mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getMask()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->_mask:I

    return v0
.end method

.method public mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->_mappedFeature:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    return-object v0
.end method
