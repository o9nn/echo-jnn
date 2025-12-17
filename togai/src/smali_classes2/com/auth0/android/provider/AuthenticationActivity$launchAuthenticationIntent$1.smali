.class public final Lcom/auth0/android/provider/AuthenticationActivity$launchAuthenticationIntent$1;
.super Ljava/lang/Object;
.source "AuthenticationActivity.kt"

# interfaces
.implements Lcom/auth0/android/callback/RunnableTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auth0/android/provider/AuthenticationActivity;->launchAuthenticationIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/auth0/android/callback/RunnableTask<",
        "Lcom/auth0/android/authentication/AuthenticationException;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/auth0/android/provider/AuthenticationActivity$launchAuthenticationIntent$1",
        "Lcom/auth0/android/callback/RunnableTask;",
        "Lcom/auth0/android/authentication/AuthenticationException;",
        "apply",
        "",
        "error",
        "auth0_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/auth0/android/provider/AuthenticationActivity;


# direct methods
.method constructor <init>(Lcom/auth0/android/provider/AuthenticationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/auth0/android/provider/AuthenticationActivity$launchAuthenticationIntent$1;->this$0:Lcom/auth0/android/provider/AuthenticationActivity;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/auth0/android/authentication/AuthenticationException;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/provider/AuthenticationActivity$launchAuthenticationIntent$1;->this$0:Lcom/auth0/android/provider/AuthenticationActivity;

    .line 79
    invoke-virtual {v0, p1}, Lcom/auth0/android/provider/AuthenticationActivity;->deliverAuthenticationFailure$auth0_release(Lcom/auth0/android/authentication/AuthenticationException;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0

    .line 77
    check-cast p1, Lcom/auth0/android/authentication/AuthenticationException;

    invoke-virtual {p0, p1}, Lcom/auth0/android/provider/AuthenticationActivity$launchAuthenticationIntent$1;->apply(Lcom/auth0/android/authentication/AuthenticationException;)V

    return-void
.end method
