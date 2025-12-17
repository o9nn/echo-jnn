.class public Lcom/imagepicker/VideoMetadata;
.super Lcom/imagepicker/Metadata;
.source "VideoMetadata.java"


# instance fields
.field private bitrate:I

.field private duration:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Lcom/imagepicker/Metadata;-><init>()V

    .line 31
    :try_start_0
    new-instance v0, Lcom/imagepicker/CustomMediaMetadataRetriever;

    invoke-direct {v0}, Lcom/imagepicker/CustomMediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :try_start_1
    invoke-virtual {v0, p2, p1}, Lcom/imagepicker/CustomMediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 p1, 0x9

    .line 34
    invoke-virtual {v0, p1}, Lcom/imagepicker/CustomMediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x14

    .line 35
    invoke-virtual {v0, p2}, Lcom/imagepicker/CustomMediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x5

    .line 36
    invoke-virtual {v0, v1}, Lcom/imagepicker/CustomMediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 39
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/imagepicker/VideoMetadata;->duration:I

    :cond_0
    if-eqz p2, :cond_1

    .line 40
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/imagepicker/VideoMetadata;->bitrate:I

    :cond_1
    const/4 p1, 0x0

    if-eqz v1, :cond_2

    const-string p2, "."

    .line 45
    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v1, "T"

    const-string v2, " "

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "yyyyMMdd HHmmss"

    .line 46
    invoke-virtual {p0, p2, v1}, Lcom/imagepicker/VideoMetadata;->getDateTimeInUTC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/imagepicker/VideoMetadata;->datetime:Ljava/lang/String;

    :cond_2
    const/16 p2, 0x12

    .line 49
    invoke-virtual {v0, p2}, Lcom/imagepicker/CustomMediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x13

    .line 50
    invoke-virtual {v0, v1}, Lcom/imagepicker/CustomMediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz p2, :cond_6

    const/16 v2, 0x18

    .line 53
    invoke-virtual {v0, v2}, Lcom/imagepicker/CustomMediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 54
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    const/16 v2, 0x5a

    if-eq p1, v2, :cond_5

    const/16 v2, 0x10e

    if-ne p1, v2, :cond_4

    goto :goto_1

    .line 60
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/imagepicker/VideoMetadata;->width:I

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/imagepicker/VideoMetadata;->height:I

    goto :goto_2

    .line 57
    :cond_5
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/imagepicker/VideoMetadata;->width:I

    .line 58
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/imagepicker/VideoMetadata;->height:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :cond_6
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Lcom/imagepicker/CustomMediaMetadataRetriever;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 31
    :try_start_3
    invoke-virtual {v0}, Lcom/imagepicker/CustomMediaMetadataRetriever;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    iget v0, p0, Lcom/imagepicker/VideoMetadata;->bitrate:I

    return v0
.end method

.method public getDateTime()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/imagepicker/VideoMetadata;->datetime:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/imagepicker/VideoMetadata;->duration:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/imagepicker/VideoMetadata;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/imagepicker/VideoMetadata;->width:I

    return v0
.end method
