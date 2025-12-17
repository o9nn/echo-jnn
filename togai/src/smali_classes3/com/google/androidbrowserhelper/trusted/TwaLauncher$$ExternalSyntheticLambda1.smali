.class public final synthetic Lcom/google/androidbrowserhelper/trusted/TwaLauncher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/androidbrowserhelper/trusted/TwaLauncher;

.field public final synthetic f$1:Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;

.field public final synthetic f$2:Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashScreenStrategy;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/androidbrowserhelper/trusted/TwaLauncher;Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashScreenStrategy;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$$ExternalSyntheticLambda1;->f$0:Lcom/google/androidbrowserhelper/trusted/TwaLauncher;

    iput-object p2, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$$ExternalSyntheticLambda1;->f$1:Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;

    iput-object p3, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$$ExternalSyntheticLambda1;->f$2:Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashScreenStrategy;

    iput-object p4, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$$ExternalSyntheticLambda1;->f$0:Lcom/google/androidbrowserhelper/trusted/TwaLauncher;

    iget-object v1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$$ExternalSyntheticLambda1;->f$1:Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;

    iget-object v2, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$$ExternalSyntheticLambda1;->f$2:Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashScreenStrategy;

    iget-object v3, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->lambda$launchTwa$2$com-google-androidbrowserhelper-trusted-TwaLauncher(Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashScreenStrategy;Ljava/lang/Runnable;)V

    return-void
.end method
