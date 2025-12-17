.class public final enum Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;
.super Ljava/lang/Enum;
.source "JsonValueFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum COLOR:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum DATE:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum DATE_TIME:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum EMAIL:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum HOST_NAME:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum IPV6:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum IP_ADDRESS:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum PHONE:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum REGEX:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum STYLE:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum TIME:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum URI:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum UTC_MILLISEC:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum UUID:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;


# instance fields
.field private final _desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 16
    new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const/4 v1, 0x0

    const-string v2, "color"

    const-string v3, "COLOR"

    invoke-direct {v0, v3, v1, v2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->COLOR:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 23
    new-instance v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const/4 v2, 0x1

    const-string v3, "date"

    const-string v4, "DATE"

    invoke-direct {v1, v4, v2, v3}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->DATE:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 30
    new-instance v2, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const/4 v3, 0x2

    const-string v4, "date-time"

    const-string v5, "DATE_TIME"

    invoke-direct {v2, v5, v3, v4}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->DATE_TIME:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 35
    new-instance v3, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const/4 v4, 0x3

    const-string v5, "email"

    const-string v6, "EMAIL"

    invoke-direct {v3, v6, v4, v5}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->EMAIL:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 40
    new-instance v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const/4 v5, 0x4

    const-string v6, "host-name"

    const-string v7, "HOST_NAME"

    invoke-direct {v4, v7, v5, v6}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->HOST_NAME:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 45
    new-instance v5, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const/4 v6, 0x5

    const-string v7, "ip-address"

    const-string v8, "IP_ADDRESS"

    invoke-direct {v5, v8, v6, v7}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->IP_ADDRESS:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 50
    new-instance v6, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const/4 v7, 0x6

    const-string v8, "ipv6"

    const-string v9, "IPV6"

    invoke-direct {v6, v9, v7, v8}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->IPV6:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 55
    new-instance v7, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const/4 v8, 0x7

    const-string v9, "phone"

    const-string v10, "PHONE"

    invoke-direct {v7, v10, v8, v9}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->PHONE:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 61
    new-instance v8, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const/16 v9, 0x8

    const-string v10, "regex"

    const-string v11, "REGEX"

    invoke-direct {v8, v11, v9, v10}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->REGEX:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 67
    new-instance v9, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const/16 v10, 0x9

    const-string v11, "style"

    const-string v12, "STYLE"

    invoke-direct {v9, v12, v10, v11}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->STYLE:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 74
    new-instance v10, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const/16 v11, 0xa

    const-string v12, "time"

    const-string v13, "TIME"

    invoke-direct {v10, v13, v11, v12}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->TIME:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 79
    new-instance v11, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const/16 v12, 0xb

    const-string v13, "uri"

    const-string v14, "URI"

    invoke-direct {v11, v14, v12, v13}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->URI:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 87
    new-instance v12, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const/16 v13, 0xc

    const-string v14, "utc-millisec"

    const-string v15, "UTC_MILLISEC"

    invoke-direct {v12, v15, v13, v14}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->UTC_MILLISEC:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 94
    new-instance v13, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const/16 v14, 0xd

    const-string v15, "uuid"

    move-object/from16 v16, v12

    const-string v12, "UUID"

    invoke-direct {v13, v12, v14, v15}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->UUID:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    move-object/from16 v12, v16

    filled-new-array/range {v0 .. v13}, [Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->$VALUES:[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->_desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;
    .locals 1

    const-class v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 10
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->$VALUES:[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 10
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->_desc:Ljava/lang/String;

    return-object v0
.end method
