.class public interface abstract Lcom/facebook/react/uimanager/IViewGroupManager;
.super Ljava/lang/Object;
.source "IViewGroupManager.java"

# interfaces
.implements Lcom/facebook/react/uimanager/IViewManagerWithChildren;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/react/uimanager/IViewManagerWithChildren;"
    }
.end annotation


# virtual methods
.method public abstract addView(Landroid/view/View;Landroid/view/View;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract getChildAt(Landroid/view/View;I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public abstract getChildCount(Landroid/view/View;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public removeAllViews(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 27
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 29
    invoke-interface {p0, p1}, Lcom/facebook/react/uimanager/IViewGroupManager;->getChildCount(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 30
    invoke-interface {p0, p1, v0}, Lcom/facebook/react/uimanager/IViewGroupManager;->removeViewAt(Landroid/view/View;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract removeViewAt(Landroid/view/View;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method
