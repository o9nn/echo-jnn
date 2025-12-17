.class public final Lcom/tom_roush/fontbox/type1/Type1Font;
.super Ljava/lang/Object;
.source "Type1Font.java"

# interfaces
.implements Lcom/tom_roush/fontbox/type1/Type1CharStringReader;
.implements Lcom/tom_roush/fontbox/EncodedFont;
.implements Lcom/tom_roush/fontbox/FontBoxFont;


# instance fields
.field blueFuzz:I

.field blueScale:F

.field blueShift:I

.field blueValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private final charStringCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tom_roush/fontbox/cff/Type1CharString;",
            ">;"
        }
    .end annotation
.end field

.field final charstrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field encoding:Lcom/tom_roush/fontbox/encoding/Encoding;

.field familyBlues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field familyName:Ljava/lang/String;

.field familyOtherBlues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field fontBBox:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field fontID:Ljava/lang/String;

.field fontMatrix:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field fontName:Ljava/lang/String;

.field fontType:I

.field forceBold:Z

.field fullName:Ljava/lang/String;

.field isFixedPitch:Z

.field italicAngle:F

.field languageGroup:I

.field notice:Ljava/lang/String;

.field otherBlues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field paintType:I

.field private final segment1:[B

.field private final segment2:[B

.field stdHW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field stdVW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field stemSnapH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field stemSnapV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field strokeWidth:F

.field final subrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field underlinePosition:F

.field underlineThickness:F

.field uniqueID:I

.field version:Ljava/lang/String;

.field weight:Ljava/lang/String;


# direct methods
.method constructor <init>([B[B)V
    .locals 2

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->fontName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->encoding:Lcom/tom_roush/fontbox/encoding/Encoding;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->fontMatrix:Ljava/util/List;

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->fontBBox:Ljava/util/List;

    iput-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->fontID:Ljava/lang/String;

    iput-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->notice:Ljava/lang/String;

    iput-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->fullName:Ljava/lang/String;

    iput-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->familyName:Ljava/lang/String;

    iput-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->weight:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->blueValues:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->otherBlues:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->familyBlues:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->familyOtherBlues:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->stdHW:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->stdVW:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->stemSnapH:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->stemSnapV:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->subrs:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->charstrings:Ljava/util/Map;

    .line 132
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->charStringCache:Ljava/util/Map;

    iput-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->segment1:[B

    iput-object p2, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->segment2:[B

    return-void
.end method

.method public static createWithPFB(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/type1/Type1Font;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/tom_roush/fontbox/pfb/PfbParser;

    invoke-direct {v0, p0}, Lcom/tom_roush/fontbox/pfb/PfbParser;-><init>(Ljava/io/InputStream;)V

    .line 57
    new-instance p0, Lcom/tom_roush/fontbox/type1/Type1Parser;

    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;-><init>()V

    .line 58
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/pfb/PfbParser;->getSegment1()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/pfb/PfbParser;->getSegment2()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->parse([B[B)Lcom/tom_roush/fontbox/type1/Type1Font;

    move-result-object p0

    return-object p0
.end method

.method public static createWithPFB([B)Lcom/tom_roush/fontbox/type1/Type1Font;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/tom_roush/fontbox/pfb/PfbParser;

    invoke-direct {v0, p0}, Lcom/tom_roush/fontbox/pfb/PfbParser;-><init>([B)V

    .line 72
    new-instance p0, Lcom/tom_roush/fontbox/type1/Type1Parser;

    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;-><init>()V

    .line 73
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/pfb/PfbParser;->getSegment1()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/pfb/PfbParser;->getSegment2()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->parse([B[B)Lcom/tom_roush/fontbox/type1/Type1Font;

    move-result-object p0

    return-object p0
.end method

.method public static createWithSegments([B[B)Lcom/tom_roush/fontbox/type1/Type1Font;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/tom_roush/fontbox/type1/Type1Parser;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;-><init>()V

    .line 87
    invoke-virtual {v0, p0, p1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->parse([B[B)Lcom/tom_roush/fontbox/type1/Type1Font;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getASCIISegment()[B
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->segment1:[B

    return-object v0
.end method

.method public getBinarySegment()[B
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->segment2:[B

    return-object v0
.end method

.method public getBlueFuzz()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->blueFuzz:I

    return v0
.end method

.method public getBlueScale()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->blueScale:F

    return v0
.end method

.method public getBlueShift()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->blueShift:I

    return v0
.end method

.method public getBlueValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->blueValues:Ljava/util/List;

    .line 405
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCharStringsDict()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->charstrings:Ljava/util/Map;

    .line 165
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Lcom/tom_roush/fontbox/encoding/Encoding;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->encoding:Lcom/tom_roush/fontbox/encoding/Encoding;

    return-object v0
.end method

.method public getFamilyBlues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->familyBlues:Ljava/util/List;

    .line 425
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->familyName:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyOtherBlues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->familyOtherBlues:Ljava/util/List;

    .line 435
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFontBBox()Lcom/tom_roush/fontbox/util/BoundingBox;
    .locals 2

    .line 271
    new-instance v0, Lcom/tom_roush/fontbox/util/BoundingBox;

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->fontBBox:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/util/BoundingBox;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getFontID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->fontID:Ljava/lang/String;

    return-object v0
.end method

.method public getFontMatrix()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->fontMatrix:Ljava/util/List;

    .line 260
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method public getFontType()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->fontType:I

    return v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getItalicAngle()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->italicAngle:F

    return v0
.end method

.method public getLanguageGroup()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->languageGroup:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->notice:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherBlues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->otherBlues:Ljava/util/List;

    .line 415
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPaintType()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->paintType:I

    return v0
.end method

.method public getPath(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/type1/Type1Font;->getType1CharString(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/Type1CharString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/Type1CharString;->getPath()Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public getStdHW()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->stdHW:Ljava/util/List;

    .line 475
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStdVW()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->stdVW:Ljava/util/List;

    .line 485
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStemSnapH()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->stemSnapH:Ljava/util/List;

    .line 495
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStemSnapV()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->stemSnapV:Ljava/util/List;

    .line 505
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->strokeWidth:F

    return v0
.end method

.method public getSubrsArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->subrs:Ljava/util/List;

    .line 155
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType1CharString(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/Type1CharString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->charStringCache:Ljava/util/Map;

    .line 195
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/cff/Type1CharString;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->charstrings:Ljava/util/Map;

    .line 198
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->charstrings:Ljava/util/Map;

    const-string v1, ".notdef"

    .line 201
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 203
    :cond_0
    new-instance v1, Lcom/tom_roush/fontbox/cff/Type1CharStringParser;

    iget-object v2, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->fontName:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/tom_roush/fontbox/cff/Type1CharStringParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->subrs:Ljava/util/List;

    .line 204
    invoke-virtual {v1, v0, v2}, Lcom/tom_roush/fontbox/cff/Type1CharStringParser;->parse([BLjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 205
    new-instance v1, Lcom/tom_roush/fontbox/cff/Type1CharString;

    iget-object v2, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->fontName:Ljava/lang/String;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/tom_roush/fontbox/cff/Type1CharString;-><init>(Lcom/tom_roush/fontbox/type1/Type1CharStringReader;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->charStringCache:Ljava/util/Map;

    .line 206
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public getUnderlinePosition()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->underlinePosition:F

    return v0
.end method

.method public getUnderlineThickness()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->underlineThickness:F

    return v0
.end method

.method public getUniqueID()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->uniqueID:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->weight:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth(Ljava/lang/String;)F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/type1/Type1Font;->getType1CharString(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/Type1CharString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/Type1CharString;->getWidth()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public hasGlyph(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->charstrings:Ljava/util/Map;

    .line 189
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isFixedPitch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->isFixedPitch:Z

    return v0
.end method

.method public isForceBold()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->forceBold:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[fontName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->fontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fullName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->encoding:Lcom/tom_roush/fontbox/encoding/Encoding;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", charStringsDict="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Font;->charstrings:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
