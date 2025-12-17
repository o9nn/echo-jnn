.class public final synthetic Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/auth0/android/callback/RunnableTask;

.field public final synthetic f$1:Lcom/auth0/android/authentication/AuthenticationException;


# direct methods
.method public synthetic constructor <init>(Lcom/auth0/android/callback/RunnableTask;Lcom/auth0/android/authentication/AuthenticationException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda0;->f$0:Lcom/auth0/android/callback/RunnableTask;

    iput-object p2, p0, Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda0;->f$1:Lcom/auth0/android/authentication/AuthenticationException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda0;->f$0:Lcom/auth0/android/callback/RunnableTask;

    iget-object v1, p0, Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda0;->f$1:Lcom/auth0/android/authentication/AuthenticationException;

    invoke-static {v0, v1}, Lcom/auth0/android/provider/CustomTabsController;->lambda$null$0(Lcom/auth0/android/callback/RunnableTask;Lcom/auth0/android/authentication/AuthenticationException;)V

    return-void
.end method
