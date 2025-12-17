.class public final Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;
.super Ljava/lang/Object;
.source "InArchiveImpl.java"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IInArchive;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/sevenzipjbinding/impl/InArchiveImpl$ExtractSlowCryptoCallback;,
        Lnet/sf/sevenzipjbinding/impl/InArchiveImpl$ExtractSlowCallback;
    }
.end annotation


# instance fields
.field private archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field private closed:Z

.field private jbindingSession:J

.field private numberOfItems:I

.field private outArchiveImpl:Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl<",
            "*>;"
        }
    .end annotation
.end field

.field private sevenZipArchiveInstance:J

.field private sevenZipInStreamInstance:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->numberOfItems:I

    return-void
.end method

.method private createConnectedOutArchive()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 388
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/ArchiveFormat;->isOutArchiveSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 394
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/ArchiveFormat;->getOutArchiveImplementation()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;

    iput-object v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->outArchiveImpl:Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    invoke-virtual {v0, p0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->setInArchive(Lnet/sf/sevenzipjbinding/IInArchive;)V

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->outArchiveImpl:Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;

    iget-object v1, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 400
    invoke-virtual {v0, v1}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->setArchiveFormat(Lnet/sf/sevenzipjbinding/ArchiveFormat;)V

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->outArchiveImpl:Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;

    iget-object v1, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 402
    invoke-direct {p0, v0, v1}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeConnectOutArchive(Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;Lnet/sf/sevenzipjbinding/ArchiveFormat;)V

    return-void

    .line 396
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Internal error: Can\'t create new instance of the class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 397
    invoke-virtual {v2}, Lnet/sf/sevenzipjbinding/ArchiveFormat;->getOutArchiveImplementation()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " using default constructor."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Archive format \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' doesn\'t support archive manipulations."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureArchiveFormatForArchiveFormatSpecificUpdateAPI(Lnet/sf/sevenzipjbinding/ArchiveFormat;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getArchiveFormat()Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 381
    :cond_0
    new-instance v0, Lnet/sf/sevenzipjbinding/SevenZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Archive format specific update API for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/sevenzipjbinding/ArchiveFormat;->getMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "-archives can\'t work with the currently opened "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 382
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getArchiveFormat()Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/sevenzipjbinding/ArchiveFormat;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "-archive"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getConnectedOutArchiveIntern()Lnet/sf/sevenzipjbinding/IOutUpdateArchive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/sf/sevenzipjbinding/IOutItemBase;",
            ">()",
            "Lnet/sf/sevenzipjbinding/IOutUpdateArchive<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->outArchiveImpl:Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;

    if-nez v0, :cond_0

    .line 328
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->createConnectedOutArchive()V

    :cond_0
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->outArchiveImpl:Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;

    return-object v0
.end method

.method private native nativeClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeConnectOutArchive(Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;Lnet/sf/sevenzipjbinding/ArchiveFormat;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl<",
            "*>;",
            "Lnet/sf/sevenzipjbinding/ArchiveFormat;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeExtract([IZLnet/sf/sevenzipjbinding/IArchiveExtractCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeGetArchiveProperty(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeGetArchivePropertyInfo(I)Lnet/sf/sevenzipjbinding/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeGetNumberOfArchiveProperties()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeGetNumberOfItems()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeGetNumberOfProperties()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeGetProperty(II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeGetPropertyInfo(I)Lnet/sf/sevenzipjbinding/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeGetStringArchiveProperty(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeGetStringProperty(II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private setArchiveFormat(Ljava/lang/String;)V
    .locals 5

    .line 309
    invoke-static {}, Lnet/sf/sevenzipjbinding/ArchiveFormat;->values()[Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 310
    invoke-virtual {v3}, Lnet/sf/sevenzipjbinding/ArchiveFormat;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v3, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->closed:Z

    .line 211
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeClose()V

    return-void
.end method

.method ensureOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 407
    :cond_0
    new-instance v0, Lnet/sf/sevenzipjbinding/SevenZipException;

    const-string v1, "InArchive closed"

    invoke-direct {v0, v1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public extract([IZLnet/sf/sevenzipjbinding/IArchiveExtractCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeExtract([IZLnet/sf/sevenzipjbinding/IArchiveExtractCallback;)V

    return-void
.end method

.method public extractSlow(ILnet/sf/sevenzipjbinding/ISequentialOutStream;)Lnet/sf/sevenzipjbinding/ExtractOperationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 121
    new-instance v0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl$ExtractSlowCallback;

    invoke-direct {v0, p2}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl$ExtractSlowCallback;-><init>(Lnet/sf/sevenzipjbinding/ISequentialOutStream;)V

    filled-new-array {p1}, [I

    move-result-object p1

    const/4 p2, 0x0

    .line 122
    invoke-direct {p0, p1, p2, v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeExtract([IZLnet/sf/sevenzipjbinding/IArchiveExtractCallback;)V

    .line 123
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl$ExtractSlowCallback;->getExtractOperationResult()Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    move-result-object p1

    return-object p1
.end method

.method public extractSlow(ILnet/sf/sevenzipjbinding/ISequentialOutStream;Ljava/lang/String;)Lnet/sf/sevenzipjbinding/ExtractOperationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 133
    new-instance v0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl$ExtractSlowCryptoCallback;

    invoke-direct {v0, p2, p3}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl$ExtractSlowCryptoCallback;-><init>(Lnet/sf/sevenzipjbinding/ISequentialOutStream;Ljava/lang/String;)V

    filled-new-array {p1}, [I

    move-result-object p1

    const/4 p2, 0x0

    .line 134
    invoke-direct {p0, p1, p2, v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeExtract([IZLnet/sf/sevenzipjbinding/IArchiveExtractCallback;)V

    .line 135
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl$ExtractSlowCryptoCallback;->getExtractOperationResult()Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    move-result-object p1

    return-object p1
.end method

.method public getArchiveFormat()Lnet/sf/sevenzipjbinding/ArchiveFormat;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    return-object v0
.end method

.method public getArchiveProperty(Lnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 148
    invoke-virtual {p1}, Lnet/sf/sevenzipjbinding/PropID;->getPropIDIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeGetArchiveProperty(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getArchivePropertyInfo(I)Lnet/sf/sevenzipjbinding/PropertyInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 168
    invoke-direct {p0, p1}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeGetArchivePropertyInfo(I)Lnet/sf/sevenzipjbinding/PropertyInfo;

    move-result-object p1

    return-object p1
.end method

.method public getConnectedOutArchive()Lnet/sf/sevenzipjbinding/IOutUpdateArchive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/sevenzipjbinding/IOutUpdateArchive<",
            "Lnet/sf/sevenzipjbinding/IOutItemAllFormats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 322
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getConnectedOutArchiveIntern()Lnet/sf/sevenzipjbinding/IOutUpdateArchive;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedOutArchive7z()Lnet/sf/sevenzipjbinding/IOutUpdateArchive7z;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 337
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 338
    sget-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->SEVEN_ZIP:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    invoke-direct {p0, v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureArchiveFormatForArchiveFormatSpecificUpdateAPI(Lnet/sf/sevenzipjbinding/ArchiveFormat;)V

    .line 339
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getConnectedOutArchiveIntern()Lnet/sf/sevenzipjbinding/IOutUpdateArchive;

    move-result-object v0

    check-cast v0, Lnet/sf/sevenzipjbinding/IOutUpdateArchive7z;

    move-object v1, v0

    check-cast v1, Lnet/sf/sevenzipjbinding/IOutUpdateArchive7z;

    return-object v0
.end method

.method public getConnectedOutArchiveBZip2()Lnet/sf/sevenzipjbinding/IOutUpdateArchiveBZip2;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 373
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 374
    sget-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->BZIP2:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    invoke-direct {p0, v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureArchiveFormatForArchiveFormatSpecificUpdateAPI(Lnet/sf/sevenzipjbinding/ArchiveFormat;)V

    .line 375
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getConnectedOutArchiveIntern()Lnet/sf/sevenzipjbinding/IOutUpdateArchive;

    move-result-object v0

    check-cast v0, Lnet/sf/sevenzipjbinding/IOutUpdateArchiveBZip2;

    move-object v1, v0

    check-cast v1, Lnet/sf/sevenzipjbinding/IOutUpdateArchiveBZip2;

    return-object v0
.end method

.method public getConnectedOutArchiveGZip()Lnet/sf/sevenzipjbinding/IOutUpdateArchiveGZip;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 365
    sget-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->GZIP:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    invoke-direct {p0, v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureArchiveFormatForArchiveFormatSpecificUpdateAPI(Lnet/sf/sevenzipjbinding/ArchiveFormat;)V

    .line 366
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getConnectedOutArchiveIntern()Lnet/sf/sevenzipjbinding/IOutUpdateArchive;

    move-result-object v0

    check-cast v0, Lnet/sf/sevenzipjbinding/IOutUpdateArchiveGZip;

    move-object v1, v0

    check-cast v1, Lnet/sf/sevenzipjbinding/IOutUpdateArchiveGZip;

    return-object v0
.end method

.method public getConnectedOutArchiveTar()Lnet/sf/sevenzipjbinding/IOutUpdateArchiveTar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 356
    sget-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->TAR:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    invoke-direct {p0, v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureArchiveFormatForArchiveFormatSpecificUpdateAPI(Lnet/sf/sevenzipjbinding/ArchiveFormat;)V

    .line 357
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getConnectedOutArchiveIntern()Lnet/sf/sevenzipjbinding/IOutUpdateArchive;

    move-result-object v0

    check-cast v0, Lnet/sf/sevenzipjbinding/IOutUpdateArchiveTar;

    move-object v1, v0

    check-cast v1, Lnet/sf/sevenzipjbinding/IOutUpdateArchiveTar;

    return-object v0
.end method

.method public getConnectedOutArchiveZip()Lnet/sf/sevenzipjbinding/IOutUpdateArchiveZip;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 346
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 347
    sget-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->ZIP:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    invoke-direct {p0, v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureArchiveFormatForArchiveFormatSpecificUpdateAPI(Lnet/sf/sevenzipjbinding/ArchiveFormat;)V

    .line 348
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getConnectedOutArchiveIntern()Lnet/sf/sevenzipjbinding/IOutUpdateArchive;

    move-result-object v0

    check-cast v0, Lnet/sf/sevenzipjbinding/IOutUpdateArchiveZip;

    move-object v1, v0

    check-cast v1, Lnet/sf/sevenzipjbinding/IOutUpdateArchiveZip;

    return-object v0
.end method

.method public getNumberOfArchiveProperties()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 178
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeGetNumberOfArchiveProperties()I

    move-result v0

    return v0
.end method

.method public getNumberOfItems()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    iget v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->numberOfItems:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 222
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeGetNumberOfItems()I

    move-result v0

    iput v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->numberOfItems:I

    :cond_0
    iget v0, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->numberOfItems:I

    return v0
.end method

.method public getNumberOfProperties()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 188
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeGetNumberOfProperties()I

    move-result v0

    return v0
.end method

.method public getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    if-ltz p1, :cond_6

    .line 234
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getNumberOfItems()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 239
    invoke-virtual {p2}, Lnet/sf/sevenzipjbinding/PropID;->getPropIDIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeGetProperty(II)Ljava/lang/Object;

    move-result-object p1

    .line 240
    sget-object v0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl$1;->$SwitchMap$net$sf$sevenzipjbinding$PropID:[I

    invoke-virtual {p2}, Lnet/sf/sevenzipjbinding/PropID;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_5

    .line 267
    invoke-static {}, Lnet/sf/sevenzipjbinding/NFileTimeType;->values()[Lnet/sf/sevenzipjbinding/NFileTimeType;

    move-result-object p2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, p2, p1

    return-object p1

    :cond_1
    if-nez p1, :cond_5

    .line 262
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_2
    if-nez p1, :cond_5

    .line 256
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 245
    :cond_3
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_4

    .line 246
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_4
    if-nez p1, :cond_5

    iget-object p2, p0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    if-eqz p2, :cond_5

    .line 249
    sget-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->NSIS:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    if-ne p2, v0, :cond_5

    const-wide/16 p1, 0x0

    .line 250
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_5
    :goto_0
    return-object p1

    .line 235
    :cond_6
    new-instance p2, Lnet/sf/sevenzipjbinding/SevenZipException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index out of range. Index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", NumberOfItems: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 236
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getNumberOfItems()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getPropertyInfo(I)Lnet/sf/sevenzipjbinding/PropertyInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 198
    invoke-direct {p0, p1}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeGetPropertyInfo(I)Lnet/sf/sevenzipjbinding/PropertyInfo;

    move-result-object p1

    return-object p1
.end method

.method public getSimpleInterface()Lnet/sf/sevenzipjbinding/simple/ISimpleInArchive;
    .locals 1

    .line 292
    new-instance v0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    invoke-direct {v0, p0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;-><init>(Lnet/sf/sevenzipjbinding/IInArchive;)V

    return-object v0
.end method

.method public getStringArchiveProperty(Lnet/sf/sevenzipjbinding/PropID;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    .line 158
    invoke-virtual {p1}, Lnet/sf/sevenzipjbinding/PropID;->getPropIDIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeGetStringArchiveProperty(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    if-ltz p1, :cond_0

    .line 281
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getNumberOfItems()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 285
    invoke-virtual {p2}, Lnet/sf/sevenzipjbinding/PropID;->getPropIDIndex()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->nativeGetStringProperty(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 282
    :cond_0
    new-instance p2, Lnet/sf/sevenzipjbinding/SevenZipException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index out of range. Index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", NumberOfItems: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 283
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->getNumberOfItems()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
