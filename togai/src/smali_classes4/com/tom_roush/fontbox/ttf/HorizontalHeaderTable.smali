.class public Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;
.super Lcom/tom_roush/fontbox/ttf/TTFTable;
.source "HorizontalHeaderTable.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "hhea"


# instance fields
.field private advanceWidthMax:I

.field private ascender:S

.field private caretSlopeRise:S

.field private caretSlopeRun:S

.field private descender:S

.field private lineGap:S

.field private metricDataFormat:S

.field private minLeftSideBearing:S

.field private minRightSideBearing:S

.field private numberOfHMetrics:I

.field private reserved1:S

.field private reserved2:S

.field private reserved3:S

.field private reserved4:S

.field private reserved5:S

.field private version:F

.field private xMaxExtent:S


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    return-void
.end method


# virtual methods
.method public getAdvanceWidthMax()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->advanceWidthMax:I

    return v0
.end method

.method public getAscender()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->ascender:S

    return v0
.end method

.method public getCaretSlopeRise()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->caretSlopeRise:S

    return v0
.end method

.method public getCaretSlopeRun()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->caretSlopeRun:S

    return v0
.end method

.method public getDescender()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->descender:S

    return v0
.end method

.method public getLineGap()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->lineGap:S

    return v0
.end method

.method public getMetricDataFormat()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->metricDataFormat:S

    return v0
.end method

.method public getMinLeftSideBearing()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->minLeftSideBearing:S

    return v0
.end method

.method public getMinRightSideBearing()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->minRightSideBearing:S

    return v0
.end method

.method public getNumberOfHMetrics()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->numberOfHMetrics:I

    return v0
.end method

.method public getReserved1()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->reserved1:S

    return v0
.end method

.method public getReserved2()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->reserved2:S

    return v0
.end method

.method public getReserved3()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->reserved3:S

    return v0
.end method

.method public getReserved4()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->reserved4:S

    return v0
.end method

.method public getReserved5()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->reserved5:S

    return v0
.end method

.method public getVersion()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->version:F

    return v0
.end method

.method public getXMaxExtent()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->xMaxExtent:S

    return v0
.end method

.method read(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read32Fixed()F

    move-result p1

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->version:F

    .line 67
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->ascender:S

    .line 68
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->descender:S

    .line 69
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->lineGap:S

    .line 70
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->advanceWidthMax:I

    .line 71
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->minLeftSideBearing:S

    .line 72
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->minRightSideBearing:S

    .line 73
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->xMaxExtent:S

    .line 74
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->caretSlopeRise:S

    .line 75
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->caretSlopeRun:S

    .line 76
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->reserved1:S

    .line 77
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->reserved2:S

    .line 78
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->reserved3:S

    .line 79
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->reserved4:S

    .line 80
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->reserved5:S

    .line 81
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->metricDataFormat:S

    .line 82
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->numberOfHMetrics:I

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->initialized:Z

    return-void
.end method

.method public setAdvanceWidthMax(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->advanceWidthMax:I

    return-void
.end method

.method public setAscender(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->ascender:S

    return-void
.end method

.method public setCaretSlopeRise(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->caretSlopeRise:S

    return-void
.end method

.method public setCaretSlopeRun(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->caretSlopeRun:S

    return-void
.end method

.method public setDescender(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->descender:S

    return-void
.end method

.method public setLineGap(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->lineGap:S

    return-void
.end method

.method public setMetricDataFormat(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->metricDataFormat:S

    return-void
.end method

.method public setMinLeftSideBearing(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->minLeftSideBearing:S

    return-void
.end method

.method public setMinRightSideBearing(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->minRightSideBearing:S

    return-void
.end method

.method public setNumberOfHMetrics(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->numberOfHMetrics:I

    return-void
.end method

.method public setReserved1(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->reserved1:S

    return-void
.end method

.method public setReserved2(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->reserved2:S

    return-void
.end method

.method public setReserved3(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->reserved3:S

    return-void
.end method

.method public setReserved4(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->reserved4:S

    return-void
.end method

.method public setReserved5(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->reserved5:S

    return-void
.end method

.method public setVersion(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->version:F

    return-void
.end method

.method public setXMaxExtent(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->xMaxExtent:S

    return-void
.end method
