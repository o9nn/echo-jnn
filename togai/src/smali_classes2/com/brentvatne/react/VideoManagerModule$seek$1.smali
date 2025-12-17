.class final Lcom/brentvatne/react/VideoManagerModule$seek$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VideoManagerModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brentvatne/react/VideoManagerModule;->seek(Lcom/facebook/react/bridge/ReadableMap;I)V
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
.field final synthetic $time:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/brentvatne/react/VideoManagerModule$seek$1;->$time:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    check-cast p1, Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-virtual {p0, p1}, Lcom/brentvatne/react/VideoManagerModule$seek$1;->invoke(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/brentvatne/react/VideoManagerModule$seek$1;->$time:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    .line 54
    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->seekTo(J)V

    :cond_0
    return-void
.end method
