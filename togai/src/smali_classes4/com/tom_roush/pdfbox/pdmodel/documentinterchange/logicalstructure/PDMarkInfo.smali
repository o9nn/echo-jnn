.class public Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;
.super Ljava/lang/Object;
.source "PDMarkInfo.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method


# virtual methods
.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public isMarked()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "Marked"

    const/4 v2, 0x0

    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSuspect()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "Suspects"

    const/4 v2, 0x0

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setMarked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "Marked"

    .line 79
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSuspect(Z)V
    .locals 2

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v0, "Suspects"

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setUserProperties(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "UserProperties"

    .line 99
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public usesUserProperties()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "UserProperties"

    const/4 v2, 0x0

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
