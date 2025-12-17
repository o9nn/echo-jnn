.class public Lcom/tom_roush/fontbox/ttf/KerningTable;
.super Lcom/tom_roush/fontbox/ttf/TTFTable;
.source "KerningTable.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "kern"


# instance fields
.field private subtables:[Lcom/tom_roush/fontbox/ttf/KerningSubtable;


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    return-void
.end method


# virtual methods
.method public getHorizontalKerningSubtable()Lcom/tom_roush/fontbox/ttf/KerningSubtable;
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/KerningTable;->getHorizontalKerningSubtable(Z)Lcom/tom_roush/fontbox/ttf/KerningSubtable;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalKerningSubtable(Z)Lcom/tom_roush/fontbox/ttf/KerningSubtable;
    .locals 5

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/KerningTable;->subtables:[Lcom/tom_roush/fontbox/ttf/KerningSubtable;

    if-eqz v0, :cond_1

    .line 104
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 106
    invoke-virtual {v3, p1}, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->isHorizontalKerning(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method read(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result p1

    if-eqz p1, :cond_0

    shl-int/lit8 p1, p1, 0x10

    .line 56
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    or-int/2addr p1, v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 61
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v2

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 65
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0

    .line 69
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skipped kerning table due to an unsupported kerning table version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PdfBox-Android"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    :goto_0
    if-lez v2, :cond_3

    .line 73
    new-array v3, v2, [Lcom/tom_roush/fontbox/ttf/KerningSubtable;

    iput-object v3, p0, Lcom/tom_roush/fontbox/ttf/KerningTable;->subtables:[Lcom/tom_roush/fontbox/ttf/KerningSubtable;

    :goto_1
    if-ge v0, v2, :cond_3

    .line 76
    new-instance v3, Lcom/tom_roush/fontbox/ttf/KerningSubtable;

    invoke-direct {v3}, Lcom/tom_roush/fontbox/ttf/KerningSubtable;-><init>()V

    .line 77
    invoke-virtual {v3, p2, p1}, Lcom/tom_roush/fontbox/ttf/KerningSubtable;->read(Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V

    iget-object v4, p0, Lcom/tom_roush/fontbox/ttf/KerningTable;->subtables:[Lcom/tom_roush/fontbox/ttf/KerningSubtable;

    .line 78
    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 81
    :cond_3
    iput-boolean v1, p0, Lcom/tom_roush/fontbox/ttf/KerningTable;->initialized:Z

    return-void
.end method
