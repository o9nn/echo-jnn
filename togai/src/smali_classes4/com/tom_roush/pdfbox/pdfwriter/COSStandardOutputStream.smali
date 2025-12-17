.class public Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;
.super Ljava/io/FilterOutputStream;
.source "COSStandardOutputStream.java"


# static fields
.field public static final CRLF:[B

.field public static final EOL:[B

.field public static final LF:[B


# instance fields
.field private onNewLine:Z

.field private position:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->CRLF:[B

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0xa

    aput-byte v3, v1, v2

    sput-object v1, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->LF:[B

    new-array v0, v0, [B

    aput-byte v3, v0, v2

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->EOL:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 58
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->position:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->onNewLine:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->onNewLine:Z

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->position:J

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;J)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->onNewLine:Z

    iput-wide p2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->position:J

    return-void
.end method


# virtual methods
.method public getPos()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->position:J

    return-wide v0
.end method

.method public isOnNewLine()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->onNewLine:Z

    return v0
.end method

.method public setOnNewLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->onNewLine:Z

    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->setOnNewLine(Z)V

    .line 144
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->position:J

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->setOnNewLine(Z)V

    .line 129
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->position:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->position:J

    return-void
.end method

.method public writeCRLF()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->CRLF:[B

    .line 155
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    return-void
.end method

.method public writeEOL()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->isOnNewLine()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->EOL:[B

    .line 167
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    const/4 v0, 0x1

    .line 168
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->setOnNewLine(Z)V

    :cond_0
    return-void
.end method

.method public writeLF()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->LF:[B

    .line 179
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    return-void
.end method
