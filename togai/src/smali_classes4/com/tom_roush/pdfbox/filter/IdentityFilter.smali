.class final Lcom/tom_roush/pdfbox/filter/IdentityFilter;
.super Lcom/tom_roush/pdfbox/filter/Filter;
.source "IdentityFilter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/filter/DecodeResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-static {p1, p2}, Lcom/tom_roush/pdfbox/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 39
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 40
    new-instance p1, Lcom/tom_roush/pdfbox/filter/DecodeResult;

    invoke-direct {p1, p3}, Lcom/tom_roush/pdfbox/filter/DecodeResult;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object p1
.end method

.method protected encode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-static {p1, p2}, Lcom/tom_roush/pdfbox/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 48
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
