.class final Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$SheetStateObserver;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "SheetDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SheetStateObserver"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$SheetStateObserver;",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
        "(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;)V",
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
.field final synthetic this$0:Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;


# direct methods
.method public constructor <init>(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$SheetStateObserver;->this$0:Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;

    .line 352
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 0

    const-string p2, "bottomSheet"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$SheetStateObserver;->this$0:Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;

    .line 357
    invoke-static {p1, p2}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->access$onSheetStateChanged(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;I)V

    return-void
.end method
