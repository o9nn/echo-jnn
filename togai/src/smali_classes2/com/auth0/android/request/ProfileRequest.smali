.class public final Lcom/auth0/android/request/ProfileRequest;
.super Ljava/lang/Object;
.source "ProfileRequest.kt"

# interfaces
.implements Lcom/auth0/android/request/Request;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/request/ProfileRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/auth0/android/request/Request<",
        "Lcom/auth0/android/result/Authentication;",
        "Lcom/auth0/android/authentication/AuthenticationException;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001cB!\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00030\u0001\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0018\u0010\r\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u001c\u0010\u000e\u001a\u00020\u00002\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J\u0011\u0010\u0011\u001a\u00020\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u000bJ\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u000bJ\u001c\u0010\u0018\u001a\u00020\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u001bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/auth0/android/request/ProfileRequest;",
        "Lcom/auth0/android/request/Request;",
        "Lcom/auth0/android/result/Authentication;",
        "Lcom/auth0/android/authentication/AuthenticationException;",
        "authenticationRequest",
        "Lcom/auth0/android/request/AuthenticationRequest;",
        "userInfoRequest",
        "Lcom/auth0/android/result/UserProfile;",
        "(Lcom/auth0/android/request/AuthenticationRequest;Lcom/auth0/android/request/Request;)V",
        "addHeader",
        "name",
        "",
        "value",
        "addParameter",
        "addParameters",
        "parameters",
        "",
        "await",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "execute",
        "setConnection",
        "connection",
        "setScope",
        "scope",
        "start",
        "",
        "callback",
        "Lcom/auth0/android/callback/Callback;",
        "Companion",
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


# static fields
.field private static final Companion:Lcom/auth0/android/request/ProfileRequest$Companion;

.field private static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"


# instance fields
.field private final authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

.field private final userInfoRequest:Lcom/auth0/android/request/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/auth0/android/request/Request<",
            "Lcom/auth0/android/result/UserProfile;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/request/ProfileRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/request/ProfileRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/request/ProfileRequest;->Companion:Lcom/auth0/android/request/ProfileRequest$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/auth0/android/request/AuthenticationRequest;Lcom/auth0/android/request/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/android/request/AuthenticationRequest;",
            "Lcom/auth0/android/request/Request<",
            "Lcom/auth0/android/result/UserProfile;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "authenticationRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userInfoRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/request/ProfileRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    iput-object p2, p0, Lcom/auth0/android/request/ProfileRequest;->userInfoRequest:Lcom/auth0/android/request/Request;

    return-void
.end method

.method public static final synthetic access$getUserInfoRequest$p(Lcom/auth0/android/request/ProfileRequest;)Lcom/auth0/android/request/Request;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/auth0/android/request/ProfileRequest;->userInfoRequest:Lcom/auth0/android/request/Request;

    return-object p0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/ProfileRequest;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/ProfileRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    .line 48
    invoke-interface {v0, p1, p2}, Lcom/auth0/android/request/AuthenticationRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;

    return-object p0
.end method

.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/auth0/android/request/ProfileRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/ProfileRequest;

    move-result-object p1

    check-cast p1, Lcom/auth0/android/request/Request;

    return-object p1
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/ProfileRequest;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/ProfileRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    .line 35
    invoke-interface {v0, p1, p2}, Lcom/auth0/android/request/AuthenticationRequest;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;

    return-object p0
.end method

.method public bridge synthetic addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/auth0/android/request/ProfileRequest;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/ProfileRequest;

    move-result-object p1

    check-cast p1, Lcom/auth0/android/request/Request;

    return-object p1
.end method

.method public addParameters(Ljava/util/Map;)Lcom/auth0/android/request/ProfileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/auth0/android/request/ProfileRequest;"
        }
    .end annotation

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/ProfileRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    .line 30
    invoke-interface {v0, p1}, Lcom/auth0/android/request/AuthenticationRequest;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;

    return-object p0
.end method

.method public bridge synthetic addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/auth0/android/request/ProfileRequest;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/ProfileRequest;

    move-result-object p1

    check-cast p1, Lcom/auth0/android/request/Request;

    return-object p1
.end method

.method public synthetic await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/Auth0Exception;
        }
    .end annotation

    instance-of v0, p1, Lcom/auth0/android/request/ProfileRequest$await$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/auth0/android/request/ProfileRequest$await$1;

    iget v1, v0, Lcom/auth0/android/request/ProfileRequest$await$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/auth0/android/request/ProfileRequest$await$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/auth0/android/request/ProfileRequest$await$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/auth0/android/request/ProfileRequest$await$1;

    invoke-direct {v0, p0, p1}, Lcom/auth0/android/request/ProfileRequest$await$1;-><init>(Lcom/auth0/android/request/ProfileRequest;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/auth0/android/request/ProfileRequest$await$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 125
    iget v2, v0, Lcom/auth0/android/request/ProfileRequest$await$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/auth0/android/request/ProfileRequest$await$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/auth0/android/result/Credentials;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/auth0/android/request/ProfileRequest$await$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/auth0/android/request/ProfileRequest;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/auth0/android/request/ProfileRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    .line 126
    iput-object p0, v0, Lcom/auth0/android/request/ProfileRequest$await$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/auth0/android/request/ProfileRequest$await$1;->label:I

    invoke-interface {p1, v0}, Lcom/auth0/android/request/AuthenticationRequest;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 125
    :goto_1
    check-cast p1, Lcom/auth0/android/result/Credentials;

    .line 127
    iget-object v2, v2, Lcom/auth0/android/request/ProfileRequest;->userInfoRequest:Lcom/auth0/android/request/Request;

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bearer "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/auth0/android/result/Credentials;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Authorization"

    invoke-interface {v2, v5, v4}, Lcom/auth0/android/request/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;

    move-result-object v2

    .line 129
    iput-object p1, v0, Lcom/auth0/android/request/ProfileRequest$await$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/auth0/android/request/ProfileRequest$await$1;->label:I

    invoke-interface {v2, v0}, Lcom/auth0/android/request/Request;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    .line 125
    :goto_2
    check-cast p1, Lcom/auth0/android/result/UserProfile;

    .line 130
    new-instance v1, Lcom/auth0/android/result/Authentication;

    invoke-direct {v1, p1, v0}, Lcom/auth0/android/result/Authentication;-><init>(Lcom/auth0/android/result/UserProfile;Lcom/auth0/android/result/Credentials;)V

    return-object v1
.end method

.method public execute()Lcom/auth0/android/result/Authentication;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/Auth0Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/android/request/ProfileRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    .line 109
    invoke-interface {v0}, Lcom/auth0/android/request/AuthenticationRequest;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/auth0/android/result/Credentials;

    iget-object v1, p0, Lcom/auth0/android/request/ProfileRequest;->userInfoRequest:Lcom/auth0/android/request/Request;

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bearer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/auth0/android/result/Credentials;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Authorization"

    invoke-interface {v1, v3, v2}, Lcom/auth0/android/request/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;

    move-result-object v1

    .line 112
    invoke-interface {v1}, Lcom/auth0/android/request/Request;->execute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/auth0/android/result/UserProfile;

    .line 113
    new-instance v2, Lcom/auth0/android/result/Authentication;

    invoke-direct {v2, v1, v0}, Lcom/auth0/android/result/Authentication;-><init>(Lcom/auth0/android/result/UserProfile;Lcom/auth0/android/result/Credentials;)V

    return-object v2
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/auth0/android/request/ProfileRequest;->execute()Lcom/auth0/android/result/Authentication;

    move-result-object v0

    return-object v0
.end method

.method public final setConnection(Ljava/lang/String;)Lcom/auth0/android/request/ProfileRequest;
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/ProfileRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    .line 70
    invoke-interface {v0, p1}, Lcom/auth0/android/request/AuthenticationRequest;->setConnection(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;

    return-object p0
.end method

.method public final setScope(Ljava/lang/String;)Lcom/auth0/android/request/ProfileRequest;
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/ProfileRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    .line 59
    invoke-interface {v0, p1}, Lcom/auth0/android/request/AuthenticationRequest;->setScope(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;

    return-object p0
.end method

.method public start(Lcom/auth0/android/callback/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/android/callback/Callback<",
            "Lcom/auth0/android/result/Authentication;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/ProfileRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    .line 80
    new-instance v1, Lcom/auth0/android/request/ProfileRequest$start$1;

    invoke-direct {v1, p0, p1}, Lcom/auth0/android/request/ProfileRequest$start$1;-><init>(Lcom/auth0/android/request/ProfileRequest;Lcom/auth0/android/callback/Callback;)V

    check-cast v1, Lcom/auth0/android/callback/Callback;

    invoke-interface {v0, v1}, Lcom/auth0/android/request/AuthenticationRequest;->start(Lcom/auth0/android/callback/Callback;)V

    return-void
.end method
