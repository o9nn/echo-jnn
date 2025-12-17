.class Lcom/tom_roush/pdfbox/cos/COSStream$1;
.super Ljava/io/FilterOutputStream;
.source "COSStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tom_roush/pdfbox/cos/COSStream;->createOutputStream(Lcom/tom_roush/pdfbox/cos/COSBase;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tom_roush/pdfbox/cos/COSStream;


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/cos/COSStream;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/cos/COSStream$1;->this$0:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 226
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSStream$1;->this$0:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 237
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LENGTH:Lcom/tom_roush/pdfbox/cos/COSName;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/cos/COSStream$1;->this$0:Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-static {v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->access$000(Lcom/tom_roush/pdfbox/cos/COSStream;)Lcom/tom_roush/pdfbox/io/RandomAccess;

    move-result-object v2

    invoke-interface {v2}, Lcom/tom_roush/pdfbox/io/RandomAccess;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSStream$1;->this$0:Lcom/tom_roush/pdfbox/cos/COSStream;

    const/4 v1, 0x0

    .line 238
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->access$102(Lcom/tom_roush/pdfbox/cos/COSStream;Z)Z

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSStream$1;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
