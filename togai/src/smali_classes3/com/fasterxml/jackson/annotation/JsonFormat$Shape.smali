.class public final enum Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
.super Ljava/lang/Enum;
.source "JsonFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Shape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field public static final enum ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field public static final enum ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field public static final enum BINARY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field public static final enum BOOLEAN:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field public static final enum NATURAL:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field public static final enum NUMBER:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field public static final enum NUMBER_FLOAT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field public static final enum NUMBER_INT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field public static final enum OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field public static final enum SCALAR:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field public static final enum STRING:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 156
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 167
    new-instance v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const-string v2, "NATURAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->NATURAL:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 173
    new-instance v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const-string v3, "SCALAR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->SCALAR:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 178
    new-instance v3, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const-string v4, "ARRAY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 183
    new-instance v4, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const-string v5, "OBJECT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 190
    new-instance v5, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const-string v6, "NUMBER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->NUMBER:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 195
    new-instance v6, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const-string v7, "NUMBER_FLOAT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->NUMBER_FLOAT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 201
    new-instance v7, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const-string v8, "NUMBER_INT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->NUMBER_INT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 206
    new-instance v8, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const-string v9, "STRING"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->STRING:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 212
    new-instance v9, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const-string v10, "BOOLEAN"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->BOOLEAN:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 220
    new-instance v10, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const-string v11, "BINARY"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->BINARY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    filled-new-array/range {v0 .. v10}, [Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .locals 1

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 148
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 148
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    return-object v0
.end method


# virtual methods
.method public isNumeric()Z
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->NUMBER:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->NUMBER_INT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->NUMBER_FLOAT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isStructured()Z
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
