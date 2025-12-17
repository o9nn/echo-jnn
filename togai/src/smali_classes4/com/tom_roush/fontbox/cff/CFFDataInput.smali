.class public Lcom/tom_roush/fontbox/cff/CFFDataInput;
.super Lcom/tom_roush/fontbox/cff/DataInput;
.source "CFFDataInput.java"


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/DataInput;-><init>([B)V

    return-void
.end method


# virtual methods
.method public readCard16()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public readCard8()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public readOffSize()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_0

    return v0

    .line 85
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Illegal (< 1 or > 4) offSize value "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " in CFF font at position "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->getPosition()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readOffset(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_0

    shl-int/lit8 v1, v1, 0x8

    .line 69
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readUnsignedByte()I

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public readSID()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readUnsignedShort()I

    move-result v0

    return v0
.end method
