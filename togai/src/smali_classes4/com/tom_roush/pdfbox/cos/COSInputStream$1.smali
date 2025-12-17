.class Lcom/tom_roush/pdfbox/cos/COSInputStream$1;
.super Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;
.source "COSInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tom_roush/pdfbox/cos/COSInputStream;->create(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/io/ScratchFile;Lcom/tom_roush/pdfbox/filter/DecodeOptions;)Lcom/tom_roush/pdfbox/cos/COSInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$buffer:Lcom/tom_roush/pdfbox/io/RandomAccess;


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;Lcom/tom_roush/pdfbox/io/RandomAccess;)V
    .locals 0

    iput-object p2, p0, Lcom/tom_roush/pdfbox/cos/COSInputStream$1;->val$buffer:Lcom/tom_roush/pdfbox/io/RandomAccess;

    .line 90
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSInputStream$1;->val$buffer:Lcom/tom_roush/pdfbox/io/RandomAccess;

    .line 94
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccess;->close()V

    return-void
.end method
