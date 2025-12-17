.class public final enum Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
.super Ljava/lang/Enum;
.source "JsonFormatTypes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

.field public static final enum ANY:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

.field public static final enum ARRAY:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

.field public static final enum BOOLEAN:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

.field public static final enum INTEGER:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

.field public static final enum NULL:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

.field public static final enum NUMBER:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

.field public static final enum OBJECT:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

.field public static final enum STRING:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

.field private static final _byLCName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 10
    new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    const-string v1, "STRING"

    const/4 v8, 0x0

    invoke-direct {v0, v1, v8}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->STRING:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    .line 11
    new-instance v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    const-string v2, "NUMBER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->NUMBER:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    .line 12
    new-instance v2, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    const-string v3, "INTEGER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->INTEGER:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    .line 13
    new-instance v3, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    const-string v4, "BOOLEAN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->BOOLEAN:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    .line 14
    new-instance v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    const-string v5, "OBJECT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->OBJECT:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    .line 15
    new-instance v5, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    const-string v6, "ARRAY"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->ARRAY:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    .line 16
    new-instance v6, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    const-string v7, "NULL"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v9}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->NULL:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    .line 17
    new-instance v7, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    const-string v9, "ANY"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->ANY:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    filled-new-array/range {v0 .. v7}, [Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->$VALUES:[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->_byLCName:Ljava/util/Map;

    .line 21
    invoke-static {}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->values()[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v8, v1, :cond_0

    aget-object v2, v0, v8

    sget-object v3, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->_byLCName:Ljava/util/Map;

    .line 22
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->_byLCName:Ljava/util/Map;

    .line 33
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
    .locals 1

    const-class v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    .line 8
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->$VALUES:[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    .line 8
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
