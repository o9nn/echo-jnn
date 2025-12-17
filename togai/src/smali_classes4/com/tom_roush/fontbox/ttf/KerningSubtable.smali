.class public Lcom/tom_roush/fontbox/ttf/KerningSubtable;
.super Ljava/lang/Object;
.source "KerningSubtable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/fontbox/ttf/KerningSubtable$PairData0Format0;,
        Lcom/tom_roush/fontbox/ttf/KerningSubtable$PairData;
    }
.end annotation


# static fields
.field private static final COVERAGE_CROSS_STREAM:I = 0x4

.field private static final COVERAGE_CROSS_STREAM_SHIFT:I = 0x2

.field private static final COVERAGE_FORMAT:I = 0xff00

.field private static final COVERAGE_FORMAT_SHIFT:I = 0x8

.field private static final COVERAGE_HORIZONTAL:I = 0x1

.field private static final COVERAGE_HORIZONTAL_SHIFT:I = 0x0

.field private static final COVERAGE_MINIMUMS:I = 0x2

.field private static final COVERAGE_MINIMUMS_SHIFT:I = 0x1


# instance fields
.field private crossStream:Z

.field private horizontal:Z

.field private minimums:Z

.field private pairs:Lcom/tom_roush/fontbox/ttf/KerningSubtable$PairData;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBits(III)I
    .locals 0

    and-int/2addr p0, p1

    shr-int/2addr p0, p2

    return p0
.end method

.method private static isBitsSet(III)Z
    .locals 0

    .line 237
    invoke-static {p0, p1, p2}, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->getBits(III)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private readSubtable0(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    const-string v1, "PdfBox-Android"

    if-eqz v0, :cond_0

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported kerning sub-table version: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 185
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_6

    .line 191
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 192
    invoke-static {v0, v3, v2}, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->isBitsSet(III)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->horizontal:Z

    :cond_1
    const/4 v2, 0x2

    .line 196
    invoke-static {v0, v2, v3}, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->isBitsSet(III)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v3, p0, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->minimums:Z

    :cond_2
    const/4 v4, 0x4

    .line 200
    invoke-static {v0, v4, v2}, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->isBitsSet(III)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-boolean v3, p0, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->crossStream:Z

    :cond_3
    const v3, 0xff00

    const/16 v4, 0x8

    .line 204
    invoke-static {v0, v3, v4}, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->getBits(III)I

    move-result v0

    if-nez v0, :cond_4

    .line 207
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->readSubtable0Format0(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V

    goto :goto_0

    :cond_4
    if-ne v0, v2, :cond_5

    .line 211
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->readSubtable0Format2(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V

    goto :goto_0

    .line 215
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Skipped kerning subtable due to an unsupported kerning subtable version: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 188
    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Kerning sub-table too short, got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes, expect 6 or more."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readSubtable0Format0(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/tom_roush/fontbox/ttf/KerningSubtable$PairData0Format0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/ttf/KerningSubtable$PairData0Format0;-><init>(Lcom/tom_roush/fontbox/ttf/KerningSubtable$1;)V

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->pairs:Lcom/tom_roush/fontbox/ttf/KerningSubtable$PairData;

    .line 222
    invoke-interface {v0, p1}, Lcom/tom_roush/fontbox/ttf/KerningSubtable$PairData;->read(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V

    return-void
.end method

.method private readSubtable0Format2(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 1

    const-string p1, "PdfBox-Android"

    const-string v0, "Kerning subtable format 2 not yet supported."

    .line 227
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readSubtable1(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 1

    const-string p1, "PdfBox-Android"

    const-string v0, "Kerning subtable format 1 not yet supported."

    .line 232
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getKerning(II)I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->pairs:Lcom/tom_roush/fontbox/ttf/KerningSubtable$PairData;

    if-nez v0, :cond_0

    const-string p1, "PdfBox-Android"

    const-string p2, "No kerning subtable data available due to an unsupported kerning subtable version"

    .line 171
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 174
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/tom_roush/fontbox/ttf/KerningSubtable$PairData;->getKerning(II)I

    move-result p1

    return p1
.end method

.method public getKerning([I)[I
    .locals 7

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->pairs:Lcom/tom_roush/fontbox/ttf/KerningSubtable$PairData;

    if-eqz v0, :cond_2

    .line 135
    array-length v0, p1

    .line 136
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 139
    aget v3, p1, v2

    add-int/lit8 v4, v2, 0x1

    move v5, v4

    :goto_1
    if-ge v5, v0, :cond_1

    .line 143
    aget v6, p1, v5

    if-ltz v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, -0x1

    .line 150
    :goto_2
    invoke-virtual {p0, v3, v6}, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->getKerning(II)I

    move-result v3

    aput v3, v1, v2

    move v2, v4

    goto :goto_0

    :cond_2
    const-string p1, "PdfBox-Android"

    const-string v0, "No kerning subtable data available due to an unsupported kerning subtable version"

    .line 155
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_3
    return-object v1
.end method

.method public isHorizontalKerning()Z
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->isHorizontalKerning(Z)Z

    move-result v0

    return v0
.end method

.method public isHorizontalKerning(Z)Z
    .locals 2

    iget-boolean v0, p0, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->horizontal:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->minimums:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->crossStream:Z

    return p1

    :cond_2
    iget-boolean p1, p0, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->crossStream:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method read(Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 67
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->readSubtable0(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 71
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->readSubtable1(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V

    :goto_0
    return-void

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
