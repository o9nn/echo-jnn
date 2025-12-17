.class Lcom/tom_roush/fontbox/cmap/CIDRange;
.super Ljava/lang/Object;
.source "CIDRange.java"


# instance fields
.field private final cid:I

.field private final from:C

.field private to:C


# direct methods
.method constructor <init>(CCI)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lcom/tom_roush/fontbox/cmap/CIDRange;->from:C

    iput-char p2, p0, Lcom/tom_roush/fontbox/cmap/CIDRange;->to:C

    iput p3, p0, Lcom/tom_roush/fontbox/cmap/CIDRange;->cid:I

    return-void
.end method


# virtual methods
.method public extend(CCI)Z
    .locals 2

    iget-char v0, p0, Lcom/tom_roush/fontbox/cmap/CIDRange;->to:C

    add-int/lit8 v1, v0, 0x1

    if-ne p1, v1, :cond_0

    iget p1, p0, Lcom/tom_roush/fontbox/cmap/CIDRange;->cid:I

    add-int/2addr p1, v0

    iget-char v0, p0, Lcom/tom_roush/fontbox/cmap/CIDRange;->from:C

    sub-int/2addr p1, v0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    if-ne p3, p1, :cond_0

    iput-char p2, p0, Lcom/tom_roush/fontbox/cmap/CIDRange;->to:C

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public map(C)I
    .locals 2

    iget-char v0, p0, Lcom/tom_roush/fontbox/cmap/CIDRange;->from:C

    if-gt v0, p1, :cond_0

    iget-char v1, p0, Lcom/tom_roush/fontbox/cmap/CIDRange;->to:C

    if-gt p1, v1, :cond_0

    iget v1, p0, Lcom/tom_roush/fontbox/cmap/CIDRange;->cid:I

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    return v1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public unmap(I)I
    .locals 3

    iget v0, p0, Lcom/tom_roush/fontbox/cmap/CIDRange;->cid:I

    if-gt v0, p1, :cond_0

    iget-char v1, p0, Lcom/tom_roush/fontbox/cmap/CIDRange;->to:C

    iget-char v2, p0, Lcom/tom_roush/fontbox/cmap/CIDRange;->from:C

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    add-int/2addr v2, p1

    return v2

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
