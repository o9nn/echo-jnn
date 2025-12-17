.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDNamedDestination;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;
.source "PDNamedDestination.java"


# instance fields
.field private namedDestination:Lcom/tom_roush/pdfbox/cos/COSBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDNamedDestination;->namedDestination:Lcom/tom_roush/pdfbox/cos/COSBase;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSString;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDNamedDestination;->namedDestination:Lcom/tom_roush/pdfbox/cos/COSBase;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;-><init>()V

    .line 69
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDNamedDestination;->namedDestination:Lcom/tom_roush/pdfbox/cos/COSBase;

    return-void
.end method


# virtual methods
.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDNamedDestination;->namedDestination:Lcom/tom_roush/pdfbox/cos/COSBase;

    return-object v0
.end method

.method public getNamedDestination()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDNamedDestination;->namedDestination:Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 90
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v1, :cond_0

    .line 92
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v1, :cond_1

    .line 96
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setNamedDestination(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDNamedDestination;->namedDestination:Lcom/tom_roush/pdfbox/cos/COSBase;

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDNamedDestination;->namedDestination:Lcom/tom_roush/pdfbox/cos/COSBase;

    :goto_0
    return-void
.end method
