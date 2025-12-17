.class public final enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.super Ljava/lang/Enum;
.source "JsonInclude.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonInclude;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Include"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/annotation/JsonInclude$Include;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

.field public static final enum ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

.field public static final enum CUSTOM:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

.field public static final enum NON_ABSENT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

.field public static final enum NON_DEFAULT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

.field public static final enum NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

.field public static final enum NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

.field public static final enum USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 109
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 115
    new-instance v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    const-string v2, "NON_NULL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 130
    new-instance v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    const-string v3, "NON_ABSENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_ABSENT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 177
    new-instance v3, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    const-string v4, "NON_EMPTY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 200
    new-instance v4, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    const-string v5, "NON_DEFAULT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_DEFAULT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 218
    new-instance v5, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    const-string v6, "CUSTOM"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->CUSTOM:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 229
    new-instance v6, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    const-string v7, "USE_DEFAULTS"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    filled-new-array/range {v0 .. v6}, [Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 1

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 103
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 103
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    return-object v0
.end method
