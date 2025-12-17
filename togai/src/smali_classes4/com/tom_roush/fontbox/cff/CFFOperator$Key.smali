.class public Lcom/tom_roush/fontbox/cff/CFFOperator$Key;
.super Ljava/lang/Object;
.source "CFFOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/cff/CFFOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field private value:[I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    filled-new-array {p1}, [I

    move-result-object p1

    .line 140
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>([I)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    filled-new-array {p1, p2}, [I

    move-result-object p1

    .line 150
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>([I)V

    return-void
.end method

.method private constructor <init>([I)V
    .locals 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;->value:[I

    .line 155
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;->setValue([I)V

    return-void
.end method

.method private setValue([I)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;->value:[I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 196
    instance-of v0, p1, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    if-eqz v0, :cond_0

    .line 198
    check-cast p1, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    .line 199
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;->getValue()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;->getValue()[I

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getValue()[I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;->value:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;->getValue()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;->getValue()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
