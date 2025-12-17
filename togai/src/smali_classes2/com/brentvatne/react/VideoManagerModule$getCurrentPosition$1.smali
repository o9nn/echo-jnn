.class final Lcom/brentvatne/react/VideoManagerModule$getCurrentPosition$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VideoManagerModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brentvatne/react/VideoManagerModule;->getCurrentPosition(ILcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/brentvatne/exoplayer/ReactExoplayerView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/brentvatne/exoplayer/ReactExoplayerView;",
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
.field final synthetic $promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/react/VideoManagerModule$getCurrentPosition$1;->$promise:Lcom/facebook/react/bridge/Promise;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p1, Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-virtual {p0, p1}, Lcom/brentvatne/react/VideoManagerModule$getCurrentPosition$1;->invoke(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/brentvatne/react/VideoManagerModule$getCurrentPosition$1;->$promise:Lcom/facebook/react/bridge/Promise;

    .line 68
    invoke-virtual {p1, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getCurrentPosition(Lcom/facebook/react/bridge/Promise;)V

    :cond_0
    return-void
.end method
