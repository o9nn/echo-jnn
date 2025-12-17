.class public final Lcom/auth0/android/result/UserIdentity;
.super Ljava/lang/Object;
.source "UserIdentity.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\n\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\rJ\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000c0\u000bR\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000fR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0013R\u001e\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b8\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000f\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/auth0/android/result/UserIdentity;",
        "Ljava/io/Serializable;",
        "id",
        "",
        "connection",
        "provider",
        "isSocial",
        "",
        "accessToken",
        "accessTokenSecret",
        "profileInfo",
        "",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V",
        "getAccessToken",
        "()Ljava/lang/String;",
        "getAccessTokenSecret",
        "getConnection",
        "getId",
        "()Z",
        "getProvider",
        "getProfileInfo",
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
.field private final accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "access_token"
    .end annotation
.end field

.field private final accessTokenSecret:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "access_token_secret"
    .end annotation
.end field

.field private final connection:Ljava/lang/String;
    .annotation runtime Lcom/auth0/android/request/internal/JsonRequired;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "connection"
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation runtime Lcom/auth0/android/request/internal/JsonRequired;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field

.field private final isSocial:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSocial"
    .end annotation
.end field

.field private final profileInfo:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profileData"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final provider:Ljava/lang/String;
    .annotation runtime Lcom/auth0/android/request/internal/JsonRequired;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "provider"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/result/UserIdentity;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/auth0/android/result/UserIdentity;->connection:Ljava/lang/String;

    iput-object p3, p0, Lcom/auth0/android/result/UserIdentity;->provider:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/auth0/android/result/UserIdentity;->isSocial:Z

    iput-object p5, p0, Lcom/auth0/android/result/UserIdentity;->accessToken:Ljava/lang/String;

    iput-object p6, p0, Lcom/auth0/android/result/UserIdentity;->accessTokenSecret:Ljava/lang/String;

    iput-object p7, p0, Lcom/auth0/android/result/UserIdentity;->profileInfo:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/UserIdentity;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getAccessTokenSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/UserIdentity;->accessTokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public final getConnection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/UserIdentity;->connection:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/UserIdentity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getProfileInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/android/result/UserIdentity;->profileInfo:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/UserIdentity;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final isSocial()Z
    .locals 1

    iget-boolean v0, p0, Lcom/auth0/android/result/UserIdentity;->isSocial:Z

    return v0
.end method
