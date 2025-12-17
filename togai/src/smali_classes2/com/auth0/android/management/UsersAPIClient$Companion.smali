.class final Lcom/auth0/android/management/UsersAPIClient$Companion;
.super Ljava/lang/Object;
.source "UsersAPIClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/auth0/android/management/UsersAPIClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002J\u001e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000e2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0011H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/auth0/android/management/UsersAPIClient$Companion;",
        "",
        "()V",
        "API_PATH",
        "",
        "IDENTITIES_PATH",
        "LINK_WITH_KEY",
        "USERS_PATH",
        "USER_METADATA_KEY",
        "V2_PATH",
        "createErrorAdapter",
        "Lcom/auth0/android/request/ErrorAdapter;",
        "Lcom/auth0/android/management/ManagementException;",
        "factoryForToken",
        "Lcom/auth0/android/request/internal/RequestFactory;",
        "token",
        "client",
        "Lcom/auth0/android/request/NetworkingClient;",
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
.method private constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/auth0/android/management/UsersAPIClient$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$factoryForToken(Lcom/auth0/android/management/UsersAPIClient$Companion;Ljava/lang/String;Lcom/auth0/android/request/NetworkingClient;)Lcom/auth0/android/request/internal/RequestFactory;
    .locals 0

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/auth0/android/management/UsersAPIClient$Companion;->factoryForToken(Ljava/lang/String;Lcom/auth0/android/request/NetworkingClient;)Lcom/auth0/android/request/internal/RequestFactory;

    move-result-object p0

    return-object p0
.end method

.method private final createErrorAdapter()Lcom/auth0/android/request/ErrorAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/auth0/android/request/ErrorAdapter<",
            "Lcom/auth0/android/management/ManagementException;",
            ">;"
        }
    .end annotation

    .line 202
    sget-object v0, Lcom/auth0/android/request/internal/GsonAdapter;->Companion:Lcom/auth0/android/request/internal/GsonAdapter$Companion;

    sget-object v1, Lcom/auth0/android/request/internal/GsonProvider;->INSTANCE:Lcom/auth0/android/request/internal/GsonProvider;

    invoke-virtual {v1}, Lcom/auth0/android/request/internal/GsonProvider;->getGson$auth0_release()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/auth0/android/request/internal/GsonAdapter$Companion;->forMap(Lcom/google/gson/Gson;)Lcom/auth0/android/request/internal/GsonAdapter;

    move-result-object v0

    .line 203
    new-instance v1, Lcom/auth0/android/management/UsersAPIClient$Companion$createErrorAdapter$1;

    invoke-direct {v1, v0}, Lcom/auth0/android/management/UsersAPIClient$Companion$createErrorAdapter$1;-><init>(Lcom/auth0/android/request/internal/GsonAdapter;)V

    check-cast v1, Lcom/auth0/android/request/ErrorAdapter;

    return-object v1
.end method

.method private final factoryForToken(Ljava/lang/String;Lcom/auth0/android/request/NetworkingClient;)Lcom/auth0/android/request/internal/RequestFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/auth0/android/request/NetworkingClient;",
            ")",
            "Lcom/auth0/android/request/internal/RequestFactory<",
            "Lcom/auth0/android/management/ManagementException;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Lcom/auth0/android/request/internal/RequestFactory;

    invoke-direct {p0}, Lcom/auth0/android/management/UsersAPIClient$Companion;->createErrorAdapter()Lcom/auth0/android/request/ErrorAdapter;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/auth0/android/request/internal/RequestFactory;-><init>(Lcom/auth0/android/request/NetworkingClient;Lcom/auth0/android/request/ErrorAdapter;)V

    .line 235
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Bearer "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Authorization"

    invoke-virtual {v0, p2, p1}, Lcom/auth0/android/request/internal/RequestFactory;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
