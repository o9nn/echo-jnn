.class public Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;
.super Ljava/lang/Object;
.source "GlyfCompositeComp.java"


# static fields
.field protected static final ARGS_ARE_XY_VALUES:S = 0x2s

.field protected static final ARG_1_AND_2_ARE_WORDS:S = 0x1s

.field protected static final MORE_COMPONENTS:S = 0x20s

.field protected static final ROUND_XY_TO_GRID:S = 0x4s

.field protected static final USE_MY_METRICS:S = 0x200s

.field protected static final WE_HAVE_AN_X_AND_Y_SCALE:S = 0x40s

.field protected static final WE_HAVE_A_SCALE:S = 0x8s

.field protected static final WE_HAVE_A_TWO_BY_TWO:S = 0x80s

.field protected static final WE_HAVE_INSTRUCTIONS:S = 0x100s


# instance fields
.field private final argument1:S

.field private final argument2:S

.field private firstContour:I

.field private firstIndex:I

.field private final flags:S

.field private final glyphIndex:I

.field private point1:I

.field private point2:I

.field private scale01:D

.field private scale10:D

.field private xscale:D

.field private xtranslate:I

.field private yscale:D

.field private ytranslate:I


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->xscale:D

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->yscale:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->scale01:D

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->scale10:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->xtranslate:I

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->ytranslate:I

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->point1:I

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->point2:I

    .line 92
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    iput-short v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->flags:S

    .line 93
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->glyphIndex:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v1

    iput-short v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->argument1:S

    .line 99
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v1

    iput-short v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->argument2:S

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedByte()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->argument1:S

    .line 104
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedByte()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->argument2:S

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    iget-short v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->argument1:S

    iput v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->xtranslate:I

    iget-short v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->argument2:S

    iput v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->ytranslate:I

    goto :goto_1

    :cond_1
    iget-short v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->argument1:S

    iput v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->point1:I

    iget-short v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->argument2:S

    iput v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->point2:I

    :goto_1
    and-int/lit8 v1, v0, 0x8

    const-wide/high16 v2, 0x40d0000000000000L    # 16384.0

    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    int-to-double v0, p1

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->yscale:D

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->xscale:D

    goto :goto_2

    :cond_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    .line 128
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->xscale:D

    .line 130
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    int-to-double v0, p1

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->yscale:D

    goto :goto_2

    :cond_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    .line 135
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->xscale:D

    .line 137
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->scale01:D

    .line 139
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->scale10:D

    .line 141
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    int-to-double v0, p1

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->yscale:D

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public getArgument1()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->argument1:S

    return v0
.end method

.method public getArgument2()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->argument2:S

    return v0
.end method

.method public getFirstContour()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->firstContour:I

    return v0
.end method

.method public getFirstIndex()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->firstIndex:I

    return v0
.end method

.method public getFlags()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->flags:S

    return v0
.end method

.method public getGlyphIndex()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->glyphIndex:I

    return v0
.end method

.method public getScale01()D
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->scale01:D

    return-wide v0
.end method

.method public getScale10()D
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->scale10:D

    return-wide v0
.end method

.method public getXScale()D
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->xscale:D

    return-wide v0
.end method

.method public getXTranslate()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->xtranslate:I

    return v0
.end method

.method public getYScale()D
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->yscale:D

    return-wide v0
.end method

.method public getYTranslate()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->ytranslate:I

    return v0
.end method

.method public scaleX(II)I
    .locals 4

    int-to-double v0, p1

    iget-wide v2, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->xscale:D

    mul-double/2addr v0, v2

    int-to-double p1, p2

    iget-wide v2, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->scale10:D

    mul-double/2addr p1, v2

    add-double/2addr v0, p1

    double-to-float p1, v0

    .line 295
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public scaleY(II)I
    .locals 4

    int-to-double v0, p1

    iget-wide v2, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->scale01:D

    mul-double/2addr v0, v2

    int-to-double p1, p2

    iget-wide v2, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->yscale:D

    mul-double/2addr p1, v2

    add-double/2addr v0, p1

    double-to-float p1, v0

    .line 307
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public setFirstContour(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->firstContour:I

    return-void
.end method

.method public setFirstIndex(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->firstIndex:I

    return-void
.end method
