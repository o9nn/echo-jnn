.class public Lcom/tom_roush/fontbox/ttf/CmapTable;
.super Lcom/tom_roush/fontbox/ttf/TTFTable;
.source "CmapTable.java"


# static fields
.field public static final ENCODING_MAC_ROMAN:I = 0x0

.field public static final ENCODING_UNICODE_1_0:I = 0x0

.field public static final ENCODING_UNICODE_1_1:I = 0x1

.field public static final ENCODING_UNICODE_2_0_BMP:I = 0x3

.field public static final ENCODING_UNICODE_2_0_FULL:I = 0x4

.field public static final ENCODING_WIN_BIG5:I = 0x3

.field public static final ENCODING_WIN_JOHAB:I = 0x6

.field public static final ENCODING_WIN_PRC:I = 0x4

.field public static final ENCODING_WIN_SHIFT_JIS:I = 0x2

.field public static final ENCODING_WIN_SYMBOL:I = 0x0

.field public static final ENCODING_WIN_UNICODE_BMP:I = 0x1

.field public static final ENCODING_WIN_UNICODE_FULL:I = 0xa

.field public static final ENCODING_WIN_WANSUNG:I = 0x5

.field public static final PLATFORM_MACINTOSH:I = 0x1

.field public static final PLATFORM_UNICODE:I = 0x0

.field public static final PLATFORM_WINDOWS:I = 0x3

.field public static final TAG:Ljava/lang/String; = "cmap"


# instance fields
.field private cmaps:[Lcom/tom_roush/fontbox/ttf/CmapSubtable;


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    return-void
.end method


# virtual methods
.method public getCmaps()[Lcom/tom_roush/fontbox/ttf/CmapSubtable;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/CmapTable;->cmaps:[Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    return-object v0
.end method

.method public getSubtable(II)Lcom/tom_roush/fontbox/ttf/CmapSubtable;
    .locals 5

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/CmapTable;->cmaps:[Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    .line 113
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 115
    invoke-virtual {v3}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getPlatformId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 116
    invoke-virtual {v3}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getPlatformEncodingId()I

    move-result v4

    if-ne v4, p2, :cond_0

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

    .line 75
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    .line 76
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    .line 77
    new-array v1, v0, [Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    iput-object v1, p0, Lcom/tom_roush/fontbox/ttf/CmapTable;->cmaps:[Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 80
    new-instance v3, Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    invoke-direct {v3}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;-><init>()V

    .line 81
    invoke-virtual {v3, p2}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->initData(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V

    iget-object v4, p0, Lcom/tom_roush/fontbox/ttf/CmapTable;->cmaps:[Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    .line 82
    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getNumberOfGlyphs()I

    move-result p1

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/CmapTable;->cmaps:[Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    .line 87
    aget-object v2, v2, v1

    invoke-virtual {v2, p0, p1, p2}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->initSubtable(Lcom/tom_roush/fontbox/ttf/CmapTable;ILcom/tom_roush/fontbox/ttf/TTFDataStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/tom_roush/fontbox/ttf/CmapTable;->initialized:Z

    return-void
.end method

.method public setCmaps([Lcom/tom_roush/fontbox/ttf/CmapSubtable;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/CmapTable;->cmaps:[Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    return-void
.end method
