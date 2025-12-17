.class public Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;
.super Ljava/lang/Object;
.source "COSArrayList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final actual:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final array:Lcom/tom_roush/pdfbox/cos/COSArray;

.field private dictKey:Lcom/tom_roush/pdfbox/cos/COSName;

.field private isFiltered:Z

.field private parentDict:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->isFiltered:Z

    .line 58
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->isFiltered:Z

    .line 98
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->parentDict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->dictKey:Lcom/tom_roush/pdfbox/cos/COSName;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            ")V"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->isFiltered:Z

    .line 121
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 122
    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 123
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 124
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->parentDict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iput-object p4, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->dictKey:Lcom/tom_roush/pdfbox/cos/COSName;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Lcom/tom_roush/pdfbox/cos/COSArray;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->isFiltered:Z

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 83
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result p2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->isFiltered:Z

    :cond_0
    return-void
.end method

.method public static convertCOSNameCOSArrayToList(Lcom/tom_roush/pdfbox/cos/COSArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 374
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 376
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    :cond_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {v1, v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public static convertCOSStringCOSArrayToList(Lcom/tom_roush/pdfbox/cos/COSArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 397
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 399
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    :cond_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {v1, v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public static convertFloatCOSArrayToList(Lcom/tom_roush/pdfbox/cos/COSArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 342
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 343
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 345
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    .line 346
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v4, :cond_0

    .line 348
    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 352
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    :cond_1
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {v0, v1, p0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    :cond_2
    return-object v0
.end method

.method public static convertIntegerCOSArrayToList(Lcom/tom_roush/pdfbox/cos/COSArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 311
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 314
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    instance-of v2, v2, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v2, :cond_0

    .line 316
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    goto :goto_1

    .line 320
    :cond_0
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    .line 322
    :goto_1
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_1
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {v1, v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return-object v1
.end method

.method public static convertStringListToCOSNameCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tom_roush/pdfbox/cos/COSArray;"
        }
    .end annotation

    .line 416
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 417
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 419
    invoke-static {v1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static convertStringListToCOSStringCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tom_roush/pdfbox/cos/COSArray;"
        }
    .end annotation

    .line 434
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 435
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 437
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Lcom/tom_roush/pdfbox/cos/COSArray;"
        }
    .end annotation

    if-eqz p0, :cond_9

    .line 456
    instance-of v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    if-eqz v0, :cond_0

    .line 459
    check-cast p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    iget-object p0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    goto/16 :goto_3

    .line 463
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 464
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 466
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 468
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSString;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 470
    :cond_1
    instance-of v2, v1, Ljava/lang/Integer;

    if-nez v2, :cond_7

    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_2

    goto :goto_2

    .line 474
    :cond_2
    instance-of v2, v1, Ljava/lang/Float;

    if-nez v2, :cond_6

    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_3

    goto :goto_1

    .line 478
    :cond_3
    instance-of v2, v1, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    if-eqz v2, :cond_4

    .line 480
    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    .line 481
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    .line 485
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 489
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error: Don\'t know how to convert type to COSBase \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 476
    :cond_6
    :goto_1
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSFloat;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-direct {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 472
    :cond_7
    :goto_2
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto/16 :goto_0

    :cond_8
    move-object p0, v0

    goto :goto_3

    :cond_9
    const/4 p0, 0x0

    :goto_3
    return-object p0
.end method

.method private toCOSObjectList(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;"
        }
    .end annotation

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 501
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 503
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 505
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSString;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 509
    :cond_0
    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    .line 510
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->isFiltered:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->parentDict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->dictKey:Lcom/tom_roush/pdfbox/cos/COSName;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 649
    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->parentDict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 654
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 655
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 657
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSString;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v1, p2}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 661
    check-cast p2, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    invoke-interface {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_0
    return-void

    .line 642
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Adding an element in a filtered List is not permitted"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->parentDict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->dictKey:Lcom/tom_roush/pdfbox/cos/COSName;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 195
    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->parentDict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 201
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 203
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSString;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_2

    .line 209
    move-object v1, p1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 212
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->isFiltered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->parentDict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 285
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->parentDict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->dictKey:Lcom/tom_roush/pdfbox/cos/COSName;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 287
    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->parentDict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 293
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->toCOSObjectList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->addAll(ILjava/util/Collection;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 294
    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1

    .line 280
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Inserting to a filtered List is not permitted"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->isFiltered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->parentDict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->parentDict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->dictKey:Lcom/tom_roush/pdfbox/cos/COSName;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 263
    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->parentDict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 268
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->toCOSObjectList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 269
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 256
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Adding to a filtered List is not permitted"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->parentDict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->dictKey:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    .line 570
    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 572
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 573
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 154
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 246
    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 582
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 600
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 591
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 685
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 145
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 163
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 694
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 703
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 712
    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->isFiltered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 675
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->remove(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 676
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 672
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "removing entries from a filtered List is not permitted"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->isFiltered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 227
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 230
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 231
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->remove(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 223
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "removing entries from a filtered List is not permitted"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 522
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 524
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 527
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 529
    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 531
    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->remove(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 535
    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 544
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 546
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 549
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 551
    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 553
    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->remove(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 557
    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->isFiltered:Z

    if-nez v0, :cond_3

    .line 615
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 617
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSString;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->parentDict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->dictKey:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 620
    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 622
    invoke-virtual {v1, p1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->parentDict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->dictKey:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 628
    move-object v2, p2

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    invoke-interface {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 630
    move-object v1, p2

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 632
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 612
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Replacing an element in a filtered List is not permitted"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 136
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 721
    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 172
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">([TX;)[TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->actual:Ljava/util/List;

    .line 181
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toList()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "COSArrayList{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
