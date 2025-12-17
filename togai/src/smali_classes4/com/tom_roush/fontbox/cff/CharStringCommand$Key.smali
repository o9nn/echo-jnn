.class public Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;
.super Ljava/lang/Object;
.source "CharStringCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/cff/CharStringCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field private keyValues:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;->keyValues:[I

    filled-new-array {p1}, [I

    move-result-object p1

    .line 135
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;->setValue([I)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;->keyValues:[I

    filled-new-array {p1, p2}, [I

    move-result-object p1

    .line 146
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;->setValue([I)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;->keyValues:[I

    .line 156
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;->setValue([I)V

    return-void
.end method

.method private setValue([I)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;->keyValues:[I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 202
    instance-of v0, p1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 204
    check-cast p1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;->keyValues:[I

    .line 205
    aget v2, v0, v1

    const/16 v3, 0xc

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    iget-object v5, p1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;->keyValues:[I

    aget v6, v5, v1

    if-ne v6, v3, :cond_3

    .line 207
    array-length p1, v0

    if-le p1, v4, :cond_1

    array-length p1, v5

    if-le p1, v4, :cond_1

    .line 209
    aget p1, v0, v4

    aget v0, v5, v4

    if-ne p1, v0, :cond_0

    move v1, v4

    :cond_0
    return v1

    .line 211
    :cond_1
    array-length p1, v0

    array-length v0, v5

    if-ne p1, v0, :cond_2

    move v1, v4

    :cond_2
    return v1

    .line 213
    :cond_3
    iget-object p1, p1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;->keyValues:[I

    aget p1, p1, v1

    if-ne v2, p1, :cond_4

    move v1, v4

    :cond_4
    return v1
.end method

.method public getValue()[I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;->keyValues:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;->keyValues:[I

    const/4 v1, 0x0

    .line 189
    aget v1, v0, v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 191
    aget v0, v0, v3

    xor-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;->getValue()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
