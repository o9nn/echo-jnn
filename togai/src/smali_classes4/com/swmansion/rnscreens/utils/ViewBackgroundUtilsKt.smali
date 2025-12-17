.class public final Lcom/swmansion/rnscreens/utils/ViewBackgroundUtilsKt;
.super Ljava/lang/Object;
.source "ViewBackgroundUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0013\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0000\u00a2\u0006\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "resolveBackgroundColor",
        "",
        "Lcom/facebook/react/views/view/ReactViewGroup;",
        "(Lcom/facebook/react/views/view/ReactViewGroup;)Ljava/lang/Integer;",
        "react-native-screens_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final resolveBackgroundColor(Lcom/facebook/react/views/view/ReactViewGroup;)Ljava/lang/Integer;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    return-object v1
.end method
