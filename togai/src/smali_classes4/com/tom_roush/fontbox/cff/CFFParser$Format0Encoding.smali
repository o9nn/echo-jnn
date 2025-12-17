.class Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;
.super Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;
.source "CFFParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/cff/CFFParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Format0Encoding"
.end annotation


# instance fields
.field private format:I

.field private nCodes:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1349
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/fontbox/cff/CFFParser$1;)V
    .locals 0

    .line 1349
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;I)I
    .locals 0

    .line 1349
    iput p1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;->format:I

    return p1
.end method

.method static synthetic access$1100(Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;)I
    .locals 0

    .line 1349
    iget p0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;->nCodes:I

    return p0
.end method

.method static synthetic access$1102(Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;I)I
    .locals 0

    .line 1349
    iput p1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;->nCodes:I

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1357
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

    iget v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;->format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nCodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;->nCodes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supplement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1358
    invoke-static {p0}, Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;->access$1600(Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;)[Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
