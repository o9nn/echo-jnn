.class final Lapp/rive/runtime/kotlin/RiveAnimationView$setRiveBytes$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RiveAnimationView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/rive/runtime/kotlin/RiveAnimationView;->setRiveBytes([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Lapp/rive/runtime/kotlin/core/Loop;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lapp/rive/runtime/kotlin/core/File;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lapp/rive/runtime/kotlin/core/File;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lapp/rive/runtime/kotlin/RiveAnimationView;


# direct methods
.method constructor <init>(Lapp/rive/runtime/kotlin/RiveAnimationView;)V
    .locals 0

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$setRiveBytes$2;->this$0:Lapp/rive/runtime/kotlin/RiveAnimationView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 767
    check-cast p1, Lapp/rive/runtime/kotlin/core/File;

    invoke-virtual {p0, p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$setRiveBytes$2;->invoke(Lapp/rive/runtime/kotlin/core/File;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lapp/rive/runtime/kotlin/core/File;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$setRiveBytes$2;->this$0:Lapp/rive/runtime/kotlin/RiveAnimationView;

    .line 768
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getController()Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setFile(Lapp/rive/runtime/kotlin/core/File;)V

    iget-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$setRiveBytes$2;->this$0:Lapp/rive/runtime/kotlin/RiveAnimationView;

    .line 769
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getController()Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    move-result-object p1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView$setRiveBytes$2;->this$0:Lapp/rive/runtime/kotlin/RiveAnimationView;

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getRendererAttributes()Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    move-result-object v0

    invoke-virtual {p1, v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setupScene$kotlin_release(Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;)V

    return-void
.end method
