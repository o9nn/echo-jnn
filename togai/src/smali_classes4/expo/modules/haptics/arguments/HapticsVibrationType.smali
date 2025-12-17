.class public final Lexpo/modules/haptics/arguments/HapticsVibrationType;
.super Ljava/lang/Object;
.source "HapticsVibrationType.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/haptics/arguments/HapticsVibrationType;",
        "",
        "timings",
        "",
        "amplitudes",
        "",
        "oldSDKPattern",
        "([J[I[J)V",
        "getAmplitudes",
        "()[I",
        "getOldSDKPattern",
        "()[J",
        "getTimings",
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
        "expo-haptics_release"
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
.field private final amplitudes:[I

.field private final oldSDKPattern:[J

.field private final timings:[J


# direct methods
.method public constructor <init>([J[I[J)V
    .locals 1

    const-string v0, "timings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amplitudes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldSDKPattern"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/haptics/arguments/HapticsVibrationType;->timings:[J

    iput-object p2, p0, Lexpo/modules/haptics/arguments/HapticsVibrationType;->amplitudes:[I

    iput-object p3, p0, Lexpo/modules/haptics/arguments/HapticsVibrationType;->oldSDKPattern:[J

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/haptics/arguments/HapticsVibrationType;[J[I[JILjava/lang/Object;)Lexpo/modules/haptics/arguments/HapticsVibrationType;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lexpo/modules/haptics/arguments/HapticsVibrationType;->timings:[J

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lexpo/modules/haptics/arguments/HapticsVibrationType;->amplitudes:[I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lexpo/modules/haptics/arguments/HapticsVibrationType;->oldSDKPattern:[J

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/haptics/arguments/HapticsVibrationType;->copy([J[I[J)Lexpo/modules/haptics/arguments/HapticsVibrationType;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()[J
    .locals 1

    iget-object v0, p0, Lexpo/modules/haptics/arguments/HapticsVibrationType;->timings:[J

    return-object v0
.end method

.method public final component2()[I
    .locals 1

    iget-object v0, p0, Lexpo/modules/haptics/arguments/HapticsVibrationType;->amplitudes:[I

    return-object v0
.end method

.method public final component3()[J
    .locals 1

    iget-object v0, p0, Lexpo/modules/haptics/arguments/HapticsVibrationType;->oldSDKPattern:[J

    return-object v0
.end method

.method public final copy([J[I[J)Lexpo/modules/haptics/arguments/HapticsVibrationType;
    .locals 1

    const-string v0, "timings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amplitudes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldSDKPattern"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/haptics/arguments/HapticsVibrationType;

    invoke-direct {v0, p1, p2, p3}, Lexpo/modules/haptics/arguments/HapticsVibrationType;-><init>([J[I[J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type expo.modules.haptics.arguments.HapticsVibrationType"

    .line 12
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lexpo/modules/haptics/arguments/HapticsVibrationType;

    iget-object v1, p0, Lexpo/modules/haptics/arguments/HapticsVibrationType;->timings:[J

    .line 14
    iget-object v3, p1, Lexpo/modules/haptics/arguments/HapticsVibrationType;->timings:[J

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lexpo/modules/haptics/arguments/HapticsVibrationType;->amplitudes:[I

    .line 15
    iget-object v3, p1, Lexpo/modules/haptics/arguments/HapticsVibrationType;->amplitudes:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lexpo/modules/haptics/arguments/HapticsVibrationType;->oldSDKPattern:[J

    .line 16
    iget-object p1, p1, Lexpo/modules/haptics/arguments/HapticsVibrationType;->oldSDKPattern:[J

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAmplitudes()[I
    .locals 1

    iget-object v0, p0, Lexpo/modules/haptics/arguments/HapticsVibrationType;->amplitudes:[I

    return-object v0
.end method

.method public final getOldSDKPattern()[J
    .locals 1

    iget-object v0, p0, Lexpo/modules/haptics/arguments/HapticsVibrationType;->oldSDKPattern:[J

    return-object v0
.end method

.method public final getTimings()[J
    .locals 1

    iget-object v0, p0, Lexpo/modules/haptics/arguments/HapticsVibrationType;->timings:[J

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lexpo/modules/haptics/arguments/HapticsVibrationType;->timings:[J

    .line 22
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/haptics/arguments/HapticsVibrationType;->amplitudes:[I

    .line 23
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/haptics/arguments/HapticsVibrationType;->oldSDKPattern:[J

    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lexpo/modules/haptics/arguments/HapticsVibrationType;->timings:[J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/haptics/arguments/HapticsVibrationType;->amplitudes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lexpo/modules/haptics/arguments/HapticsVibrationType;->oldSDKPattern:[J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HapticsVibrationType(timings="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", amplitudes="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oldSDKPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
