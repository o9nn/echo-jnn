.class final synthetic Lcom/rivereactnative/RiveReactNativeView$reloadIfNeeded$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "RiveReactNativeView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rivereactnative/RiveReactNativeView;->reloadIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "Lapp/rive/runtime/kotlin/core/FileAsset;",
        "Lkotlin/Unit;",
        ">;"
    }
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


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x2

    const-class v3, Lcom/rivereactnative/RiveReactNativeView;

    const-string v4, "loadAsset"

    const-string v5, "loadAsset(Lcom/facebook/react/bridge/ReadableMap;Lapp/rive/runtime/kotlin/core/FileAsset;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 487
    check-cast p1, Lcom/facebook/react/bridge/ReadableMap;

    check-cast p2, Lapp/rive/runtime/kotlin/core/FileAsset;

    invoke-virtual {p0, p1, p2}, Lcom/rivereactnative/RiveReactNativeView$reloadIfNeeded$1$1;->invoke(Lcom/facebook/react/bridge/ReadableMap;Lapp/rive/runtime/kotlin/core/FileAsset;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/facebook/react/bridge/ReadableMap;Lapp/rive/runtime/kotlin/core/FileAsset;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/rivereactnative/RiveReactNativeView$reloadIfNeeded$1$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/rivereactnative/RiveReactNativeView;

    invoke-static {v0, p1, p2}, Lcom/rivereactnative/RiveReactNativeView;->access$loadAsset(Lcom/rivereactnative/RiveReactNativeView;Lcom/facebook/react/bridge/ReadableMap;Lapp/rive/runtime/kotlin/core/FileAsset;)V

    return-void
.end method
