.class public final Lcom/rivereactnative/RNLoopMode$Companion;
.super Ljava/lang/Object;
.source "RNLoopMode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rivereactnative/RNLoopMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rivereactnative/RNLoopMode$Companion$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRNLoopMode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RNLoopMode.kt\ncom/rivereactnative/RNLoopMode$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,39:1\n1109#2,2:40\n*S KotlinDebug\n*F\n+ 1 RNLoopMode.kt\ncom/rivereactnative/RNLoopMode$Companion\n*L\n17#1:40,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0004\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/rivereactnative/RNLoopMode$Companion;",
        "",
        "()V",
        "mapToRNLoopMode",
        "Lcom/rivereactnative/RNLoopMode;",
        "riveLoopMode",
        "Lapp/rive/runtime/kotlin/core/Loop;",
        "loopMode",
        "",
        "mapToRiveLoop",
        "rnLoopMode",
        "rive-react-native_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/rivereactnative/RNLoopMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final mapToRNLoopMode(Lapp/rive/runtime/kotlin/core/Loop;)Lcom/rivereactnative/RNLoopMode;
    .locals 1

    const-string v0, "riveLoopMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/rivereactnative/RNLoopMode$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/Loop;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 25
    sget-object p1, Lcom/rivereactnative/RNLoopMode;->Auto:Lcom/rivereactnative/RNLoopMode;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 24
    :cond_1
    sget-object p1, Lcom/rivereactnative/RNLoopMode;->PingPong:Lcom/rivereactnative/RNLoopMode;

    goto :goto_0

    .line 23
    :cond_2
    sget-object p1, Lcom/rivereactnative/RNLoopMode;->Loop:Lcom/rivereactnative/RNLoopMode;

    goto :goto_0

    .line 22
    :cond_3
    sget-object p1, Lcom/rivereactnative/RNLoopMode;->OneShot:Lcom/rivereactnative/RNLoopMode;

    :goto_0
    return-object p1
.end method

.method public final mapToRNLoopMode(Ljava/lang/String;)Lcom/rivereactnative/RNLoopMode;
    .locals 5

    const-string v0, "loopMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/rivereactnative/RNLoopMode;->values()[Lcom/rivereactnative/RNLoopMode;

    move-result-object v0

    .line 40
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 17
    invoke-virtual {v3}, Lcom/rivereactnative/RNLoopMode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/rivereactnative/RNLoopMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/rivereactnative/RNLoopMode;->valueOf(Ljava/lang/String;)Lcom/rivereactnative/RNLoopMode;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Array contains no element matching the predicate."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final mapToRiveLoop(Lcom/rivereactnative/RNLoopMode;)Lapp/rive/runtime/kotlin/core/Loop;
    .locals 1

    const-string v0, "rnLoopMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/rivereactnative/RNLoopMode$Companion$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/rivereactnative/RNLoopMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 34
    sget-object p1, Lapp/rive/runtime/kotlin/core/Loop;->AUTO:Lapp/rive/runtime/kotlin/core/Loop;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 33
    :cond_1
    sget-object p1, Lapp/rive/runtime/kotlin/core/Loop;->PINGPONG:Lapp/rive/runtime/kotlin/core/Loop;

    goto :goto_0

    .line 32
    :cond_2
    sget-object p1, Lapp/rive/runtime/kotlin/core/Loop;->LOOP:Lapp/rive/runtime/kotlin/core/Loop;

    goto :goto_0

    .line 31
    :cond_3
    sget-object p1, Lapp/rive/runtime/kotlin/core/Loop;->ONESHOT:Lapp/rive/runtime/kotlin/core/Loop;

    :goto_0
    return-object p1
.end method
