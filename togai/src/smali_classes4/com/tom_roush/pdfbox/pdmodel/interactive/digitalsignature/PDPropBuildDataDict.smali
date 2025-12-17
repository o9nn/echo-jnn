.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;
.super Ljava/lang/Object;
.source "PDPropBuildDataDict.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDirect(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDirect(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 96
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumRevision()J
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 168
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getLong(Lcom/tom_roush/pdfbox/cos/COSName;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 74
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNonEFontNoWarn()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 269
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NON_EFONT_NO_WARN:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public getOS()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 222
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 223
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    .line 225
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 228
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreRelease()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 193
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PRE_RELEASE:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public getRevision()J
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 144
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->R:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getLong(Lcom/tom_roush/pdfbox/cos/COSName;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrustedMode()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 302
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TRUSTED_MODE:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "REx"

    .line 134
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 106
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setMinimumRevision(J)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 182
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setLong(Lcom/tom_roush/pdfbox/cos/COSName;J)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 84
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setNonEFontNoWarn(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 291
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NON_EFONT_NO_WARN:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setOS(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 242
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->OS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 246
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 247
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v1, :cond_1

    .line 249
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    const/4 v1, 0x1

    .line 250
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSBase;->setDirect(Z)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 251
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->OS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 253
    :cond_1
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_0
    return-void
.end method

.method public setPreRelease(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 205
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PRE_RELEASE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setRevision(J)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 154
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->R:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setLong(Lcom/tom_roush/pdfbox/cos/COSName;J)V

    return-void
.end method

.method public setTrustedMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 312
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TRUSTED_MODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "REx"

    .line 122
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
