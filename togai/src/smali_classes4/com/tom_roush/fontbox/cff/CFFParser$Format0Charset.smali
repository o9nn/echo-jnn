.class Lcom/tom_roush/fontbox/cff/CFFParser$Format0Charset;
.super Lcom/tom_roush/fontbox/cff/CFFParser$EmbeddedCharset;
.source "CFFParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/cff/CFFParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Format0Charset"
.end annotation


# instance fields
.field private format:I


# direct methods
.method protected constructor <init>(Z)V
    .locals 0

    .line 1422
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$EmbeddedCharset;-><init>(Z)V

    return-void
.end method

.method static synthetic access$3102(Lcom/tom_roush/fontbox/cff/CFFParser$Format0Charset;I)I
    .locals 0

    .line 1416
    iput p1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Charset;->format:I

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1428
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

    iget v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Charset;->format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
