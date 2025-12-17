.class final Lcom/tom_roush/fontbox/cff/CFFParser$Range3;
.super Ljava/lang/Object;
.source "CFFParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/cff/CFFParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Range3"
.end annotation


# instance fields
.field private fd:I

.field private first:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/fontbox/cff/CFFParser$1;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/CFFParser$Range3;-><init>()V

    return-void
.end method

.method static synthetic access$2800(Lcom/tom_roush/fontbox/cff/CFFParser$Range3;)I
    .locals 0

    .line 1000
    iget p0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Range3;->first:I

    return p0
.end method

.method static synthetic access$2802(Lcom/tom_roush/fontbox/cff/CFFParser$Range3;I)I
    .locals 0

    .line 1000
    iput p1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Range3;->first:I

    return p1
.end method

.method static synthetic access$2900(Lcom/tom_roush/fontbox/cff/CFFParser$Range3;)I
    .locals 0

    .line 1000
    iget p0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Range3;->fd:I

    return p0
.end method

.method static synthetic access$2902(Lcom/tom_roush/fontbox/cff/CFFParser$Range3;I)I
    .locals 0

    .line 1000
    iput p1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Range3;->fd:I

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Range3;->first:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Range3;->fd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
