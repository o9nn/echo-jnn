.class public Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;
.super Lcom/tom_roush/fontbox/ttf/TTFTable;
.source "IndexToLocationTable.java"


# static fields
.field private static final LONG_OFFSETS:S = 0x1s

.field private static final SHORT_OFFSETS:S = 0x0s

.field public static final TAG:Ljava/lang/String; = "loca"


# instance fields
.field private offsets:[J


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    return-void
.end method


# virtual methods
.method public getOffsets()[J
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;->offsets:[J

    return-object v0
.end method

.method read(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHeader()Lcom/tom_roush/fontbox/ttf/HeaderTable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getNumberOfGlyphs()I

    move-result p1

    const/4 v1, 0x1

    add-int/2addr p1, v1

    .line 58
    new-array v2, p1, [J

    iput-object v2, p0, Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;->offsets:[J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 61
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getIndexToLocFormat()S

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;->offsets:[J

    .line 63
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    aput-wide v4, v3, v2

    goto :goto_1

    .line 65
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getIndexToLocFormat()S

    move-result v3

    if-ne v3, v1, :cond_1

    iget-object v3, p0, Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;->offsets:[J

    .line 67
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v4

    aput-wide v4, v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Error:TTF.loca unknown offset format."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_2
    iput-boolean v1, p0, Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;->initialized:Z

    return-void

    .line 55
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not get head table"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOffsets([J)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;->offsets:[J

    return-void
.end method
