.class public final Lcom/tom_roush/pdfbox/cos/COSInputStream;
.super Ljava/io/FilterInputStream;
.source "COSInputStream.java"


# instance fields
.field private final decodeResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/filter/DecodeResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/io/InputStream;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/filter/DecodeResult;",
            ">;)V"
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lcom/tom_roush/pdfbox/cos/COSInputStream;->decodeResults:Ljava/util/List;

    return-void
.end method

.method static create(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/io/ScratchFile;)Lcom/tom_roush/pdfbox/cos/COSInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/filter/Filter;",
            ">;",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            "Ljava/io/InputStream;",
            "Lcom/tom_roush/pdfbox/io/ScratchFile;",
            ")",
            "Lcom/tom_roush/pdfbox/cos/COSInputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    sget-object v0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->DEFAULT:Lcom/tom_roush/pdfbox/filter/DecodeOptions;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tom_roush/pdfbox/cos/COSInputStream;->create(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/io/ScratchFile;Lcom/tom_roush/pdfbox/filter/DecodeOptions;)Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object p0

    return-object p0
.end method

.method static create(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/io/ScratchFile;Lcom/tom_roush/pdfbox/filter/DecodeOptions;)Lcom/tom_roush/pdfbox/cos/COSInputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/filter/Filter;",
            ">;",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            "Ljava/io/InputStream;",
            "Lcom/tom_roush/pdfbox/io/ScratchFile;",
            "Lcom/tom_roush/pdfbox/filter/DecodeOptions;",
            ")",
            "Lcom/tom_roush/pdfbox/cos/COSInputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance p0, Lcom/tom_roush/pdfbox/cos/COSInputStream;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/tom_roush/pdfbox/cos/COSInputStream;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    return-object p0

    .line 71
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 74
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 75
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Duplicate"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/4 v1, 0x0

    move-object v3, p2

    .line 81
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_4

    if-eqz p3, :cond_3

    .line 86
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/io/ScratchFile;->createBuffer()Lcom/tom_roush/pdfbox/io/RandomAccess;

    move-result-object p2

    .line 87
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/filter/Filter;

    new-instance v4, Lcom/tom_roush/pdfbox/io/RandomAccessOutputStream;

    invoke-direct {v4, p2}, Lcom/tom_roush/pdfbox/io/RandomAccessOutputStream;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessWrite;)V

    move-object v5, p1

    move v6, v1

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/tom_roush/pdfbox/filter/Filter;->decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;ILcom/tom_roush/pdfbox/filter/DecodeOptions;)Lcom/tom_roush/pdfbox/filter/DecodeResult;

    move-result-object v2

    .line 88
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSInputStream$1;

    invoke-direct {v2, p2, p2}, Lcom/tom_roush/pdfbox/cos/COSInputStream$1;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;Lcom/tom_roush/pdfbox/io/RandomAccess;)V

    goto :goto_2

    .line 101
    :cond_3
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 102
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/filter/Filter;

    move-object v4, p2

    move-object v5, p1

    move v6, v1

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/tom_roush/pdfbox/filter/Filter;->decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;ILcom/tom_roush/pdfbox/filter/DecodeOptions;)Lcom/tom_roush/pdfbox/filter/DecodeResult;

    move-result-object v2

    .line 103
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_2
    move-object v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    :cond_4
    new-instance p0, Lcom/tom_roush/pdfbox/cos/COSInputStream;

    invoke-direct {p0, v3, v0}, Lcom/tom_roush/pdfbox/cos/COSInputStream;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public getDecodeResult()Lcom/tom_roush/pdfbox/filter/DecodeResult;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSInputStream;->decodeResults:Ljava/util/List;

    .line 131
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lcom/tom_roush/pdfbox/filter/DecodeResult;->DEFAULT:Lcom/tom_roush/pdfbox/filter/DecodeResult;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSInputStream;->decodeResults:Ljava/util/List;

    .line 137
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/filter/DecodeResult;

    return-object v0
.end method
