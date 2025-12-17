.class public Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;
.super Ljava/lang/Object;
.source "AccessPermission.java"


# static fields
.field private static final ASSEMBLE_DOCUMENT_BIT:I = 0xb

.field private static final DEFAULT_PERMISSIONS:I = -0x4

.field private static final EXTRACT_BIT:I = 0x5

.field private static final EXTRACT_FOR_ACCESSIBILITY_BIT:I = 0xa

.field private static final FAITHFUL_PRINT_BIT:I = 0xc

.field private static final FILL_IN_FORM_BIT:I = 0x9

.field private static final MODIFICATION_BIT:I = 0x4

.field private static final MODIFY_ANNOTATIONS_BIT:I = 0x6

.field private static final PRINT_BIT:I = 0x3


# instance fields
.field private bytes:I

.field private readOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->readOnly:Z

    const/4 v0, -0x4

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->bytes:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->readOnly:Z

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->bytes:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->readOnly:Z

    .line 85
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    .line 87
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    .line 89
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    .line 91
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->bytes:I

    return-void
.end method

.method public static getOwnerAccessPermission()Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;
    .locals 2

    .line 155
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;-><init>()V

    const/4 v1, 0x1

    .line 156
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setCanAssembleDocument(Z)V

    .line 157
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setCanExtractContent(Z)V

    .line 158
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setCanExtractForAccessibility(Z)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setCanFillInForm(Z)V

    .line 160
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setCanModify(Z)V

    .line 161
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setCanModifyAnnotations(Z)V

    .line 162
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setCanPrint(Z)V

    .line 163
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setCanPrintFaithful(Z)V

    return-object v0
.end method

.method private isPermissionBitOn(I)Z
    .locals 2

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->bytes:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setPermissionBit(IZ)Z
    .locals 2

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->bytes:I

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    add-int/lit8 p2, p1, -0x1

    shl-int p2, v1, p2

    or-int/2addr p2, v0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p1, -0x1

    shl-int p2, v1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    :goto_0
    iput p2, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->bytes:I

    sub-int/2addr p1, v1

    shl-int p1, v1, p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public canAssembleDocument()Z
    .locals 1

    const/16 v0, 0xb

    .line 374
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->isPermissionBitOn(I)Z

    move-result v0

    return v0
.end method

.method public canExtractContent()Z
    .locals 1

    const/4 v0, 0x5

    .line 258
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->isPermissionBitOn(I)Z

    move-result v0

    return v0
.end method

.method public canExtractForAccessibility()Z
    .locals 1

    const/16 v0, 0xa

    .line 348
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->isPermissionBitOn(I)Z

    move-result v0

    return v0
.end method

.method public canFillInForm()Z
    .locals 1

    const/16 v0, 0x9

    .line 318
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->isPermissionBitOn(I)Z

    move-result v0

    return v0
.end method

.method public canModify()Z
    .locals 1

    const/4 v0, 0x4

    .line 232
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->isPermissionBitOn(I)Z

    move-result v0

    return v0
.end method

.method public canModifyAnnotations()Z
    .locals 1

    const/4 v0, 0x6

    .line 288
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->isPermissionBitOn(I)Z

    move-result v0

    return v0
.end method

.method public canPrint()Z
    .locals 1

    const/4 v0, 0x3

    .line 207
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->isPermissionBitOn(I)Z

    move-result v0

    return v0
.end method

.method public canPrintDegraded()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xc

    .line 404
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->isPermissionBitOn(I)Z

    move-result v0

    return v0
.end method

.method public canPrintFaithful()Z
    .locals 1

    const/16 v0, 0xc

    .line 436
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->isPermissionBitOn(I)Z

    move-result v0

    return v0
.end method

.method public getPermissionBytes()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->bytes:I

    return v0
.end method

.method public getPermissionBytesForPublicKey()I
    .locals 3

    const/4 v0, 0x1

    .line 178
    invoke-direct {p0, v0, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setPermissionBit(IZ)Z

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 179
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setPermissionBit(IZ)Z

    const/16 v0, 0x8

    .line 180
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setPermissionBit(IZ)Z

    const/16 v0, 0xd

    :goto_0
    const/16 v2, 0x20

    if-gt v0, v2, :cond_0

    .line 183
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setPermissionBit(IZ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->bytes:I

    return v0
.end method

.method protected hasAnyRevision3PermissionSet()Z
    .locals 2

    .line 485
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->canFillInForm()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 489
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->canExtractForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 493
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->canAssembleDocument()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 497
    :cond_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->canPrintFaithful()Z

    move-result v0

    return v0
.end method

.method public isOwnerPermission()Z
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->canAssembleDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->canExtractContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->canExtractForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->canFillInForm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->canModify()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->canModifyAnnotations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->canPrint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->canPrintFaithful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->readOnly:Z

    return v0
.end method

.method public setCanAssembleDocument(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->readOnly:Z

    if-nez v0, :cond_0

    const/16 v0, 0xb

    .line 388
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setPermissionBit(IZ)Z

    :cond_0
    return-void
.end method

.method public setCanExtractContent(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->readOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 273
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setPermissionBit(IZ)Z

    :cond_0
    return-void
.end method

.method public setCanExtractForAccessibility(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->readOnly:Z

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 363
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setPermissionBit(IZ)Z

    :cond_0
    return-void
.end method

.method public setCanFillInForm(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->readOnly:Z

    if-nez v0, :cond_0

    const/16 v0, 0x9

    .line 335
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setPermissionBit(IZ)Z

    :cond_0
    return-void
.end method

.method public setCanModify(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->readOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 246
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setPermissionBit(IZ)Z

    :cond_0
    return-void
.end method

.method public setCanModifyAnnotations(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->readOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x6

    .line 306
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setPermissionBit(IZ)Z

    :cond_0
    return-void
.end method

.method public setCanPrint(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->readOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 221
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setPermissionBit(IZ)Z

    :cond_0
    return-void
.end method

.method public setCanPrintDegraded(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->readOnly:Z

    if-nez v0, :cond_0

    const/16 v0, 0xc

    .line 423
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setPermissionBit(IZ)Z

    :cond_0
    return-void
.end method

.method public setCanPrintFaithful(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->readOnly:Z

    if-nez v0, :cond_0

    const/16 v0, 0xc

    .line 452
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setPermissionBit(IZ)Z

    :cond_0
    return-void
.end method

.method public setReadOnly()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->readOnly:Z

    return-void
.end method
