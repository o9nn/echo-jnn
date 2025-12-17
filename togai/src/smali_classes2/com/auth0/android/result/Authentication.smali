.class public final Lcom/auth0/android/result/Authentication;
.super Ljava/lang/Object;
.source "Authentication.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/auth0/android/result/Authentication;",
        "",
        "profile",
        "Lcom/auth0/android/result/UserProfile;",
        "credentials",
        "Lcom/auth0/android/result/Credentials;",
        "(Lcom/auth0/android/result/UserProfile;Lcom/auth0/android/result/Credentials;)V",
        "getCredentials",
        "()Lcom/auth0/android/result/Credentials;",
        "getProfile",
        "()Lcom/auth0/android/result/UserProfile;",
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
.field private final credentials:Lcom/auth0/android/result/Credentials;

.field private final profile:Lcom/auth0/android/result/UserProfile;


# direct methods
.method public constructor <init>(Lcom/auth0/android/result/UserProfile;Lcom/auth0/android/result/Credentials;)V
    .locals 1

    const-string v0, "profile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credentials"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/result/Authentication;->profile:Lcom/auth0/android/result/UserProfile;

    iput-object p2, p0, Lcom/auth0/android/result/Authentication;->credentials:Lcom/auth0/android/result/Credentials;

    return-void
.end method


# virtual methods
.method public final getCredentials()Lcom/auth0/android/result/Credentials;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/Authentication;->credentials:Lcom/auth0/android/result/Credentials;

    return-object v0
.end method

.method public final getProfile()Lcom/auth0/android/result/UserProfile;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/Authentication;->profile:Lcom/auth0/android/result/UserProfile;

    return-object v0
.end method
