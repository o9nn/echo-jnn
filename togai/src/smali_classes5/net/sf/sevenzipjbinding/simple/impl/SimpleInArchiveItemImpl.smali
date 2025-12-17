.class public Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;
.super Ljava/lang/Object;
.source "SimpleInArchiveItemImpl.java"

# interfaces
.implements Lnet/sf/sevenzipjbinding/simple/ISimpleInArchiveItem;


# instance fields
.field private final index:I

.field private final simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;


# direct methods
.method public constructor <init>(Lnet/sf/sevenzipjbinding/IInArchive;I)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    invoke-direct {v0, p1}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;-><init>(Lnet/sf/sevenzipjbinding/IInArchive;)V

    iput-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    iput p2, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    return-void
.end method

.method public constructor <init>(Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    iput p2, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    return-void
.end method


# virtual methods
.method public extractSlow(Lnet/sf/sevenzipjbinding/ISequentialOutStream;)Lnet/sf/sevenzipjbinding/ExtractOperationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    .line 190
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->testAndGetSafeSevenZipInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    iget v1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    invoke-interface {v0, v1, p1}, Lnet/sf/sevenzipjbinding/IInArchive;->extractSlow(ILnet/sf/sevenzipjbinding/ISequentialOutStream;)Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    move-result-object p1

    return-object p1
.end method

.method public extractSlow(Lnet/sf/sevenzipjbinding/ISequentialOutStream;Ljava/lang/String;)Lnet/sf/sevenzipjbinding/ExtractOperationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    .line 194
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->testAndGetSafeSevenZipInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    iget v1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    invoke-interface {v0, v1, p1, p2}, Lnet/sf/sevenzipjbinding/IInArchive;->extractSlow(ILnet/sf/sevenzipjbinding/ISequentialOutStream;Ljava/lang/String;)Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    move-result-object p1

    return-object p1
.end method

.method public getAttributes()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    .line 64
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->testAndGetSafeSevenZipInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    iget v1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->ATTRIBUTES:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, v1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getCRC()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    .line 72
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->testAndGetSafeSevenZipInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    iget v1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->CRC:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, v1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    .line 80
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->testAndGetSafeSevenZipInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    iget v1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->COMMENT:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, v1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getStringProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTime()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    .line 88
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->testAndGetSafeSevenZipInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    iget v1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->CREATION_TIME:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, v1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    .line 96
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->testAndGetSafeSevenZipInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    iget v1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->GROUP:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, v1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getStringProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostOS()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    .line 104
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->testAndGetSafeSevenZipInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    iget v1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->HOST_OS:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, v1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getStringProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemIndex()I
    .locals 1

    iget v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    return v0
.end method

.method public getLastAccessTime()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    .line 112
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->testAndGetSafeSevenZipInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    iget v1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->LAST_ACCESS_TIME:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, v1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getLastWriteTime()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    .line 120
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->testAndGetSafeSevenZipInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    iget v1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->LAST_MODIFICATION_TIME:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, v1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    .line 128
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->testAndGetSafeSevenZipInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    iget v1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->METHOD:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, v1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getStringProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackedSize()Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    .line 136
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->testAndGetSafeSevenZipInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    iget v1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->PACKED_SIZE:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, v1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    .line 56
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->testAndGetSafeSevenZipInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    iget v1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->PATH:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, v1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getStringProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    .line 144
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->testAndGetSafeSevenZipInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    iget v1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->POSITION:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, v1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    .line 152
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->testAndGetSafeSevenZipInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    iget v1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->SIZE:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, v1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    .line 160
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->testAndGetSafeSevenZipInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    iget v1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->USER:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, v1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getStringProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCommented()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    .line 168
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->testAndGetSafeSevenZipInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    iget v1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->COMMENTED:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, v1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEncrypted()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    .line 176
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->testAndGetSafeSevenZipInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    iget v1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->ENCRYPTED:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, v1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 177
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isFolder()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->simpleInArchiveImpl:Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;

    .line 185
    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->testAndGetSafeSevenZipInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    iget v1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;->index:I

    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->IS_FOLDER:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, v1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 186
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
