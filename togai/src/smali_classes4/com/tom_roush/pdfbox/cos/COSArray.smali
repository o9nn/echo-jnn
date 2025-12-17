.class public Lcom/tom_roush/pdfbox/cos/COSArray;
.super Lcom/tom_roush/pdfbox/cos/COSBase;
.source "COSArray.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lcom/tom_roush/pdfbox/cos/COSUpdateInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tom_roush/pdfbox/cos/COSBase;",
        "Ljava/lang/Iterable<",
        "Lcom/tom_roush/pdfbox/cos/COSBase;",
        ">;",
        "Lcom/tom_roush/pdfbox/cos/COSUpdateInfo;"
    }
.end annotation


# instance fields
.field private needToBeUpdated:Z

.field private final objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSBase;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    invoke-interface {p1, p0}, Lcom/tom_roush/pdfbox/cos/ICOSVisitor;->visitFromArray(Lcom/tom_roush/pdfbox/cos/COSArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public add(ILcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    .line 74
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    .line 52
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    .line 62
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAll(ILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    .line 137
    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void
.end method

.method public addAll(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    .line 124
    iget-object p1, p1, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    .line 112
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    .line 82
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public get(I)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    .line 210
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSBase;

    return-object p1
.end method

.method public getInt(I)I
    .locals 1

    const/4 v0, -0x1

    .line 222
    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->getInt(II)I

    move-result p1

    return p1
.end method

.method public getInt(II)I
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    .line 237
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 238
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v0, :cond_0

    .line 240
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result p2

    :cond_0
    return p2
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->getName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 287
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    .line 289
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 290
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v0, :cond_0

    .line 292
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    .line 188
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 189
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v0, :cond_0

    .line 191
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 193
    :cond_0
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSNull;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 335
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    .line 337
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 338
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v0, :cond_0

    .line 340
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public growToSize(I)V
    .locals 1

    const/4 v0, 0x0

    .line 493
    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->growToSize(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public growToSize(ILcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 1

    .line 506
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 508
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public indexOf(Lcom/tom_roush/pdfbox/cos/COSBase;)I
    .locals 2

    const/4 v0, 0x0

    .line 438
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 440
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    return v0

    .line 448
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public indexOfObject(Lcom/tom_roush/pdfbox/cos/COSBase;)I
    .locals 3

    const/4 v0, 0x0

    .line 465
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 467
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    if-nez v1, :cond_0

    if-ne v1, p1, :cond_1

    return v0

    .line 475
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSObject;

    .line 476
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public isNeedToBeUpdated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->needToBeUpdated:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    .line 427
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    .line 365
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSBase;

    return-object p1
.end method

.method public remove(Lcom/tom_roush/pdfbox/cos/COSBase;)Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    .line 378
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    .line 92
    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public removeObject(Lcom/tom_roush/pdfbox/cos/COSBase;)Z
    .locals 4

    .line 391
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->remove(Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 394
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 396
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    .line 397
    instance-of v3, v2, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v3, :cond_0

    .line 399
    move-object v3, v2

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSObject;

    .line 400
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->remove(Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    .line 102
    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public set(II)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    int-to-long v1, p2

    .line 159
    invoke-static {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public set(ILcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    .line 148
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public set(ILcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 173
    invoke-interface {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    .line 175
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFloatArray([F)V
    .locals 4

    .line 569
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->clear()V

    .line 570
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 572
    new-instance v3, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v3, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {p0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setInt(II)V
    .locals 2

    int-to-long v0, p2

    .line 254
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setName(ILjava/lang/String;)V
    .locals 0

    .line 264
    invoke-static {p2}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setNeedToBeUpdated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->needToBeUpdated:Z

    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 307
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v0, p2}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_0
    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    .line 353
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toFloatArray()[F
    .locals 5

    .line 553
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 556
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    .line 557
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public toList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;"
        }
    .end annotation

    .line 583
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "COSArray{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSArray;->objects:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
