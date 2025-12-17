.class public final synthetic Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;


# instance fields
.field public final synthetic f$0:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$$ExternalSyntheticLambda1;->f$0:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method


# virtual methods
.method public final onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$$ExternalSyntheticLambda1;->f$0:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->$r8$lambda$_DZMhSmFR0vHTReTCOR9nIOyOn8(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
