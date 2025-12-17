.class public final Lcom/rivereactnative/RNRiveRendererType$Companion;
.super Ljava/lang/Object;
.source "RNRiveRendererType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rivereactnative/RNRiveRendererType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rivereactnative/RNRiveRendererType$Companion$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRNRiveRendererType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RNRiveRendererType.kt\ncom/rivereactnative/RNRiveRendererType$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,29:1\n1109#2,2:30\n*S KotlinDebug\n*F\n+ 1 RNRiveRendererType.kt\ncom/rivereactnative/RNRiveRendererType$Companion\n*L\n16#1:30,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0004\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/rivereactnative/RNRiveRendererType$Companion;",
        "",
        "()V",
        "mapToRNRiveRendererType",
        "Lcom/rivereactnative/RNRiveRendererType;",
        "rendererType",
        "",
        "mapToRiveRendererType",
        "Lapp/rive/runtime/kotlin/core/RendererType;",
        "rnRendererType",
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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/rivereactnative/RNRiveRendererType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final mapToRNRiveRendererType(Ljava/lang/String;)Lcom/rivereactnative/RNRiveRendererType;
    .locals 5

    const-string v0, "rendererType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/rivereactnative/RNRiveRendererType;->values()[Lcom/rivereactnative/RNRiveRendererType;

    move-result-object v0

    .line 30
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 16
    invoke-static {v3}, Lcom/rivereactnative/RNRiveRendererType;->access$getRendererTypeName$p(Lcom/rivereactnative/RNRiveRendererType;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Array contains no element matching the predicate."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final mapToRiveRendererType(Lcom/rivereactnative/RNRiveRendererType;)Lapp/rive/runtime/kotlin/core/RendererType;
    .locals 1

    const-string v0, "rnRendererType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/rivereactnative/RNRiveRendererType$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/rivereactnative/RNRiveRendererType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 23
    sget-object p1, Lapp/rive/runtime/kotlin/core/RendererType;->Canvas:Lapp/rive/runtime/kotlin/core/RendererType;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 22
    :cond_1
    sget-object p1, Lapp/rive/runtime/kotlin/core/RendererType;->Skia:Lapp/rive/runtime/kotlin/core/RendererType;

    goto :goto_0

    .line 21
    :cond_2
    sget-object p1, Lapp/rive/runtime/kotlin/core/RendererType;->Rive:Lapp/rive/runtime/kotlin/core/RendererType;

    :goto_0
    return-object p1
.end method
