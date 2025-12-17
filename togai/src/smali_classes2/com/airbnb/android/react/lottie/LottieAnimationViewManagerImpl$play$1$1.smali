.class public final Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$play$1$1;
.super Ljava/lang/Object;
.source "LottieAnimationViewManagerImpl.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->play(Lcom/airbnb/lottie/LottieAnimationView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$play$1$1",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "onViewAttachedToWindow",
        "",
        "v",
        "Landroid/view/View;",
        "onViewDetachedFromWindow",
        "lottie-react-native_release"
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
.field final synthetic $view:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic $withCustomFrames:Z


# direct methods
.method constructor <init>(ZLcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$play$1$1;->$withCustomFrames:Z

    iput-object p2, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$play$1$1;->$view:Lcom/airbnb/lottie/LottieAnimationView;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iget-boolean v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$play$1$1;->$withCustomFrames:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$play$1$1;->$view:Lcom/airbnb/lottie/LottieAnimationView;

    .line 119
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$play$1$1;->$view:Lcom/airbnb/lottie/LottieAnimationView;

    .line 121
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    .line 123
    :goto_0
    move-object v0, p0

    check-cast v0, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 128
    move-object v0, p0

    check-cast v0, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
