.class public final synthetic Lcom/google/androidbrowserhelper/trusted/splashscreens/PwaWrapperSplashScreenStrategy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$Callback;


# instance fields
.field public final synthetic f$0:Lcom/google/androidbrowserhelper/trusted/splashscreens/PwaWrapperSplashScreenStrategy;

.field public final synthetic f$1:Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/androidbrowserhelper/trusted/splashscreens/PwaWrapperSplashScreenStrategy;Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/PwaWrapperSplashScreenStrategy$$ExternalSyntheticLambda0;->f$0:Lcom/google/androidbrowserhelper/trusted/splashscreens/PwaWrapperSplashScreenStrategy;

    iput-object p2, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/PwaWrapperSplashScreenStrategy$$ExternalSyntheticLambda0;->f$1:Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;

    iput-object p3, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/PwaWrapperSplashScreenStrategy$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onFinished(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/PwaWrapperSplashScreenStrategy$$ExternalSyntheticLambda0;->f$0:Lcom/google/androidbrowserhelper/trusted/splashscreens/PwaWrapperSplashScreenStrategy;

    iget-object v1, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/PwaWrapperSplashScreenStrategy$$ExternalSyntheticLambda0;->f$1:Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;

    iget-object v2, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/PwaWrapperSplashScreenStrategy$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/androidbrowserhelper/trusted/splashscreens/PwaWrapperSplashScreenStrategy;->lambda$configureTwaBuilder$0$com-google-androidbrowserhelper-trusted-splashscreens-PwaWrapperSplashScreenStrategy(Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Ljava/lang/Runnable;Z)V

    return-void
.end method
