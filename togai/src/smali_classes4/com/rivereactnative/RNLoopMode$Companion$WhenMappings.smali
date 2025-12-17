.class public final synthetic Lcom/rivereactnative/RNLoopMode$Companion$WhenMappings;
.super Ljava/lang/Object;
.source "RNLoopMode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rivereactnative/RNLoopMode$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lapp/rive/runtime/kotlin/core/Loop;->values()[Lapp/rive/runtime/kotlin/core/Loop;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lapp/rive/runtime/kotlin/core/Loop;->ONESHOT:Lapp/rive/runtime/kotlin/core/Loop;

    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/core/Loop;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lapp/rive/runtime/kotlin/core/Loop;->LOOP:Lapp/rive/runtime/kotlin/core/Loop;

    invoke-virtual {v3}, Lapp/rive/runtime/kotlin/core/Loop;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lapp/rive/runtime/kotlin/core/Loop;->PINGPONG:Lapp/rive/runtime/kotlin/core/Loop;

    invoke-virtual {v4}, Lapp/rive/runtime/kotlin/core/Loop;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v4, 0x4

    :try_start_3
    sget-object v5, Lapp/rive/runtime/kotlin/core/Loop;->AUTO:Lapp/rive/runtime/kotlin/core/Loop;

    invoke-virtual {v5}, Lapp/rive/runtime/kotlin/core/Loop;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lcom/rivereactnative/RNLoopMode$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/rivereactnative/RNLoopMode;->values()[Lcom/rivereactnative/RNLoopMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_4
    sget-object v5, Lcom/rivereactnative/RNLoopMode;->OneShot:Lcom/rivereactnative/RNLoopMode;

    invoke-virtual {v5}, Lcom/rivereactnative/RNLoopMode;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/rivereactnative/RNLoopMode;->Loop:Lcom/rivereactnative/RNLoopMode;

    invoke-virtual {v1}, Lcom/rivereactnative/RNLoopMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/rivereactnative/RNLoopMode;->PingPong:Lcom/rivereactnative/RNLoopMode;

    invoke-virtual {v1}, Lcom/rivereactnative/RNLoopMode;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/rivereactnative/RNLoopMode;->Auto:Lcom/rivereactnative/RNLoopMode;

    invoke-virtual {v1}, Lcom/rivereactnative/RNLoopMode;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    sput-object v0, Lcom/rivereactnative/RNLoopMode$Companion$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
