.class public Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;
.super Ljava/lang/Object;
.source "VolumedArchiveInStream.java"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IInStream;


# static fields
.field private static final SEVEN_ZIP_FIRST_VOLUME_POSTFIX:Ljava/lang/String; = ".7z.001"


# instance fields
.field private absoluteLength:J

.field private absoluteOffset:J

.field private final archiveOpenVolumeCallback:Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;

.field private currentInStream:Lnet/sf/sevenzipjbinding/IInStream;

.field private currentIndex:I

.field private currentVolumeLength:J

.field private currentVolumeOffset:J

.field private cuttedVolumeFilename:Ljava/lang/String;

.field private volumePositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentIndex:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    iput-object p2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->archiveOpenVolumeCallback:Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;

    const-wide/16 v1, 0x0

    .line 79
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, ".7z.001"

    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->cuttedVolumeFilename:Ljava/lang/String;

    const/4 p1, 0x1

    .line 88
    invoke-direct {p0, p1, p1}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->openVolume(IZ)V

    return-void

    .line 82
    :cond_0
    new-instance p2, Lnet/sf/sevenzipjbinding/SevenZipException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The first 7z volume filename \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' don\'t ends with the postfix: \'.7z.001\'. Can\'t proceed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 61
    sget-object v0, Lnet/sf/sevenzipjbinding/PropID;->NAME:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {p1, v0}, Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;->getProperty(Lnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;-><init>(Ljava/lang/String;Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;)V

    return-void
.end method

.method private openVolume(IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentIndex:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    if-ge v0, p1, :cond_1

    iget-wide v4, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    .line 97
    invoke-direct {p0, v0, v1}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->openVolume(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 100
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_2

    return-void

    .line 104
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->cuttedVolumeFilename:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "{0,number,000}"

    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->archiveOpenVolumeCallback:Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;

    .line 107
    invoke-interface {v2, v0}, Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;->getStream(Ljava/lang/String;)Lnet/sf/sevenzipjbinding/IInStream;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object p1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    return-void

    :cond_3
    iput-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentInStream:Lnet/sf/sevenzipjbinding/IInStream;

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v2, 0x0

    if-ne v0, p1, :cond_5

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentInStream:Lnet/sf/sevenzipjbinding/IInStream;

    const/4 v4, 0x2

    .line 118
    invoke-interface {v0, v2, v3, v4}, Lnet/sf/sevenzipjbinding/IInStream;->seek(JI)J

    move-result-wide v4

    iput-wide v4, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeLength:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    .line 122
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeLength:J

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_6

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentInStream:Lnet/sf/sevenzipjbinding/IInStream;

    .line 125
    invoke-interface {v0, v2, v3, v1}, Lnet/sf/sevenzipjbinding/IInStream;->seek(JI)J

    goto :goto_1

    .line 120
    :cond_4
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Volume "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is empty"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 128
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v4, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeLength:J

    :cond_6
    :goto_1
    if-eqz p2, :cond_7

    iput-wide v2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeOffset:J

    iget-object p2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    add-int/lit8 v0, p1, -0x1

    .line 133
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    :cond_7
    iput p1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentIndex:I

    return-void
.end method

.method private openVolumeToAbsoluteOffset()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 143
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-wide v1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    cmp-long v1, v5, v1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 147
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 151
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 152
    invoke-direct {p0, v0, v2}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->openVolume(IZ)V

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 158
    invoke-direct {p0, v0, v2}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->openVolume(IZ)V

    iget-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_3

    iget-wide v7, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    cmp-long v1, v7, v5

    if-gez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 160
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v7, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    cmp-long v1, v5, v7

    if-lez v1, :cond_2

    :cond_4
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "close() method not supported. The user should implement its own caching and closing stratagies within the IArchiveOpenVolumeCallback.getStream() implementation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized read([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    .line 216
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentInStream:Lnet/sf/sevenzipjbinding/IInStream;

    .line 219
    invoke-interface {v0, p1}, Lnet/sf/sevenzipjbinding/IInStream;->read([B)I

    move-result p1

    iget-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    iget-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeOffset:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeOffset:J

    iget-wide v2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeLength:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 225
    invoke-direct {p0, v0, v1}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->openVolume(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :cond_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized seek(JI)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    const-string v0, "Seek: unknown origin: "

    monitor-enter p0

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_3

    if-eq p3, v3, :cond_2

    const/4 v5, 0x2

    if-ne p3, v5, :cond_1

    :try_start_0
    iget-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    cmp-long p3, v5, v1

    if-nez p3, :cond_0

    const p3, 0x7fffffff

    .line 182
    invoke-direct {p0, p3, v4}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->openVolume(IZ)V

    move p3, v3

    goto :goto_0

    :cond_0
    move p3, v4

    :goto_0
    iget-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    add-long/2addr p1, v5

    goto :goto_2

    .line 189
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    add-long/2addr p1, v5

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_1
    move p3, v4

    :goto_2
    iget-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, p1, v5

    if-nez v0, :cond_4

    if-nez p3, :cond_4

    .line 193
    monitor-exit p0

    return-wide p1

    :cond_4
    :try_start_1
    iput-wide p1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 197
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->openVolumeToAbsoluteOffset()V

    iget-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    cmp-long p3, v5, v1

    if-eqz p3, :cond_5

    iget-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    cmp-long p3, v5, v0

    if-gtz p3, :cond_5

    iput-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    monitor-exit p0

    return-wide v5

    :cond_5
    :try_start_2
    iget-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    iget-object p3, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    iget v2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentIndex:I

    sub-int/2addr v2, v3

    .line 204
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeOffset:J

    iget-object p3, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentInStream:Lnet/sf/sevenzipjbinding/IInStream;

    .line 205
    invoke-interface {p3, v0, v1, v4}, Lnet/sf/sevenzipjbinding/IInStream;->seek(JI)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    monitor-exit p0

    return-wide p1

    :goto_3
    monitor-exit p0

    throw p1
.end method
