.class public final Lcom/auth0/android/provider/OAuthManager$resume$1$onSuccess$1;
.super Ljava/lang/Object;
.source "OAuthManager.kt"

# interfaces
.implements Lcom/auth0/android/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auth0/android/provider/OAuthManager$resume$1;->onSuccess(Lcom/auth0/android/result/Credentials;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/auth0/android/callback/Callback<",
        "Ljava/lang/Void;",
        "Lcom/auth0/android/Auth0Exception;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0012\u0010\u0007\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/auth0/android/provider/OAuthManager$resume$1$onSuccess$1",
        "Lcom/auth0/android/callback/Callback;",
        "Ljava/lang/Void;",
        "Lcom/auth0/android/Auth0Exception;",
        "onFailure",
        "",
        "error",
        "onSuccess",
        "result",
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
.field final synthetic $credentials:Lcom/auth0/android/result/Credentials;

.field final synthetic this$0:Lcom/auth0/android/provider/OAuthManager;


# direct methods
.method constructor <init>(Lcom/auth0/android/provider/OAuthManager;Lcom/auth0/android/result/Credentials;)V
    .locals 0

    iput-object p1, p0, Lcom/auth0/android/provider/OAuthManager$resume$1$onSuccess$1;->this$0:Lcom/auth0/android/provider/OAuthManager;

    iput-object p2, p0, Lcom/auth0/android/provider/OAuthManager$resume$1$onSuccess$1;->$credentials:Lcom/auth0/android/result/Credentials;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/auth0/android/Auth0Exception;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/auth0/android/authentication/AuthenticationException;

    const-string v1, "Could not verify the ID token"

    .line 116
    check-cast p1, Ljava/lang/Exception;

    .line 115
    invoke-direct {v0, v1, p1}, Lcom/auth0/android/authentication/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object p1, p0, Lcom/auth0/android/provider/OAuthManager$resume$1$onSuccess$1;->this$0:Lcom/auth0/android/provider/OAuthManager;

    .line 118
    invoke-static {p1}, Lcom/auth0/android/provider/OAuthManager;->access$getCallback$p(Lcom/auth0/android/provider/OAuthManager;)Lcom/auth0/android/callback/Callback;

    move-result-object p1

    check-cast v0, Lcom/auth0/android/Auth0Exception;

    invoke-interface {p1, v0}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 109
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/auth0/android/provider/OAuthManager$resume$1$onSuccess$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1

    iget-object p1, p0, Lcom/auth0/android/provider/OAuthManager$resume$1$onSuccess$1;->this$0:Lcom/auth0/android/provider/OAuthManager;

    .line 111
    invoke-static {p1}, Lcom/auth0/android/provider/OAuthManager;->access$getCallback$p(Lcom/auth0/android/provider/OAuthManager;)Lcom/auth0/android/callback/Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/auth0/android/provider/OAuthManager$resume$1$onSuccess$1;->$credentials:Lcom/auth0/android/result/Credentials;

    invoke-interface {p1, v0}, Lcom/auth0/android/callback/Callback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
