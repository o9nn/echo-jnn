.class public final Lcom/tom_roush/pdfbox/cos/COSNull;
.super Lcom/tom_roush/pdfbox/cos/COSBase;
.source "COSNull.java"


# static fields
.field public static final NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

.field public static final NULL_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL_BYTES:[B

    .line 37
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSNull;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSNull;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    return-void

    :array_0
    .array-data 1
        0x6et
        0x75t
        0x6ct
        0x6ct
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSBase;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-interface {p1, p0}, Lcom/tom_roush/pdfbox/cos/ICOSVisitor;->visitFromNull(Lcom/tom_roush/pdfbox/cos/COSNull;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "COSNull{}"

    return-object v0
.end method

.method public writePDF(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL_BYTES:[B

    .line 68
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
