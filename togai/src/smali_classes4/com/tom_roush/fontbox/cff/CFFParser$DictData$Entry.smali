.class Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;
.super Ljava/lang/Object;
.source "CFFParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/cff/CFFParser$DictData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field private operands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private operator:Lcom/tom_roush/fontbox/cff/CFFOperator;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->operands:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->operator:Lcom/tom_roush/fontbox/cff/CFFOperator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/fontbox/cff/CFFParser$1;)V
    .locals 0

    .line 1235
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;)Lcom/tom_roush/fontbox/cff/CFFOperator;
    .locals 0

    .line 1235
    iget-object p0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->operator:Lcom/tom_roush/fontbox/cff/CFFOperator;

    return-object p0
.end method

.method static synthetic access$702(Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;Lcom/tom_roush/fontbox/cff/CFFOperator;)Lcom/tom_roush/fontbox/cff/CFFOperator;
    .locals 0

    .line 1235
    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->operator:Lcom/tom_roush/fontbox/cff/CFFOperator;

    return-object p1
.end method

.method static synthetic access$800(Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;)Ljava/util/List;
    .locals 0

    .line 1235
    iget-object p0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->operands:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->operands:Ljava/util/List;

    return-object v0
.end method

.method public getBoolean(I)Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1272
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getBoolean(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->operands:Ljava/util/List;

    .line 1252
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 1253
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1255
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1260
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 1258
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 1265
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected boolean, got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", returning default "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PdfBox-Android"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method public getDelta()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 1287
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->operands:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x1

    .line 1288
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    .line 1290
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 1291
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 1292
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 1293
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getNumber(I)Ljava/lang/Number;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->operands:Ljava/util/List;

    .line 1242
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    return-object p1
.end method

.method public hasOperands()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->operands:Ljava/util/List;

    .line 1277
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->operands:Ljava/util/List;

    .line 1247
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[operands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->operands:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", operator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->operator:Lcom/tom_roush/fontbox/cff/CFFOperator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
