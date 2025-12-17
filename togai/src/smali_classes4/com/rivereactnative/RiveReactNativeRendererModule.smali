.class public final Lcom/rivereactnative/RiveReactNativeRendererModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RiveReactNativeRendererModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0007J\u0008\u0010\n\u001a\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/rivereactnative/RiveReactNativeRendererModule;",
        "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "defaultRenderer",
        "",
        "iosRenderer",
        "",
        "androidRenderer",
        "getName",
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
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method


# virtual methods
.method public final defaultRenderer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "iosRenderer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "androidRenderer"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object p1, Lcom/rivereactnative/RNRiveRendererType;->Companion:Lcom/rivereactnative/RNRiveRendererType$Companion;

    invoke-virtual {p1, p2}, Lcom/rivereactnative/RNRiveRendererType$Companion;->mapToRNRiveRendererType(Ljava/lang/String;)Lcom/rivereactnative/RNRiveRendererType;

    move-result-object p1

    .line 13
    sget-object p2, Lcom/rivereactnative/RNRiveRendererType;->Companion:Lcom/rivereactnative/RNRiveRendererType$Companion;

    invoke-virtual {p2, p1}, Lcom/rivereactnative/RNRiveRendererType$Companion;->mapToRiveRendererType(Lcom/rivereactnative/RNRiveRendererType;)Lapp/rive/runtime/kotlin/core/RendererType;

    move-result-object p1

    .line 14
    sget-object p2, Lapp/rive/runtime/kotlin/core/Rive;->INSTANCE:Lapp/rive/runtime/kotlin/core/Rive;

    invoke-virtual {p0}, Lcom/rivereactnative/RiveReactNativeRendererModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "getReactApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lapp/rive/runtime/kotlin/core/Rive;->init(Landroid/content/Context;Lapp/rive/runtime/kotlin/core/RendererType;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RiveReactNativeRendererModule"

    return-object v0
.end method
