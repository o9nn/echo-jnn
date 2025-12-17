.class public final Lcom/swmansion/rnscreens/utils/PaddingBundle;
.super Ljava/lang/Object;
.source "PaddingBundle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/utils/PaddingBundle;",
        "",
        "height",
        "",
        "paddingStart",
        "paddingEnd",
        "(FFF)V",
        "getHeight",
        "()F",
        "getPaddingEnd",
        "getPaddingStart",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "react-native-screens_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final height:F

.field private final paddingEnd:F

.field private final paddingStart:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/swmansion/rnscreens/utils/PaddingBundle;->height:F

    iput p2, p0, Lcom/swmansion/rnscreens/utils/PaddingBundle;->paddingStart:F

    iput p3, p0, Lcom/swmansion/rnscreens/utils/PaddingBundle;->paddingEnd:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/swmansion/rnscreens/utils/PaddingBundle;FFFILjava/lang/Object;)Lcom/swmansion/rnscreens/utils/PaddingBundle;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/swmansion/rnscreens/utils/PaddingBundle;->height:F

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/swmansion/rnscreens/utils/PaddingBundle;->paddingStart:F

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/swmansion/rnscreens/utils/PaddingBundle;->paddingEnd:F

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/swmansion/rnscreens/utils/PaddingBundle;->copy(FFF)Lcom/swmansion/rnscreens/utils/PaddingBundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/swmansion/rnscreens/utils/PaddingBundle;->height:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/swmansion/rnscreens/utils/PaddingBundle;->paddingStart:F

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/swmansion/rnscreens/utils/PaddingBundle;->paddingEnd:F

    return v0
.end method

.method public final copy(FFF)Lcom/swmansion/rnscreens/utils/PaddingBundle;
    .locals 1

    new-instance v0, Lcom/swmansion/rnscreens/utils/PaddingBundle;

    invoke-direct {v0, p1, p2, p3}, Lcom/swmansion/rnscreens/utils/PaddingBundle;-><init>(FFF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/swmansion/rnscreens/utils/PaddingBundle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/swmansion/rnscreens/utils/PaddingBundle;

    iget v1, p0, Lcom/swmansion/rnscreens/utils/PaddingBundle;->height:F

    iget v3, p1, Lcom/swmansion/rnscreens/utils/PaddingBundle;->height:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/swmansion/rnscreens/utils/PaddingBundle;->paddingStart:F

    iget v3, p1, Lcom/swmansion/rnscreens/utils/PaddingBundle;->paddingStart:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/swmansion/rnscreens/utils/PaddingBundle;->paddingEnd:F

    iget p1, p1, Lcom/swmansion/rnscreens/utils/PaddingBundle;->paddingEnd:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getHeight()F
    .locals 1

    iget v0, p0, Lcom/swmansion/rnscreens/utils/PaddingBundle;->height:F

    return v0
.end method

.method public final getPaddingEnd()F
    .locals 1

    iget v0, p0, Lcom/swmansion/rnscreens/utils/PaddingBundle;->paddingEnd:F

    return v0
.end method

.method public final getPaddingStart()F
    .locals 1

    iget v0, p0, Lcom/swmansion/rnscreens/utils/PaddingBundle;->paddingStart:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/swmansion/rnscreens/utils/PaddingBundle;->height:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/swmansion/rnscreens/utils/PaddingBundle;->paddingStart:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/swmansion/rnscreens/utils/PaddingBundle;->paddingEnd:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/swmansion/rnscreens/utils/PaddingBundle;->height:F

    iget v1, p0, Lcom/swmansion/rnscreens/utils/PaddingBundle;->paddingStart:F

    iget v2, p0, Lcom/swmansion/rnscreens/utils/PaddingBundle;->paddingEnd:F

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PaddingBundle(height="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", paddingStart="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paddingEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
