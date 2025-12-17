.class public Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;
.super Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;
.source "OutArchive7zImpl.java"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IOutCreateArchive7z;
.implements Lnet/sf/sevenzipjbinding/IOutUpdateArchive7z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl<",
        "Lnet/sf/sevenzipjbinding/IOutItem7z;",
        ">;",
        "Lnet/sf/sevenzipjbinding/IOutCreateArchive7z;",
        "Lnet/sf/sevenzipjbinding/IOutUpdateArchive7z;"
    }
.end annotation


# instance fields
.field private countOfBytesPerBlock:J

.field private countOfFilesPerBlock:I

.field private solid:Z

.field private solidExtension:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->solid:Z

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->countOfFilesPerBlock:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->countOfBytesPerBlock:J

    return-void
.end method


# virtual methods
.method protected applyFeatures()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 58
    invoke-super {p0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->applyFeatures()V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->solidExtension:Z

    if-eqz v1, :cond_0

    const-string v1, "E"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->countOfFilesPerBlock:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "F"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-wide v1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->countOfBytesPerBlock:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "B"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->nativeSetSolidSpec(Ljava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->solid:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->nativeSetSolidSpec(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public setHeaderEncryption(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1}, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->featureSetHeaderEncryption(Z)V

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->featureSetLevel(I)V

    return-void
.end method

.method public setSolid(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->solid:Z

    return-void
.end method

.method public setSolidExtension(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->solidExtension:Z

    return-void
.end method

.method public setSolidFiles(I)V
    .locals 0

    iput p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->countOfFilesPerBlock:I

    return-void
.end method

.method public setSolidSize(J)V
    .locals 0

    iput-wide p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->countOfBytesPerBlock:J

    return-void
.end method

.method public setThreadCount(I)V
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;->featureSetThreadCount(I)V

    return-void
.end method
