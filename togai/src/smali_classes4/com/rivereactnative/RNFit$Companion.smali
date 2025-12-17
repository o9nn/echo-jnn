.class public final Lcom/rivereactnative/RNFit$Companion;
.super Ljava/lang/Object;
.source "RNFit.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rivereactnative/RNFit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rivereactnative/RNFit$Companion$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRNFit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RNFit.kt\ncom/rivereactnative/RNFit$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,39:1\n1109#2,2:40\n*S KotlinDebug\n*F\n+ 1 RNFit.kt\ncom/rivereactnative/RNFit$Companion\n*L\n22#1:40,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0004\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/rivereactnative/RNFit$Companion;",
        "",
        "()V",
        "mapToRNFit",
        "Lcom/rivereactnative/RNFit;",
        "fit",
        "",
        "mapToRiveFit",
        "Lapp/rive/runtime/kotlin/core/Fit;",
        "rnFit",
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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/rivereactnative/RNFit$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final mapToRNFit(Ljava/lang/String;)Lcom/rivereactnative/RNFit;
    .locals 5

    const-string v0, "fit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/rivereactnative/RNFit;->values()[Lcom/rivereactnative/RNFit;

    move-result-object v0

    .line 40
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 22
    invoke-virtual {v3}, Lcom/rivereactnative/RNFit;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/rivereactnative/RNFit;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/rivereactnative/RNFit;->valueOf(Ljava/lang/String;)Lcom/rivereactnative/RNFit;

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

.method public final mapToRiveFit(Lcom/rivereactnative/RNFit;)Lapp/rive/runtime/kotlin/core/Fit;
    .locals 1

    const-string v0, "rnFit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/rivereactnative/RNFit$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/rivereactnative/RNFit;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 34
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lapp/rive/runtime/kotlin/core/Fit;->LAYOUT:Lapp/rive/runtime/kotlin/core/Fit;

    goto :goto_0

    .line 33
    :pswitch_1
    sget-object p1, Lapp/rive/runtime/kotlin/core/Fit;->SCALE_DOWN:Lapp/rive/runtime/kotlin/core/Fit;

    goto :goto_0

    .line 32
    :pswitch_2
    sget-object p1, Lapp/rive/runtime/kotlin/core/Fit;->NONE:Lapp/rive/runtime/kotlin/core/Fit;

    goto :goto_0

    .line 31
    :pswitch_3
    sget-object p1, Lapp/rive/runtime/kotlin/core/Fit;->FIT_HEIGHT:Lapp/rive/runtime/kotlin/core/Fit;

    goto :goto_0

    .line 30
    :pswitch_4
    sget-object p1, Lapp/rive/runtime/kotlin/core/Fit;->FIT_WIDTH:Lapp/rive/runtime/kotlin/core/Fit;

    goto :goto_0

    .line 29
    :pswitch_5
    sget-object p1, Lapp/rive/runtime/kotlin/core/Fit;->FILL:Lapp/rive/runtime/kotlin/core/Fit;

    goto :goto_0

    .line 28
    :pswitch_6
    sget-object p1, Lapp/rive/runtime/kotlin/core/Fit;->CONTAIN:Lapp/rive/runtime/kotlin/core/Fit;

    goto :goto_0

    .line 27
    :pswitch_7
    sget-object p1, Lapp/rive/runtime/kotlin/core/Fit;->COVER:Lapp/rive/runtime/kotlin/core/Fit;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
