.class public Lcom/google/android/vending/licensing/ResponseData;
.super Ljava/lang/Object;
.source "ResponseData.java"


# instance fields
.field public extra:Ljava/lang/String;

.field public nonce:I

.field public packageName:Ljava/lang/String;

.field public responseCode:I

.field public timestamp:J

.field public userId:Ljava/lang/String;

.field public versionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/android/vending/licensing/ResponseData;
    .locals 6

    const/16 v0, 0x3a

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const-string v3, ""

    const/4 v4, 0x0

    if-ne v1, v0, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move-object v3, p0

    :goto_0
    move-object p0, v1

    :goto_1
    const-string v0, "|"

    .line 56
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 57
    array-length v0, p0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    .line 61
    new-instance v0, Lcom/google/android/vending/licensing/ResponseData;

    invoke-direct {v0}, Lcom/google/android/vending/licensing/ResponseData;-><init>()V

    iput-object v3, v0, Lcom/google/android/vending/licensing/ResponseData;->extra:Ljava/lang/String;

    .line 63
    aget-object v1, p0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/vending/licensing/ResponseData;->responseCode:I

    .line 64
    aget-object v1, p0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/vending/licensing/ResponseData;->nonce:I

    const/4 v1, 0x2

    .line 65
    aget-object v1, p0, v1

    iput-object v1, v0, Lcom/google/android/vending/licensing/ResponseData;->packageName:Ljava/lang/String;

    const/4 v1, 0x3

    .line 66
    aget-object v1, p0, v1

    iput-object v1, v0, Lcom/google/android/vending/licensing/ResponseData;->versionCode:Ljava/lang/String;

    const/4 v1, 0x4

    .line 68
    aget-object v1, p0, v1

    iput-object v1, v0, Lcom/google/android/vending/licensing/ResponseData;->userId:Ljava/lang/String;

    const/4 v1, 0x5

    .line 69
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/vending/licensing/ResponseData;->timestamp:J

    return-object v0

    .line 58
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong number of fields."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/google/android/vending/licensing/ResponseData;->responseCode:I

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/google/android/vending/licensing/ResponseData;->nonce:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/vending/licensing/ResponseData;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/vending/licensing/ResponseData;->versionCode:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/vending/licensing/ResponseData;->userId:Ljava/lang/String;

    iget-wide v6, p0, Lcom/google/android/vending/licensing/ResponseData;->timestamp:J

    .line 78
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "|"

    .line 76
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
