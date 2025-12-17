.class public interface abstract Lcom/auth0/android/callback/BaseCallback;
.super Ljava/lang/Object;
.source "BaseCallback.kt"

# interfaces
.implements Lcom/auth0/android/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Lcom/auth0/android/Auth0Exception;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/auth0/android/callback/Callback<",
        "TT;TU;>;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "The contract of this interface has been migrated to the Callback interface"
    replaceWith = .subannotation Lkotlin/ReplaceWith;
        expression = "Callback"
        imports = {}
    .end subannotation
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/auth0/android/callback/BaseCallback;",
        "T",
        "U",
        "Lcom/auth0/android/Auth0Exception;",
        "Lcom/auth0/android/callback/Callback;",
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
