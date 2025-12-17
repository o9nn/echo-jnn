.class public final Lnet/sf/sevenzipjbinding/impl/OutItem;
.super Ljava/lang/Object;
.source "OutItem.java"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IOutItemAllFormats;


# instance fields
.field private dataSize:Ljava/lang/Long;

.field private index:I

.field private outArchive:Lnet/sf/sevenzipjbinding/IOutArchive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/sevenzipjbinding/IOutArchive<",
            "*>;"
        }
    .end annotation
.end field

.field private propertyAttributes:Ljava/lang/Integer;

.field private propertyCreationTime:Ljava/util/Date;

.field private propertyGroup:Ljava/lang/String;

.field private propertyHardLink:Ljava/lang/String;

.field private propertyIsAnti:Ljava/lang/Boolean;

.field private propertyIsDir:Ljava/lang/Boolean;

.field private propertyLastAccessTime:Ljava/util/Date;

.field private propertyLastModificationTime:Ljava/util/Date;

.field private propertyPath:Ljava/lang/String;

.field private propertyPosixAttributes:Ljava/lang/Integer;

.field private propertySymLink:Ljava/lang/String;

.field private propertyUser:Ljava/lang/String;

.field private updateIsNewData:Ljava/lang/Boolean;

.field private updateIsNewProperties:Ljava/lang/Boolean;

.field private updateOldArchiveItemIndex:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lnet/sf/sevenzipjbinding/IOutArchive;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/sevenzipjbinding/IOutArchive<",
            "*>;I)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->outArchive:Lnet/sf/sevenzipjbinding/IOutArchive;

    iput p2, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->index:I

    return-void
.end method


# virtual methods
.method public getArchiveFormat()Lnet/sf/sevenzipjbinding/ArchiveFormat;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->outArchive:Lnet/sf/sevenzipjbinding/IOutArchive;

    .line 78
    invoke-interface {v0}, Lnet/sf/sevenzipjbinding/IOutArchive;->getArchiveFormat()Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-result-object v0

    return-object v0
.end method

.method public getDataSize()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->dataSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->index:I

    return v0
.end method

.method public getOutArchive()Lnet/sf/sevenzipjbinding/IOutArchive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/sevenzipjbinding/IOutArchive<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->outArchive:Lnet/sf/sevenzipjbinding/IOutArchive;

    return-object v0
.end method

.method public getPropertyAttributes()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyAttributes:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPropertyCreationTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyCreationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getPropertyGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyHardLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyHardLink:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyIsAnti()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyIsAnti:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPropertyIsDir()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyIsDir:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPropertyLastAccessTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyLastAccessTime:Ljava/util/Date;

    return-object v0
.end method

.method public getPropertyLastModificationTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyLastModificationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getPropertyPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyPosixAttributes()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyPosixAttributes:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPropertySymLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertySymLink:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyUser:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateIsNewData()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateIsNewData:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUpdateIsNewProperties()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateIsNewProperties:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUpdateOldArchiveItemIndex()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateOldArchiveItemIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public setDataSize(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->dataSize:Ljava/lang/Long;

    return-void
.end method

.method public setPropertyAttributes(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyAttributes:Ljava/lang/Integer;

    return-void
.end method

.method public setPropertyCreationTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyCreationTime:Ljava/util/Date;

    return-void
.end method

.method public setPropertyGroup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyGroup:Ljava/lang/String;

    return-void
.end method

.method public setPropertyHardLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyHardLink:Ljava/lang/String;

    return-void
.end method

.method public setPropertyIsAnti(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyIsAnti:Ljava/lang/Boolean;

    return-void
.end method

.method public setPropertyIsDir(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyIsDir:Ljava/lang/Boolean;

    return-void
.end method

.method public setPropertyLastAccessTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyLastAccessTime:Ljava/util/Date;

    return-void
.end method

.method public setPropertyLastModificationTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyLastModificationTime:Ljava/util/Date;

    return-void
.end method

.method public setPropertyPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyPath:Ljava/lang/String;

    return-void
.end method

.method public setPropertyPosixAttributes(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyPosixAttributes:Ljava/lang/Integer;

    return-void
.end method

.method public setPropertySymLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertySymLink:Ljava/lang/String;

    return-void
.end method

.method public setPropertyUser(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->propertyUser:Ljava/lang/String;

    return-void
.end method

.method public setUpdateIsNewData(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateIsNewData:Ljava/lang/Boolean;

    return-void
.end method

.method public setUpdateIsNewProperties(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateIsNewProperties:Ljava/lang/Boolean;

    return-void
.end method

.method public setUpdateOldArchiveItemIndex(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateOldArchiveItemIndex:Ljava/lang/Integer;

    return-void
.end method

.method verify(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    if-eqz p1, :cond_7

    iget-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateIsNewData:Ljava/lang/Boolean;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateIsNewProperties:Ljava/lang/Boolean;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateOldArchiveItemIndex:Ljava/lang/Integer;

    if-eqz p1, :cond_4

    .line 319
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateIsNewData:Ljava/lang/Boolean;

    .line 320
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateIsNewProperties:Ljava/lang/Boolean;

    .line 323
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    const-string v0, "updateOldArchiveItemIndex must be provided (updateIsNewProperties is false)"

    invoke-direct {p1, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    :cond_1
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    const-string v0, "updateOldArchiveItemIndex must be provided (updateIsNewData is false)"

    invoke-direct {p1, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateIsNewData:Ljava/lang/Boolean;

    .line 328
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItem;->updateIsNewProperties:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 329
    :cond_3
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    const-string v0, "updateIsNewProperties must be set (updateIsNewData is true)"

    invoke-direct {p1, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    :cond_4
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    const-string v0, "updateOldArchiveItemIndex can\'t be null"

    invoke-direct {p1, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 313
    :cond_5
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    const-string v0, "updateIsNewProperties can\'t be null"

    invoke-direct {p1, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 310
    :cond_6
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    const-string v0, "updateIsNewData can\'t be null"

    invoke-direct {p1, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    return-void
.end method
