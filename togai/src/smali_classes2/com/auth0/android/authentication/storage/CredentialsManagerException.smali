.class public final Lcom/auth0/android/authentication/storage/CredentialsManagerException;
.super Lcom/auth0/android/Auth0Exception;
.source "CredentialsManagerException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001b\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\tR(\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/auth0/android/authentication/storage/CredentialsManagerException;",
        "Lcom/auth0/android/Auth0Exception;",
        "message",
        "",
        "cause",
        "",
        "(Ljava/lang/String;Ljava/lang/Throwable;)V",
        "isDeviceIncompatible",
        "",
        "()Z",
        "<set-?>",
        "Lcom/auth0/android/result/Credentials;",
        "refreshedCredentials",
        "getRefreshedCredentials",
        "()Lcom/auth0/android/result/Credentials;",
        "setRefreshedCredentials$auth0_release",
        "(Lcom/auth0/android/result/Credentials;)V",
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
.field private refreshedCredentials:Lcom/auth0/android/result/Credentials;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/auth0/android/Auth0Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getRefreshedCredentials()Lcom/auth0/android/result/Credentials;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/authentication/storage/CredentialsManagerException;->refreshedCredentials:Lcom/auth0/android/result/Credentials;

    return-object v0
.end method

.method public final isDeviceIncompatible()Z
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;

    return v0
.end method

.method public final setRefreshedCredentials$auth0_release(Lcom/auth0/android/result/Credentials;)V
    .locals 0

    iput-object p1, p0, Lcom/auth0/android/authentication/storage/CredentialsManagerException;->refreshedCredentials:Lcom/auth0/android/result/Credentials;

    return-void
.end method
