.class public final Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;
.super Ljava/lang/Object;
.source "RiveAnimationView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/rive/runtime/kotlin/RiveAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRiveAnimationView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RiveAnimationView.kt\napp/rive/runtime/kotlin/RiveAnimationView$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1144:1\n1#2:1145\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010K\u001a\u00020LJ\u000e\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u0006J\u000e\u0010O\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u000cJ\u000e\u0010P\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u000cJ\u000e\u0010Q\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u0015J\u000e\u0010R\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u001bJ\u000e\u0010S\u001a\u00020\u00002\u0006\u0010N\u001a\u00020$J\u000e\u0010T\u001a\u00020\u00002\u0006\u0010N\u001a\u00020*J\u000e\u0010U\u001a\u00020\u00002\u0006\u0010N\u001a\u000200J\u000e\u0010V\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u0001J\u000e\u0010W\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u001bJ\u000e\u0010X\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u000cJ\u000e\u0010Y\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u001bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010 \u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001c\u0010)\u001a\u0004\u0018\u00010*X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u001c\u0010/\u001a\u0004\u0018\u000100X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001c\u00105\u001a\u0004\u0018\u00010\u0001X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u001c\u0010:\u001a\u0004\u0018\u00010;X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u001a\u0010@\u001a\u00020\u001bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u001c\u0010E\u001a\u0004\u0018\u00010\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010\u000e\"\u0004\u0008G\u0010\u0010R\u001e\u0010H\u001a\u0004\u0018\u00010\u001bX\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010 \u001a\u0004\u0008I\u0010\u001d\"\u0004\u0008J\u0010\u001f\u00a8\u0006Z"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "alignment",
        "Lapp/rive/runtime/kotlin/core/Alignment;",
        "getAlignment$kotlin_release",
        "()Lapp/rive/runtime/kotlin/core/Alignment;",
        "setAlignment$kotlin_release",
        "(Lapp/rive/runtime/kotlin/core/Alignment;)V",
        "animationName",
        "",
        "getAnimationName$kotlin_release",
        "()Ljava/lang/String;",
        "setAnimationName$kotlin_release",
        "(Ljava/lang/String;)V",
        "artboardName",
        "getArtboardName$kotlin_release",
        "setArtboardName$kotlin_release",
        "assetLoader",
        "Lapp/rive/runtime/kotlin/core/FileAssetLoader;",
        "getAssetLoader$kotlin_release",
        "()Lapp/rive/runtime/kotlin/core/FileAssetLoader;",
        "setAssetLoader$kotlin_release",
        "(Lapp/rive/runtime/kotlin/core/FileAssetLoader;)V",
        "autoplay",
        "",
        "getAutoplay$kotlin_release",
        "()Ljava/lang/Boolean;",
        "setAutoplay$kotlin_release",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getContext$kotlin_release",
        "()Landroid/content/Context;",
        "fit",
        "Lapp/rive/runtime/kotlin/core/Fit;",
        "getFit$kotlin_release",
        "()Lapp/rive/runtime/kotlin/core/Fit;",
        "setFit$kotlin_release",
        "(Lapp/rive/runtime/kotlin/core/Fit;)V",
        "loop",
        "Lapp/rive/runtime/kotlin/core/Loop;",
        "getLoop$kotlin_release",
        "()Lapp/rive/runtime/kotlin/core/Loop;",
        "setLoop$kotlin_release",
        "(Lapp/rive/runtime/kotlin/core/Loop;)V",
        "rendererType",
        "Lapp/rive/runtime/kotlin/core/RendererType;",
        "getRendererType$kotlin_release",
        "()Lapp/rive/runtime/kotlin/core/RendererType;",
        "setRendererType$kotlin_release",
        "(Lapp/rive/runtime/kotlin/core/RendererType;)V",
        "resource",
        "getResource$kotlin_release",
        "()Ljava/lang/Object;",
        "setResource$kotlin_release",
        "(Ljava/lang/Object;)V",
        "resourceType",
        "Lapp/rive/runtime/kotlin/ResourceType;",
        "getResourceType$kotlin_release",
        "()Lapp/rive/runtime/kotlin/ResourceType;",
        "setResourceType$kotlin_release",
        "(Lapp/rive/runtime/kotlin/ResourceType;)V",
        "shouldLoadCDNAssets",
        "getShouldLoadCDNAssets$kotlin_release",
        "()Z",
        "setShouldLoadCDNAssets$kotlin_release",
        "(Z)V",
        "stateMachineName",
        "getStateMachineName$kotlin_release",
        "setStateMachineName$kotlin_release",
        "traceAnimations",
        "getTraceAnimations$kotlin_release",
        "setTraceAnimations$kotlin_release",
        "build",
        "Lapp/rive/runtime/kotlin/RiveAnimationView;",
        "setAlignment",
        "value",
        "setAnimationName",
        "setArtboardName",
        "setAssetLoader",
        "setAutoplay",
        "setFit",
        "setLoop",
        "setRendererType",
        "setResource",
        "setShouldLoadCDNAssets",
        "setStateMachineName",
        "setTraceAnimations",
        "kotlin_release"
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
.field private alignment:Lapp/rive/runtime/kotlin/core/Alignment;

.field private animationName:Ljava/lang/String;

.field private artboardName:Ljava/lang/String;

.field private assetLoader:Lapp/rive/runtime/kotlin/core/FileAssetLoader;

.field private autoplay:Ljava/lang/Boolean;

.field private final context:Landroid/content/Context;

.field private fit:Lapp/rive/runtime/kotlin/core/Fit;

.field private loop:Lapp/rive/runtime/kotlin/core/Loop;

.field private rendererType:Lapp/rive/runtime/kotlin/core/RendererType;

.field private resource:Ljava/lang/Object;

.field private resourceType:Lapp/rive/runtime/kotlin/ResourceType;

.field private shouldLoadCDNAssets:Z

.field private stateMachineName:Ljava/lang/String;

.field private traceAnimations:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->context:Landroid/content/Context;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->shouldLoadCDNAssets:Z

    return-void
.end method


# virtual methods
.method public final build()Lapp/rive/runtime/kotlin/RiveAnimationView;
    .locals 1

    .line 263
    new-instance v0, Lapp/rive/runtime/kotlin/RiveAnimationView;

    invoke-direct {v0, p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;-><init>(Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;)V

    return-object v0
.end method

.method public final getAlignment$kotlin_release()Lapp/rive/runtime/kotlin/core/Alignment;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->alignment:Lapp/rive/runtime/kotlin/core/Alignment;

    return-object v0
.end method

.method public final getAnimationName$kotlin_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->animationName:Ljava/lang/String;

    return-object v0
.end method

.method public final getArtboardName$kotlin_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->artboardName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAssetLoader$kotlin_release()Lapp/rive/runtime/kotlin/core/FileAssetLoader;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->assetLoader:Lapp/rive/runtime/kotlin/core/FileAssetLoader;

    return-object v0
.end method

.method public final getAutoplay$kotlin_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->autoplay:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getContext$kotlin_release()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getFit$kotlin_release()Lapp/rive/runtime/kotlin/core/Fit;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->fit:Lapp/rive/runtime/kotlin/core/Fit;

    return-object v0
.end method

.method public final getLoop$kotlin_release()Lapp/rive/runtime/kotlin/core/Loop;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->loop:Lapp/rive/runtime/kotlin/core/Loop;

    return-object v0
.end method

.method public final getRendererType$kotlin_release()Lapp/rive/runtime/kotlin/core/RendererType;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->rendererType:Lapp/rive/runtime/kotlin/core/RendererType;

    return-object v0
.end method

.method public final getResource$kotlin_release()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->resource:Ljava/lang/Object;

    return-object v0
.end method

.method public final getResourceType$kotlin_release()Lapp/rive/runtime/kotlin/ResourceType;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->resourceType:Lapp/rive/runtime/kotlin/ResourceType;

    return-object v0
.end method

.method public final getShouldLoadCDNAssets$kotlin_release()Z
    .locals 1

    iget-boolean v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->shouldLoadCDNAssets:Z

    return v0
.end method

.method public final getStateMachineName$kotlin_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->stateMachineName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTraceAnimations$kotlin_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->traceAnimations:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setAlignment(Lapp/rive/runtime/kotlin/core/Alignment;)Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    move-object v0, p0

    check-cast v0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->alignment:Lapp/rive/runtime/kotlin/core/Alignment;

    return-object p0
.end method

.method public final setAlignment$kotlin_release(Lapp/rive/runtime/kotlin/core/Alignment;)V
    .locals 0

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->alignment:Lapp/rive/runtime/kotlin/core/Alignment;

    return-void
.end method

.method public final setAnimationName(Ljava/lang/String;)Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    move-object v0, p0

    check-cast v0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->animationName:Ljava/lang/String;

    return-object p0
.end method

.method public final setAnimationName$kotlin_release(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->animationName:Ljava/lang/String;

    return-void
.end method

.method public final setArtboardName(Ljava/lang/String;)Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    move-object v0, p0

    check-cast v0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->artboardName:Ljava/lang/String;

    return-object p0
.end method

.method public final setArtboardName$kotlin_release(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->artboardName:Ljava/lang/String;

    return-void
.end method

.method public final setAssetLoader(Lapp/rive/runtime/kotlin/core/FileAssetLoader;)Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    move-object v0, p0

    check-cast v0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->assetLoader:Lapp/rive/runtime/kotlin/core/FileAssetLoader;

    return-object p0
.end method

.method public final setAssetLoader$kotlin_release(Lapp/rive/runtime/kotlin/core/FileAssetLoader;)V
    .locals 0

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->assetLoader:Lapp/rive/runtime/kotlin/core/FileAssetLoader;

    return-void
.end method

.method public final setAutoplay(Z)Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;
    .locals 1

    .line 249
    move-object v0, p0

    check-cast v0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->autoplay:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setAutoplay$kotlin_release(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->autoplay:Ljava/lang/Boolean;

    return-void
.end method

.method public final setFit(Lapp/rive/runtime/kotlin/core/Fit;)Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    move-object v0, p0

    check-cast v0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->fit:Lapp/rive/runtime/kotlin/core/Fit;

    return-object p0
.end method

.method public final setFit$kotlin_release(Lapp/rive/runtime/kotlin/core/Fit;)V
    .locals 0

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->fit:Lapp/rive/runtime/kotlin/core/Fit;

    return-void
.end method

.method public final setLoop(Lapp/rive/runtime/kotlin/core/Loop;)Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    move-object v0, p0

    check-cast v0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->loop:Lapp/rive/runtime/kotlin/core/Loop;

    return-object p0
.end method

.method public final setLoop$kotlin_release(Lapp/rive/runtime/kotlin/core/Loop;)V
    .locals 0

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->loop:Lapp/rive/runtime/kotlin/core/Loop;

    return-void
.end method

.method public final setRendererType(Lapp/rive/runtime/kotlin/core/RendererType;)Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    move-object v0, p0

    check-cast v0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->rendererType:Lapp/rive/runtime/kotlin/core/RendererType;

    return-object p0
.end method

.method public final setRendererType$kotlin_release(Lapp/rive/runtime/kotlin/core/RendererType;)V
    .locals 0

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->rendererType:Lapp/rive/runtime/kotlin/core/RendererType;

    return-void
.end method

.method public final setResource(Ljava/lang/Object;)Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    move-object v0, p0

    check-cast v0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;

    .line 255
    sget-object v0, Lapp/rive/runtime/kotlin/ResourceType;->Companion:Lapp/rive/runtime/kotlin/ResourceType$Companion;

    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/ResourceType$Companion;->makeMaybeResource(Ljava/lang/Object;)Lapp/rive/runtime/kotlin/ResourceType;

    move-result-object v0

    iput-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->resourceType:Lapp/rive/runtime/kotlin/ResourceType;

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->resource:Ljava/lang/Object;

    return-object p0
.end method

.method public final setResource$kotlin_release(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->resource:Ljava/lang/Object;

    return-void
.end method

.method public final setResourceType$kotlin_release(Lapp/rive/runtime/kotlin/ResourceType;)V
    .locals 0

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->resourceType:Lapp/rive/runtime/kotlin/ResourceType;

    return-void
.end method

.method public final setShouldLoadCDNAssets(Z)Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;
    .locals 1

    .line 260
    move-object v0, p0

    check-cast v0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;

    iput-boolean p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->shouldLoadCDNAssets:Z

    return-object p0
.end method

.method public final setShouldLoadCDNAssets$kotlin_release(Z)V
    .locals 0

    iput-boolean p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->shouldLoadCDNAssets:Z

    return-void
.end method

.method public final setStateMachineName(Ljava/lang/String;)Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    move-object v0, p0

    check-cast v0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->stateMachineName:Ljava/lang/String;

    return-object p0
.end method

.method public final setStateMachineName$kotlin_release(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->stateMachineName:Ljava/lang/String;

    return-void
.end method

.method public final setTraceAnimations(Z)Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;
    .locals 1

    .line 250
    move-object v0, p0

    check-cast v0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->traceAnimations:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setTraceAnimations$kotlin_release(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->traceAnimations:Ljava/lang/Boolean;

    return-void
.end method
