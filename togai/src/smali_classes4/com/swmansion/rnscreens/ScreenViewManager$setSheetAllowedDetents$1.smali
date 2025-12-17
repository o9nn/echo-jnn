.class final Lcom/swmansion/rnscreens/ScreenViewManager$setSheetAllowedDetents$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ScreenViewManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/rnscreens/ScreenViewManager;->setSheetAllowedDetents(Lcom/swmansion/rnscreens/Screen;Lcom/facebook/react/bridge/ReadableArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "idx",
        "",
        "invoke",
        "(I)Ljava/lang/Double;"
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
.field final synthetic $value:Lcom/facebook/react/bridge/ReadableArray;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenViewManager$setSheetAllowedDetents$1;->$value:Lcom/facebook/react/bridge/ReadableArray;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenViewManager$setSheetAllowedDetents$1;->$value:Lcom/facebook/react/bridge/ReadableArray;

    .line 335
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 335
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenViewManager$setSheetAllowedDetents$1;->invoke(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
