.class public Lcom/google/androidbrowserhelper/trusted/QualityEnforcer;
.super Landroidx/browser/customtabs/CustomTabsCallback;
.source "QualityEnforcer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/androidbrowserhelper/trusted/QualityEnforcer$Delegate;
    }
.end annotation


# static fields
.field static final CRASH:Ljava/lang/String; = "quality_enforcement.crash"

.field static final KEY_CRASH_REASON:Ljava/lang/String; = "crash_reason"

.field static final KEY_SUCCESS:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String; = "TwaQualityEnforcement"


# instance fields
.field private final mDelegate:Lcom/google/androidbrowserhelper/trusted/QualityEnforcer$Delegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    .line 54
    new-instance v0, Lcom/google/androidbrowserhelper/trusted/QualityEnforcer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/androidbrowserhelper/trusted/QualityEnforcer$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/google/androidbrowserhelper/trusted/QualityEnforcer;->mDelegate:Lcom/google/androidbrowserhelper/trusted/QualityEnforcer$Delegate;

    return-void
.end method

.method constructor <init>(Lcom/google/androidbrowserhelper/trusted/QualityEnforcer$Delegate;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/QualityEnforcer;->mDelegate:Lcom/google/androidbrowserhelper/trusted/QualityEnforcer$Delegate;

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;)V
    .locals 1

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$new$1(Ljava/lang/String;)V
    .locals 2

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/androidbrowserhelper/trusted/QualityEnforcer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/androidbrowserhelper/trusted/QualityEnforcer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public extraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "crash_reason"

    .line 70
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 71
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p1

    .line 73
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "quality_enforcement.crash"

    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "success"

    const/4 v1, 0x1

    .line 75
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/QualityEnforcer;->mDelegate:Lcom/google/androidbrowserhelper/trusted/QualityEnforcer$Delegate;

    .line 76
    invoke-interface {p1, p2}, Lcom/google/androidbrowserhelper/trusted/QualityEnforcer$Delegate;->crash(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method
