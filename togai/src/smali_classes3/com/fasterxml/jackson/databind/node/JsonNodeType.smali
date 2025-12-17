.class public final enum Lcom/fasterxml/jackson/databind/node/JsonNodeType;
.super Ljava/lang/Enum;
.source "JsonNodeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/databind/node/JsonNodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/node/JsonNodeType;

.field public static final enum ARRAY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

.field public static final enum BINARY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

.field public static final enum BOOLEAN:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

.field public static final enum MISSING:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

.field public static final enum NULL:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

.field public static final enum NUMBER:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

.field public static final enum OBJECT:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

.field public static final enum POJO:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

.field public static final enum STRING:Lcom/fasterxml/jackson/databind/node/JsonNodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 19
    new-instance v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    const-string v1, "ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->ARRAY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    .line 20
    new-instance v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    const-string v2, "BINARY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->BINARY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    .line 21
    new-instance v2, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    const-string v3, "BOOLEAN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->BOOLEAN:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    .line 22
    new-instance v3, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    const-string v4, "MISSING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->MISSING:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    .line 23
    new-instance v4, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    const-string v5, "NULL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->NULL:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    .line 24
    new-instance v5, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    const-string v6, "NUMBER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->NUMBER:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    .line 25
    new-instance v6, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    const-string v7, "OBJECT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->OBJECT:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    .line 26
    new-instance v7, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    const-string v8, "POJO"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->POJO:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    .line 27
    new-instance v8, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    const-string v9, "STRING"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->STRING:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    filled-new-array/range {v0 .. v8}, [Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->$VALUES:[Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/JsonNodeType;
    .locals 1

    const-class v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    .line 17
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/node/JsonNodeType;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->$VALUES:[Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    .line 17
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/node/JsonNodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    return-object v0
.end method
