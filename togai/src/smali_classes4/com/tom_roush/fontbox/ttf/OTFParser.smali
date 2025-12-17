.class public final Lcom/tom_roush/fontbox/ttf/OTFParser;
.super Lcom/tom_roush/fontbox/ttf/TTFParser;
.source "OTFParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/TTFParser;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/tom_roush/fontbox/ttf/OTFParser;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/fontbox/ttf/TTFParser;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method protected allowCFF()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method newFont(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)Lcom/tom_roush/fontbox/ttf/OpenTypeFont;
    .locals 1

    .line 85
    new-instance v0, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    invoke-direct {v0, p1}, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;-><init>(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V

    return-object v0
.end method

.method bridge synthetic newFont(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/ttf/OTFParser;->newFont(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    move-result-object p1

    return-object p1
.end method

.method parse(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)Lcom/tom_roush/fontbox/ttf/OpenTypeFont;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-super {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    return-object p1
.end method

.method public parse(Ljava/io/File;)Lcom/tom_roush/fontbox/ttf/OpenTypeFont;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-super {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Ljava/io/File;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    return-object p1
.end method

.method public parse(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/ttf/OpenTypeFont;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-super {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    return-object p1
.end method

.method public parse(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/OpenTypeFont;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-super {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    return-object p1
.end method

.method bridge synthetic parse(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/ttf/OTFParser;->parse(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Ljava/io/File;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/ttf/OTFParser;->parse(Ljava/io/File;)Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/ttf/OTFParser;->parse(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/ttf/OTFParser;->parse(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    move-result-object p1

    return-object p1
.end method

.method protected readTable(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TTFTable;
    .locals 1

    const-string v0, "BASE"

    .line 93
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "GDEF"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "GPOS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "GSUB"

    .line 94
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "JSTF"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CFF "

    .line 98
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    new-instance p2, Lcom/tom_roush/fontbox/ttf/CFFTable;

    invoke-direct {p2, p1}, Lcom/tom_roush/fontbox/ttf/CFFTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    return-object p2

    .line 104
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/tom_roush/fontbox/ttf/TTFParser;->readTable(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TTFTable;

    move-result-object p1

    return-object p1

    .line 96
    :cond_2
    :goto_0
    new-instance p2, Lcom/tom_roush/fontbox/ttf/OTLTable;

    invoke-direct {p2, p1}, Lcom/tom_roush/fontbox/ttf/OTLTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    return-object p2
.end method
