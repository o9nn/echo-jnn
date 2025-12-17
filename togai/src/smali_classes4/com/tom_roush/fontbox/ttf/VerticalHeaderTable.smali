.class public Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;
.super Lcom/tom_roush/fontbox/ttf/TTFTable;
.source "VerticalHeaderTable.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "vhea"


# instance fields
.field private advanceHeightMax:I

.field private ascender:S

.field private caretOffset:S

.field private caretSlopeRise:S

.field private caretSlopeRun:S

.field private descender:S

.field private lineGap:S

.field private metricDataFormat:S

.field private minBottomSideBearing:S

.field private minTopSideBearing:S

.field private numberOfVMetrics:I

.field private reserved1:S

.field private reserved2:S

.field private reserved3:S

.field private reserved4:S

.field private version:F

.field private yMaxExtent:S


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    return-void
.end method


# virtual methods
.method public getAdvanceHeightMax()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->advanceHeightMax:I

    return v0
.end method

.method public getAscender()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->ascender:S

    return v0
.end method

.method public getCaretOffset()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->caretOffset:S

    return v0
.end method

.method public getCaretSlopeRise()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->caretSlopeRise:S

    return v0
.end method

.method public getCaretSlopeRun()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->caretSlopeRun:S

    return v0
.end method

.method public getDescender()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->descender:S

    return v0
.end method

.method public getLineGap()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->lineGap:S

    return v0
.end method

.method public getMetricDataFormat()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->metricDataFormat:S

    return v0
.end method

.method public getMinBottomSideBearing()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->minBottomSideBearing:S

    return v0
.end method

.method public getMinTopSideBearing()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->minTopSideBearing:S

    return v0
.end method

.method public getNumberOfVMetrics()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->numberOfVMetrics:I

    return v0
.end method

.method public getReserved1()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->reserved1:S

    return v0
.end method

.method public getReserved2()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->reserved2:S

    return v0
.end method

.method public getReserved3()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->reserved3:S

    return v0
.end method

.method public getReserved4()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->reserved4:S

    return v0
.end method

.method public getVersion()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->version:F

    return v0
.end method

.method public getYMaxExtent()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->yMaxExtent:S

    return v0
.end method

.method read(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read32Fixed()F

    move-result p1

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->version:F

    .line 77
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->ascender:S

    .line 78
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->descender:S

    .line 79
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->lineGap:S

    .line 80
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->advanceHeightMax:I

    .line 81
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->minTopSideBearing:S

    .line 82
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->minBottomSideBearing:S

    .line 83
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->yMaxExtent:S

    .line 84
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->caretSlopeRise:S

    .line 85
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->caretSlopeRun:S

    .line 86
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->caretOffset:S

    .line 87
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->reserved1:S

    .line 88
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->reserved2:S

    .line 89
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->reserved3:S

    .line 90
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->reserved4:S

    .line 91
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->metricDataFormat:S

    .line 92
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->numberOfVMetrics:I

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->initialized:Z

    return-void
.end method
