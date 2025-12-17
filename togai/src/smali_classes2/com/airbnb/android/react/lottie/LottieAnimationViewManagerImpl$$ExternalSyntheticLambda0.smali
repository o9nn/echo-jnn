.class public final synthetic Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public synthetic constructor <init>(ZIILcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$$ExternalSyntheticLambda0;->f$0:Z

    iput p2, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$$ExternalSyntheticLambda0;->f$3:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-boolean v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$$ExternalSyntheticLambda0;->f$0:Z

    iget v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$$ExternalSyntheticLambda0;->f$3:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->$r8$lambda$c3yRj7nk8ohkq7RMmtLuQzrrRTg(ZIILcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method
