.class public final synthetic Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/auth0/android/provider/CustomTabsController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Landroid/net/Uri;

.field public final synthetic f$4:Lcom/auth0/android/request/internal/ThreadSwitcher;

.field public final synthetic f$5:Lcom/auth0/android/callback/RunnableTask;


# direct methods
.method public synthetic constructor <init>(Lcom/auth0/android/provider/CustomTabsController;ZLandroid/content/Context;Landroid/net/Uri;Lcom/auth0/android/request/internal/ThreadSwitcher;Lcom/auth0/android/callback/RunnableTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda1;->f$0:Lcom/auth0/android/provider/CustomTabsController;

    iput-boolean p2, p0, Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda1;->f$3:Landroid/net/Uri;

    iput-object p5, p0, Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda1;->f$4:Lcom/auth0/android/request/internal/ThreadSwitcher;

    iput-object p6, p0, Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda1;->f$5:Lcom/auth0/android/callback/RunnableTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda1;->f$0:Lcom/auth0/android/provider/CustomTabsController;

    iget-boolean v1, p0, Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda1;->f$1:Z

    iget-object v2, p0, Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda1;->f$3:Landroid/net/Uri;

    iget-object v4, p0, Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda1;->f$4:Lcom/auth0/android/request/internal/ThreadSwitcher;

    iget-object v5, p0, Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda1;->f$5:Lcom/auth0/android/callback/RunnableTask;

    invoke-virtual/range {v0 .. v5}, Lcom/auth0/android/provider/CustomTabsController;->lambda$launchUri$1$com-auth0-android-provider-CustomTabsController(ZLandroid/content/Context;Landroid/net/Uri;Lcom/auth0/android/request/internal/ThreadSwitcher;Lcom/auth0/android/callback/RunnableTask;)V

    return-void
.end method
