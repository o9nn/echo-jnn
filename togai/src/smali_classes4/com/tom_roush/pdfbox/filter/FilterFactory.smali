.class public final Lcom/tom_roush/pdfbox/filter/FilterFactory;
.super Ljava/lang/Object;
.source "FilterFactory.java"


# static fields
.field public static final INSTANCE:Lcom/tom_roush/pdfbox/filter/FilterFactory;


# instance fields
.field private final filters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            "Lcom/tom_roush/pdfbox/filter/Filter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/tom_roush/pdfbox/filter/FilterFactory;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/filter/FilterFactory;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/filter/FilterFactory;->INSTANCE:Lcom/tom_roush/pdfbox/filter/FilterFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 11

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/filter/FilterFactory;->filters:Ljava/util/Map;

    .line 42
    new-instance v1, Lcom/tom_roush/pdfbox/filter/FlateFilter;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/filter/FlateFilter;-><init>()V

    .line 43
    new-instance v2, Lcom/tom_roush/pdfbox/filter/DCTFilter;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/filter/DCTFilter;-><init>()V

    .line 44
    new-instance v3, Lcom/tom_roush/pdfbox/filter/CCITTFaxFilter;

    invoke-direct {v3}, Lcom/tom_roush/pdfbox/filter/CCITTFaxFilter;-><init>()V

    .line 45
    new-instance v4, Lcom/tom_roush/pdfbox/filter/LZWFilter;

    invoke-direct {v4}, Lcom/tom_roush/pdfbox/filter/LZWFilter;-><init>()V

    .line 46
    new-instance v5, Lcom/tom_roush/pdfbox/filter/ASCIIHexFilter;

    invoke-direct {v5}, Lcom/tom_roush/pdfbox/filter/ASCIIHexFilter;-><init>()V

    .line 47
    new-instance v6, Lcom/tom_roush/pdfbox/filter/ASCII85Filter;

    invoke-direct {v6}, Lcom/tom_roush/pdfbox/filter/ASCII85Filter;-><init>()V

    .line 48
    new-instance v7, Lcom/tom_roush/pdfbox/filter/RunLengthDecodeFilter;

    invoke-direct {v7}, Lcom/tom_roush/pdfbox/filter/RunLengthDecodeFilter;-><init>()V

    .line 49
    new-instance v8, Lcom/tom_roush/pdfbox/filter/CryptFilter;

    invoke-direct {v8}, Lcom/tom_roush/pdfbox/filter/CryptFilter;-><init>()V

    .line 50
    new-instance v9, Lcom/tom_roush/pdfbox/filter/JPXFilter;

    invoke-direct {v9}, Lcom/tom_roush/pdfbox/filter/JPXFilter;-><init>()V

    .line 53
    sget-object v10, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v10, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE_ABBREVIATION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DCT_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DCT_DECODE_ABBREVIATION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CCITTFAX_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CCITTFAX_DECODE_ABBREVIATION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LZW_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LZW_DECODE_ABBREVIATION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ASCII_HEX_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ASCII_HEX_DECODE_ABBREVIATION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ASCII85_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ASCII85_DECODE_ABBREVIATION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RUN_LENGTH_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RUN_LENGTH_DECODE_ABBREVIATION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CRYPT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->JPX_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method getAllFilters()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/tom_roush/pdfbox/filter/Filter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/FilterFactory;->filters:Ljava/util/Map;

    .line 102
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getFilter(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/filter/Filter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/FilterFactory;->filters:Ljava/util/Map;

    .line 91
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/filter/Filter;

    if-eqz v0, :cond_0

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid filter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFilter(Ljava/lang/String;)Lcom/tom_roush/pdfbox/filter/Filter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/filter/FilterFactory;->getFilter(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/filter/Filter;

    move-result-object p1

    return-object p1
.end method
