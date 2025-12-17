.class public final Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;
.super Lcom/auth0/android/authentication/storage/CryptoException;
.source "IncompatibleDeviceException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;",
        "Lcom/auth0/android/authentication/storage/CryptoException;",
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

    .line 8
    const-class v0, Lcom/auth0/android/authentication/storage/CryptoUtil;

    const-string v0, "The device is not compatible with the CryptoUtil class."

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/auth0/android/authentication/storage/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
