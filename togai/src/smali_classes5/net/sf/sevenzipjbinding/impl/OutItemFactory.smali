.class public Lnet/sf/sevenzipjbinding/impl/OutItemFactory;
.super Ljava/lang/Object;
.source "OutItemFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/sf/sevenzipjbinding/IOutItemBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ZERO:Ljava/lang/Long;


# instance fields
.field private index:I

.field private outArchive:Lnet/sf/sevenzipjbinding/IOutArchive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/sevenzipjbinding/IOutArchive<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->ZERO:Ljava/lang/Long;

    return-void
.end method

.method constructor <init>(Lnet/sf/sevenzipjbinding/IOutArchive;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/sevenzipjbinding/IOutArchive<",
            "*>;I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->outArchive:Lnet/sf/sevenzipjbinding/IOutArchive;

    iput p2, p0, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->index:I

    return-void
.end method

.method private createOutItemIntern()Lnet/sf/sevenzipjbinding/impl/OutItem;
    .locals 3

    .line 69
    new-instance v0, Lnet/sf/sevenzipjbinding/impl/OutItem;

    iget-object v1, p0, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->outArchive:Lnet/sf/sevenzipjbinding/IOutArchive;

    iget v2, p0, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->index:I

    invoke-direct {v0, v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;-><init>(Lnet/sf/sevenzipjbinding/IOutArchive;I)V

    .line 70
    invoke-direct {p0, v0}, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->fillDefaultValues(Lnet/sf/sevenzipjbinding/impl/OutItem;)V

    return-object v0
.end method

.method private fillDefaultValues(Lnet/sf/sevenzipjbinding/impl/OutItem;)V
    .locals 3

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->outArchive:Lnet/sf/sevenzipjbinding/IOutArchive;

    .line 75
    invoke-interface {v0}, Lnet/sf/sevenzipjbinding/IOutArchive;->getConnectedInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setUpdateOldArchiveItemIndex(Ljava/lang/Integer;)V

    .line 77
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setUpdateIsNewData(Ljava/lang/Boolean;)V

    .line 78
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setUpdateIsNewProperties(Ljava/lang/Boolean;)V

    :cond_0
    sget-object v0, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->ZERO:Ljava/lang/Long;

    .line 80
    invoke-virtual {p1, v0}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setDataSize(Ljava/lang/Long;)V

    .line 81
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyLastModificationTime(Ljava/util/Date;)V

    .line 83
    sget-object v0, Lnet/sf/sevenzipjbinding/impl/OutItemFactory$1;->$SwitchMap$net$sf$sevenzipjbinding$ArchiveFormat:[I

    invoke-virtual {p1}, Lnet/sf/sevenzipjbinding/impl/OutItem;->getArchiveFormat()Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/sevenzipjbinding/ArchiveFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 101
    invoke-direct {p0, p1}, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->fillDefaultValuesTar(Lnet/sf/sevenzipjbinding/IOutItemTar;)V

    goto :goto_0

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No default values strategy for the archive format \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lnet/sf/sevenzipjbinding/impl/OutItem;->getArchiveFormat()Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_2
    invoke-direct {p0, p1}, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->fillDefaultValuesGZip(Lnet/sf/sevenzipjbinding/IOutItemGZip;)V

    goto :goto_0

    .line 93
    :cond_3
    invoke-direct {p0, p1}, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->fillDefaultValuesBZip2(Lnet/sf/sevenzipjbinding/IOutItemBZip2;)V

    goto :goto_0

    .line 89
    :cond_4
    invoke-direct {p0, p1}, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->fillDefaultValuesZip(Lnet/sf/sevenzipjbinding/IOutItemZip;)V

    goto :goto_0

    .line 85
    :cond_5
    invoke-direct {p0, p1}, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->fillDefaultValues7z(Lnet/sf/sevenzipjbinding/IOutItem7z;)V

    :goto_0
    return-void
.end method

.method private fillDefaultValues7z(Lnet/sf/sevenzipjbinding/IOutItem7z;)V
    .locals 1

    .line 111
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lnet/sf/sevenzipjbinding/IOutItem7z;->setPropertyIsAnti(Ljava/lang/Boolean;)V

    .line 112
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lnet/sf/sevenzipjbinding/IOutItem7z;->setPropertyIsDir(Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/sf/sevenzipjbinding/IOutItem7z;->setPropertyAttributes(Ljava/lang/Integer;)V

    return-void
.end method

.method private fillDefaultValuesBZip2(Lnet/sf/sevenzipjbinding/IOutItemBZip2;)V
    .locals 0

    return-void
.end method

.method private fillDefaultValuesGZip(Lnet/sf/sevenzipjbinding/IOutItemGZip;)V
    .locals 0

    return-void
.end method

.method private fillDefaultValuesTar(Lnet/sf/sevenzipjbinding/IOutItemTar;)V
    .locals 1

    .line 128
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lnet/sf/sevenzipjbinding/IOutItemTar;->setPropertyIsDir(Ljava/lang/Boolean;)V

    return-void
.end method

.method private fillDefaultValuesZip(Lnet/sf/sevenzipjbinding/IOutItemZip;)V
    .locals 1

    .line 117
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lnet/sf/sevenzipjbinding/IOutItemZip;->setPropertyIsDir(Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/sf/sevenzipjbinding/IOutItemZip;->setPropertyAttributes(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public createOutItem()Lnet/sf/sevenzipjbinding/IOutItemBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->createOutItemIntern()Lnet/sf/sevenzipjbinding/impl/OutItem;

    move-result-object v0

    return-object v0
.end method

.method public createOutItem(I)Lnet/sf/sevenzipjbinding/IOutItemBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->outArchive:Lnet/sf/sevenzipjbinding/IOutArchive;

    .line 159
    invoke-interface {v0}, Lnet/sf/sevenzipjbinding/IOutArchive;->getConnectedInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->createOutItemIntern()Lnet/sf/sevenzipjbinding/impl/OutItem;

    move-result-object v0

    .line 166
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setUpdateOldArchiveItemIndex(Ljava/lang/Integer;)V

    .line 167
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setUpdateIsNewData(Ljava/lang/Boolean;)V

    .line 168
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setUpdateIsNewProperties(Ljava/lang/Boolean;)V

    return-object v0

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not an update operation"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createOutItemAndCloneProperties(I)Lnet/sf/sevenzipjbinding/IOutItemBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->outArchive:Lnet/sf/sevenzipjbinding/IOutArchive;

    .line 190
    invoke-interface {v0}, Lnet/sf/sevenzipjbinding/IOutArchive;->getConnectedInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->createOutItemIntern()Lnet/sf/sevenzipjbinding/impl/OutItem;

    move-result-object v1

    .line 197
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setUpdateOldArchiveItemIndex(Ljava/lang/Integer;)V

    .line 198
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setUpdateIsNewData(Ljava/lang/Boolean;)V

    .line 199
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setUpdateIsNewProperties(Ljava/lang/Boolean;)V

    .line 201
    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->PATH:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, p1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyPath(Ljava/lang/String;)V

    .line 203
    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->ATTRIBUTES:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, p1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyAttributes(Ljava/lang/Integer;)V

    .line 204
    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->POSIX_ATTRIB:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, p1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyPosixAttributes(Ljava/lang/Integer;)V

    .line 207
    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->USER:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, p1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyUser(Ljava/lang/String;)V

    .line 208
    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->GROUP:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, p1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyGroup(Ljava/lang/String;)V

    .line 210
    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->CREATION_TIME:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, p1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyCreationTime(Ljava/util/Date;)V

    .line 211
    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->LAST_MODIFICATION_TIME:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, p1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyLastModificationTime(Ljava/util/Date;)V

    .line 213
    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->LAST_ACCESS_TIME:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, p1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyLastAccessTime(Ljava/util/Date;)V

    .line 216
    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->IS_ANTI:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, p1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyIsAnti(Ljava/lang/Boolean;)V

    .line 217
    sget-object v2, Lnet/sf/sevenzipjbinding/PropID;->IS_FOLDER:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {v0, p1, v2}, Lnet/sf/sevenzipjbinding/IInArchive;->getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Lnet/sf/sevenzipjbinding/impl/OutItem;->setPropertyIsDir(Ljava/lang/Boolean;)V

    return-object v1

    .line 192
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not an update operation"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
