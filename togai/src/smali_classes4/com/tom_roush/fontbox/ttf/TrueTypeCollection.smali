.class public Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;
.super Ljava/lang/Object;
.source "TrueTypeCollection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/fontbox/ttf/TrueTypeCollection$TrueTypeFontProcessor;
    }
.end annotation


# instance fields
.field private final fontOffsets:[J

.field private final numFonts:I

.field private final stream:Lcom/tom_roush/fontbox/ttf/TTFDataStream;


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->stream:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 70
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ttcf"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read32Fixed()F

    move-result v0

    .line 76
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->numFonts:I

    if-lez v1, :cond_2

    const/16 v2, 0x400

    if-gt v1, v2, :cond_2

    .line 81
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->fontOffsets:[J

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->numFonts:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->fontOffsets:[J

    .line 84
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 89
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    .line 90
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    .line 91
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    :cond_1
    return-void

    .line 79
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid number of fonts "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Missing TTC header"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/tom_roush/fontbox/ttf/RAFDataStream;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Lcom/tom_roush/fontbox/ttf/RAFDataStream;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;-><init>(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;

    invoke-direct {v0, p1}, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;-><init>(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V

    return-void
.end method

.method private getFontAtIndex(I)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->stream:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->fontOffsets:[J

    .line 112
    aget-wide v1, v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->stream:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 114
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OTTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lcom/tom_roush/fontbox/ttf/OTFParser;

    invoke-direct {v0, v2, v1}, Lcom/tom_roush/fontbox/ttf/OTFParser;-><init>(ZZ)V

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Lcom/tom_roush/fontbox/ttf/TTFParser;

    invoke-direct {v0, v2, v1}, Lcom/tom_roush/fontbox/ttf/TTFParser;-><init>(ZZ)V

    :goto_0
    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->stream:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->fontOffsets:[J

    .line 122
    aget-wide v2, v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    .line 123
    new-instance p1, Lcom/tom_roush/fontbox/ttf/TTCDataStream;

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->stream:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    invoke-direct {p1, v1}, Lcom/tom_roush/fontbox/ttf/TTCDataStream;-><init>(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->stream:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 157
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->close()V

    return-void
.end method

.method public getFontByName(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->numFonts:I

    if-ge v0, v1, :cond_1

    .line 137
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->getFontAtIndex(I)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public processAllFonts(Lcom/tom_roush/fontbox/ttf/TrueTypeCollection$TrueTypeFontProcessor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->numFonts:I

    if-ge v0, v1, :cond_0

    .line 105
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->getFontAtIndex(I)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object v1

    .line 106
    invoke-interface {p1, v1}, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection$TrueTypeFontProcessor;->process(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
