.class public interface abstract Lcom/auth0/android/provider/AuthCallback;
.super Ljava/lang/Object;
.source "AuthCallback.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/auth0/android/provider/AuthCallback;",
        "",
        "onFailure",
        "",
        "dialog",
        "Landroid/app/Dialog;",
        "exception",
        "Lcom/auth0/android/authentication/AuthenticationException;",
        "onSuccess",
        "credentials",
        "Lcom/auth0/android/result/Credentials;",
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


# virtual methods
.method public abstract onFailure(Landroid/app/Dialog;)V
.end method

.method public abstract onFailure(Lcom/auth0/android/authentication/AuthenticationException;)V
.end method

.method public abstract onSuccess(Lcom/auth0/android/result/Credentials;)V
.end method
