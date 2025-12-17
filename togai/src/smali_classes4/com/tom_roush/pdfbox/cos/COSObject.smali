.class public Lcom/tom_roush/pdfbox/cos/COSObject;
.super Lcom/tom_roush/pdfbox/cos/COSBase;
.source "COSObject.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/cos/COSUpdateInfo;


# instance fields
.field private baseObject:Lcom/tom_roush/pdfbox/cos/COSBase;

.field private dereferencingInProgress:Z

.field private generationNumber:I

.field private needToBeUpdated:Z

.field private objectNumber:J


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSObject;->dereferencingInProgress:Z

    .line 44
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->setObject(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSBase;->accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSNull;->accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public derefencingInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSObject;->dereferencingInProgress:Z

    return v0
.end method

.method public dereferencingFinished()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSObject;->dereferencingInProgress:Z

    return-void
.end method

.method public dereferencingStarted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSObject;->dereferencingInProgress:Z

    return-void
.end method

.method public getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSObject;->baseObject:Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 58
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 60
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getGenerationNumber()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/cos/COSObject;->generationNumber:I

    return v0
.end method

.method public getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSObject;->baseObject:Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 75
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 77
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSObject;->baseObject:Lcom/tom_roush/pdfbox/cos/COSBase;

    return-object v0
.end method

.method public getObjectNumber()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/cos/COSObject;->objectNumber:J

    return-wide v0
.end method

.method public isNeedToBeUpdated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSObject;->needToBeUpdated:Z

    return v0
.end method

.method public setGenerationNumber(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/cos/COSObject;->generationNumber:I

    return-void
.end method

.method public setNeedToBeUpdated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/cos/COSObject;->needToBeUpdated:Z

    return-void
.end method

.method public final setObject(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/tom_roush/pdfbox/cos/COSObject;->baseObject:Lcom/tom_roush/pdfbox/cos/COSBase;

    return-void
.end method

.method public setObjectNumber(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/cos/COSObject;->objectNumber:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "COSObject{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/tom_roush/pdfbox/cos/COSObject;->objectNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tom_roush/pdfbox/cos/COSObject;->generationNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
