.class public Lcom/tom_roush/fontbox/cmap/CodespaceRange;
.super Ljava/lang/Object;
.source "CodespaceRange.java"


# instance fields
.field private codeLength:I

.field private end:[I

.field private endBytes:[B

.field private start:[I

.field private startBytes:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->codeLength:I

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->codeLength:I

    .line 46
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    .line 48
    array-length p1, p2

    new-array p1, p1, [B

    goto :goto_0

    .line 50
    :cond_0
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_2

    .line 55
    :goto_0
    array-length v1, p1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->start:[I

    .line 56
    array-length v1, p2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->end:[I

    .line 57
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->start:[I

    .line 59
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->end:[I

    .line 60
    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_1
    array-length p1, p2

    iput p1, p0, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->codeLength:I

    return-void

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The start and the end values must not have different lengths."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCodeLength()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->codeLength:I

    return v0
.end method

.method public getEnd()[B
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->endBytes:[B

    return-object v0
.end method

.method public getStart()[B
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->startBytes:[B

    return-object v0
.end method

.method public isFullMatch([BI)Z
    .locals 3

    iget v0, p0, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->codeLength:I

    const/4 v1, 0x0

    if-eq v0, p2, :cond_0

    return v1

    :cond_0
    move p2, v1

    :goto_0
    iget v0, p0, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->codeLength:I

    if-ge p2, v0, :cond_3

    .line 163
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->start:[I

    .line 164
    aget v2, v2, p2

    if-lt v0, v2, :cond_2

    iget-object v2, p0, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->end:[I

    aget v2, v2, p2

    if-le v0, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public matches([B)Z
    .locals 1

    .line 148
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->isFullMatch([BI)Z

    move-result p1

    return p1
.end method

.method setEnd([B)V
    .locals 3

    iput-object p1, p0, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->endBytes:[B

    .line 106
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->end:[I

    const/4 v0, 0x0

    .line 107
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->end:[I

    .line 109
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setStart([B)V
    .locals 3

    iput-object p1, p0, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->startBytes:[B

    .line 135
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->start:[I

    const/4 v0, 0x0

    .line 136
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->start:[I

    .line 138
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    array-length p1, p1

    iput p1, p0, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->codeLength:I

    return-void
.end method
