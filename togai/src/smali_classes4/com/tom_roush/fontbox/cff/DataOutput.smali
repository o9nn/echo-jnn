.class public Lcom/tom_roush/fontbox/cff/DataOutput;
.super Ljava/lang/Object;
.source "DataOutput.java"


# instance fields
.field private outputBuffer:Ljava/io/ByteArrayOutputStream;

.field private outputEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ISO-8859-1"

    .line 37
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/cff/DataOutput;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/DataOutput;->outputBuffer:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/DataOutput;->outputEncoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/DataOutput;->outputBuffer:Ljava/io/ByteArrayOutputStream;

    .line 55
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/DataOutput;->outputEncoding:Ljava/lang/String;

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/cff/DataOutput;->write([B)V

    return-void
.end method

.method public println()V
    .locals 1

    const/16 v0, 0xa

    .line 114
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/cff/DataOutput;->write(I)V

    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/DataOutput;->outputEncoding:Ljava/lang/String;

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/cff/DataOutput;->write([B)V

    const/16 p1, 0xa

    .line 106
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/cff/DataOutput;->write(I)V

    return-void
.end method

.method public write(I)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/DataOutput;->outputBuffer:Ljava/io/ByteArrayOutputStream;

    .line 64
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/DataOutput;->outputBuffer:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    .line 73
    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/DataOutput;->outputBuffer:Ljava/io/ByteArrayOutputStream;

    .line 84
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method
