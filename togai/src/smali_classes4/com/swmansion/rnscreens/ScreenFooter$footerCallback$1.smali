.class public final Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "ScreenFooter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/rnscreens/ScreenFooter;-><init>(Lcom/facebook/react/bridge/ReactContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/swmansion/rnscreens/ScreenFooter$footerCallback$1",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
        "onSlide",
        "",
        "bottomSheet",
        "Landroid/view/View;",
        "slideOffset",
        "",
        "onStateChanged",
        "newState",
        "",
        "react-native-screens_release"
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
.field final synthetic this$0:Lcom/swmansion/rnscreens/ScreenFooter;


# direct methods
.method constructor <init>(Lcom/swmansion/rnscreens/ScreenFooter;)V
    .locals 0

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    .line 132
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 3

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    const/4 v0, 0x0

    .line 162
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p1, p2}, Lcom/swmansion/rnscreens/ScreenFooter;->access$setLastSlideOffset$p(Lcom/swmansion/rnscreens/ScreenFooter;F)V

    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    .line 163
    invoke-static {p1}, Lcom/swmansion/rnscreens/ScreenFooter;->access$isAnimationControlledByKeyboard$p(Lcom/swmansion/rnscreens/ScreenFooter;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    .line 165
    invoke-static {p1}, Lcom/swmansion/rnscreens/ScreenFooter;->access$getLastContainerHeight$p(Lcom/swmansion/rnscreens/ScreenFooter;)I

    move-result p2

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    .line 166
    invoke-static {v0}, Lcom/swmansion/rnscreens/ScreenFooter;->access$getReactHeight(Lcom/swmansion/rnscreens/ScreenFooter;)I

    move-result v0

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    .line 167
    invoke-static {v1}, Lcom/swmansion/rnscreens/ScreenFooter;->access$getLastSlideOffset$p(Lcom/swmansion/rnscreens/ScreenFooter;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/swmansion/rnscreens/ScreenFooter;->access$sheetTopWhileDragging(Lcom/swmansion/rnscreens/ScreenFooter;F)I

    move-result v1

    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    .line 168
    invoke-static {v2}, Lcom/swmansion/rnscreens/ScreenFooter;->access$getLastBottomInset$p(Lcom/swmansion/rnscreens/ScreenFooter;)I

    move-result v2

    .line 164
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/swmansion/rnscreens/ScreenFooter;->layoutFooterOnYAxis(IIII)V

    :cond_0
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 4

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    sget-object p1, Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;->INSTANCE:Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;->isStateStable(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    .line 147
    invoke-static {p1}, Lcom/swmansion/rnscreens/ScreenFooter;->access$getLastContainerHeight$p(Lcom/swmansion/rnscreens/ScreenFooter;)I

    move-result v0

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    .line 148
    invoke-static {v1}, Lcom/swmansion/rnscreens/ScreenFooter;->access$getReactHeight(Lcom/swmansion/rnscreens/ScreenFooter;)I

    move-result v1

    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    .line 149
    invoke-static {v2, p2}, Lcom/swmansion/rnscreens/ScreenFooter;->access$sheetTopInStableState(Lcom/swmansion/rnscreens/ScreenFooter;I)I

    move-result v2

    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    .line 150
    invoke-static {v3}, Lcom/swmansion/rnscreens/ScreenFooter;->access$getLastBottomInset$p(Lcom/swmansion/rnscreens/ScreenFooter;)I

    move-result v3

    .line 146
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/swmansion/rnscreens/ScreenFooter;->layoutFooterOnYAxis(IIII)V

    :goto_0
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    .line 155
    invoke-static {p1, p2}, Lcom/swmansion/rnscreens/ScreenFooter;->access$setLastStableSheetState$p(Lcom/swmansion/rnscreens/ScreenFooter;I)V

    return-void
.end method
