.class public Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;
.super Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;
.source "PDComplexFileSpecification.java"


# instance fields
.field private efDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private final fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;-><init>()V

    .line 40
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 41
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->FILESPEC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;-><init>()V

    if-nez p1, :cond_0

    .line 53
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 54
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FILESPEC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    :goto_0
    return-void
.end method

.method private getEFDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->efDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 77
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->EF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->efDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->efDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method private getObjectFromEFDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->getEFDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getEmbeddedFile()Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;
    .locals 2

    .line 263
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->getObjectFromEFDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 264
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_0

    .line 266
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEmbeddedFileDos()Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;
    .locals 2

    .line 299
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DOS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->getObjectFromEFDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 300
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_0

    .line 302
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEmbeddedFileMac()Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;
    .locals 2

    .line 335
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->MAC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->getObjectFromEFDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 336
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_0

    .line 338
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEmbeddedFileUnicode()Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;
    .locals 2

    .line 407
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->UF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->getObjectFromEFDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 408
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_0

    .line 410
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEmbeddedFileUnix()Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;
    .locals 2

    .line 371
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->UNIX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->getObjectFromEFDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 372
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_0

    .line 374
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 153
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileDescription()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 454
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DESC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileDos()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 176
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DOS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileMac()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 198
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MAC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileUnicode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 130
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->UF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileUnix()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 220
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->UNIX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->getFileUnicode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->getFileDos()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->getFileMac()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->getFileUnix()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 118
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->getFile()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public isVolatile()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 253
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public setEmbeddedFile(Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;)V
    .locals 3

    .line 280
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->getEFDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 283
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 284
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->EF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 288
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    :cond_1
    return-void
.end method

.method public setEmbeddedFileDos(Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->getEFDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 319
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 320
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->EF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 324
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DOS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    :cond_1
    return-void
.end method

.method public setEmbeddedFileMac(Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 352
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->getEFDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 355
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 356
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->EF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 360
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MAC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    :cond_1
    return-void
.end method

.method public setEmbeddedFileUnicode(Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;)V
    .locals 3

    .line 425
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->getEFDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 428
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 429
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->EF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 433
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->UF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    :cond_1
    return-void
.end method

.method public setEmbeddedFileUnix(Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 388
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->getEFDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 391
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 392
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->EF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 396
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->UNIX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    :cond_1
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 166
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setFileDescription(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 444
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DESC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setFileDos(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 188
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DOS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setFileMac(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 210
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MAC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setFileUnicode(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 142
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->UF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setFileUnix(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 232
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->UNIX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setVolatile(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;->fs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 243
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method
