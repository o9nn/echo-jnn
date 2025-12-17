.class public final Lcom/auth0/android/NetworkErrorException;
.super Lcom/auth0/android/Auth0Exception;
.source "NetworkErrorException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/auth0/android/NetworkErrorException;",
        "Lcom/auth0/android/Auth0Exception;",
        "cause",
        "",
        "(Ljava/lang/Throwable;)V",
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


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "cause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Failed to execute the network request"

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/auth0/android/Auth0Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
