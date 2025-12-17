.class final Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;
.super Lcom/tom_roush/fontbox/cff/FDSelect;
.source "CFFParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/cff/CFFParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Format3FDSelect"
.end annotation


# instance fields
.field private format:I

.field private nbRanges:I

.field private range3:[Lcom/tom_roush/fontbox/cff/CFFParser$Range3;

.field private sentinel:I


# direct methods
.method private constructor <init>(Lcom/tom_roush/fontbox/cff/CFFCIDFont;)V
    .locals 0

    .line 957
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/FDSelect;-><init>(Lcom/tom_roush/fontbox/cff/CFFCIDFont;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/fontbox/cff/CFFCIDFont;Lcom/tom_roush/fontbox/cff/CFFParser$1;)V
    .locals 0

    .line 948
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;-><init>(Lcom/tom_roush/fontbox/cff/CFFCIDFont;)V

    return-void
.end method

.method static synthetic access$2402(Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;I)I
    .locals 0

    .line 948
    iput p1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->format:I

    return p1
.end method

.method static synthetic access$2500(Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;)I
    .locals 0

    .line 948
    iget p0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->nbRanges:I

    return p0
.end method

.method static synthetic access$2502(Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;I)I
    .locals 0

    .line 948
    iput p1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->nbRanges:I

    return p1
.end method

.method static synthetic access$2600(Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;)[Lcom/tom_roush/fontbox/cff/CFFParser$Range3;
    .locals 0

    .line 948
    iget-object p0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->range3:[Lcom/tom_roush/fontbox/cff/CFFParser$Range3;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;[Lcom/tom_roush/fontbox/cff/CFFParser$Range3;)[Lcom/tom_roush/fontbox/cff/CFFParser$Range3;
    .locals 0

    .line 948
    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->range3:[Lcom/tom_roush/fontbox/cff/CFFParser$Range3;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;I)I
    .locals 0

    .line 948
    iput p1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->sentinel:I

    return p1
.end method


# virtual methods
.method public getFDIndex(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->nbRanges:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->range3:[Lcom/tom_roush/fontbox/cff/CFFParser$Range3;

    .line 965
    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/tom_roush/fontbox/cff/CFFParser$Range3;->access$2800(Lcom/tom_roush/fontbox/cff/CFFParser$Range3;)I

    move-result v2

    if-gt v2, p1, :cond_2

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->nbRanges:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->range3:[Lcom/tom_roush/fontbox/cff/CFFParser$Range3;

    .line 969
    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/tom_roush/fontbox/cff/CFFParser$Range3;->access$2800(Lcom/tom_roush/fontbox/cff/CFFParser$Range3;)I

    move-result v2

    if-le v2, p1, :cond_2

    iget-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->range3:[Lcom/tom_roush/fontbox/cff/CFFParser$Range3;

    .line 971
    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/tom_roush/fontbox/cff/CFFParser$Range3;->access$2900(Lcom/tom_roush/fontbox/cff/CFFParser$Range3;)I

    move-result p1

    return p1

    :cond_0
    iget v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->sentinel:I

    if-le v0, p1, :cond_1

    iget-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->range3:[Lcom/tom_roush/fontbox/cff/CFFParser$Range3;

    .line 980
    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/tom_roush/fontbox/cff/CFFParser$Range3;->access$2900(Lcom/tom_roush/fontbox/cff/CFFParser$Range3;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nbRanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->nbRanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", range3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->range3:[Lcom/tom_roush/fontbox/cff/CFFParser$Range3;

    .line 993
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sentinel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->sentinel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
