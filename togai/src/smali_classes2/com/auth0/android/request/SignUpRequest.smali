.class public final Lcom/auth0/android/request/SignUpRequest;
.super Ljava/lang/Object;
.source "SignUpRequest.kt"

# interfaces
.implements Lcom/auth0/android/request/AuthenticationRequest;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B!\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0007J\u001a\u0010\u0008\u001a\u00020\u00002\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\nJ\u0018\u0010\u000c\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J\u0018\u0010\u000f\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J\u001c\u0010\u0010\u001a\u00020\u00002\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\nH\u0016J\u001a\u0010\u0011\u001a\u00020\u00002\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\nJ\u0011\u0010\u0012\u001a\u00020\u0013H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014J\u0008\u0010\u0015\u001a\u00020\u0013H\u0016J\u0010\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u000bH\u0016J\u0010\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u000bH\u0016J\u0010\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u000bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u000bH\u0016J\u0010\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u000bH\u0016J\u001c\u0010 \u001a\u00020!2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00050#H\u0016J\u0008\u0010$\u001a\u00020\u0000H\u0016J\u0010\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u000bH\u0016J\u0010\u0010\'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)H\u0016R\u000e\u0010\u0006\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006*"
    }
    d2 = {
        "Lcom/auth0/android/request/SignUpRequest;",
        "Lcom/auth0/android/request/AuthenticationRequest;",
        "signUpRequest",
        "Lcom/auth0/android/request/Request;",
        "Lcom/auth0/android/result/DatabaseUser;",
        "Lcom/auth0/android/authentication/AuthenticationException;",
        "authenticationRequest",
        "(Lcom/auth0/android/request/Request;Lcom/auth0/android/request/AuthenticationRequest;)V",
        "addAuthenticationParameters",
        "parameters",
        "",
        "",
        "addHeader",
        "name",
        "value",
        "addParameter",
        "addParameters",
        "addSignUpParameters",
        "await",
        "Lcom/auth0/android/result/Credentials;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "execute",
        "setAudience",
        "audience",
        "setConnection",
        "connection",
        "setGrantType",
        "grantType",
        "setRealm",
        "realm",
        "setScope",
        "scope",
        "start",
        "",
        "callback",
        "Lcom/auth0/android/callback/Callback;",
        "validateClaims",
        "withIdTokenVerificationIssuer",
        "issuer",
        "withIdTokenVerificationLeeway",
        "leeway",
        "",
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
.field private final authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

.field private final signUpRequest:Lcom/auth0/android/request/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/auth0/android/request/Request<",
            "Lcom/auth0/android/result/DatabaseUser;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/auth0/android/request/Request;Lcom/auth0/android/request/AuthenticationRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/android/request/Request<",
            "Lcom/auth0/android/result/DatabaseUser;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;",
            "Lcom/auth0/android/request/AuthenticationRequest;",
            ")V"
        }
    .end annotation

    const-string v0, "signUpRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authenticationRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/request/SignUpRequest;->signUpRequest:Lcom/auth0/android/request/Request;

    iput-object p2, p0, Lcom/auth0/android/request/SignUpRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    return-void
.end method

.method public static final synthetic access$getAuthenticationRequest$p(Lcom/auth0/android/request/SignUpRequest;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/auth0/android/request/SignUpRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    return-object p0
.end method


# virtual methods
.method public final addAuthenticationParameters(Ljava/util/Map;)Lcom/auth0/android/request/SignUpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/auth0/android/request/SignUpRequest;"
        }
    .end annotation

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/SignUpRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    .line 45
    invoke-interface {v0, p1}, Lcom/auth0/android/request/AuthenticationRequest;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;

    return-object p0
.end method

.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/auth0/android/request/SignUpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/SignUpRequest;

    move-result-object p1

    check-cast p1, Lcom/auth0/android/request/Request;

    return-object p1
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/SignUpRequest;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/SignUpRequest;->signUpRequest:Lcom/auth0/android/request/Request;

    .line 58
    invoke-interface {v0, p1, p2}, Lcom/auth0/android/request/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;

    iget-object v0, p0, Lcom/auth0/android/request/SignUpRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    .line 59
    invoke-interface {v0, p1, p2}, Lcom/auth0/android/request/AuthenticationRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;

    return-object p0
.end method

.method public bridge synthetic addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/auth0/android/request/SignUpRequest;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/SignUpRequest;

    move-result-object p1

    check-cast p1, Lcom/auth0/android/request/Request;

    return-object p1
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/SignUpRequest;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/SignUpRequest;->signUpRequest:Lcom/auth0/android/request/Request;

    .line 76
    invoke-interface {v0, p1, p2}, Lcom/auth0/android/request/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;

    iget-object v0, p0, Lcom/auth0/android/request/SignUpRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    .line 77
    invoke-interface {v0, p1, p2}, Lcom/auth0/android/request/AuthenticationRequest;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;

    return-object p0
.end method

.method public bridge synthetic addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/auth0/android/request/SignUpRequest;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/SignUpRequest;

    move-result-object p1

    check-cast p1, Lcom/auth0/android/request/Request;

    return-object p1
.end method

.method public addParameters(Ljava/util/Map;)Lcom/auth0/android/request/SignUpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/auth0/android/request/SignUpRequest;"
        }
    .end annotation

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/SignUpRequest;->signUpRequest:Lcom/auth0/android/request/Request;

    .line 70
    invoke-interface {v0, p1}, Lcom/auth0/android/request/Request;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;

    iget-object v0, p0, Lcom/auth0/android/request/SignUpRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    .line 71
    invoke-interface {v0, p1}, Lcom/auth0/android/request/AuthenticationRequest;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;

    return-object p0
.end method

.method public final addSignUpParameters(Ljava/util/Map;)Lcom/auth0/android/request/SignUpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/auth0/android/request/SignUpRequest;"
        }
    .end annotation

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/SignUpRequest;->signUpRequest:Lcom/auth0/android/request/Request;

    .line 33
    invoke-interface {v0, p1}, Lcom/auth0/android/request/Request;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;

    return-object p0
.end method

.method public synthetic await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/Auth0Exception;
        }
    .end annotation

    instance-of v0, p1, Lcom/auth0/android/request/SignUpRequest$await$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/auth0/android/request/SignUpRequest$await$1;

    iget v1, v0, Lcom/auth0/android/request/SignUpRequest$await$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/auth0/android/request/SignUpRequest$await$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/auth0/android/request/SignUpRequest$await$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/auth0/android/request/SignUpRequest$await$1;

    invoke-direct {v0, p0, p1}, Lcom/auth0/android/request/SignUpRequest$await$1;-><init>(Lcom/auth0/android/request/SignUpRequest;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/auth0/android/request/SignUpRequest$await$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 163
    iget v2, v0, Lcom/auth0/android/request/SignUpRequest$await$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/auth0/android/request/SignUpRequest$await$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/auth0/android/request/SignUpRequest;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/auth0/android/request/SignUpRequest;->signUpRequest:Lcom/auth0/android/request/Request;

    .line 164
    iput-object p0, v0, Lcom/auth0/android/request/SignUpRequest$await$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/auth0/android/request/SignUpRequest$await$1;->label:I

    invoke-interface {p1, v0}, Lcom/auth0/android/request/Request;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 165
    :goto_1
    iget-object p1, v2, Lcom/auth0/android/request/SignUpRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/auth0/android/request/SignUpRequest$await$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/auth0/android/request/SignUpRequest$await$1;->label:I

    invoke-interface {p1, v0}, Lcom/auth0/android/request/AuthenticationRequest;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p1
.end method

.method public execute()Lcom/auth0/android/result/Credentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/Auth0Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/android/request/SignUpRequest;->signUpRequest:Lcom/auth0/android/request/Request;

    .line 150
    invoke-interface {v0}, Lcom/auth0/android/request/Request;->execute()Ljava/lang/Object;

    iget-object v0, p0, Lcom/auth0/android/request/SignUpRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    .line 151
    invoke-interface {v0}, Lcom/auth0/android/request/AuthenticationRequest;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/auth0/android/result/Credentials;

    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/auth0/android/request/SignUpRequest;->execute()Lcom/auth0/android/result/Credentials;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAudience(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/auth0/android/request/SignUpRequest;->setAudience(Ljava/lang/String;)Lcom/auth0/android/request/SignUpRequest;

    move-result-object p1

    check-cast p1, Lcom/auth0/android/request/AuthenticationRequest;

    return-object p1
.end method

.method public setAudience(Ljava/lang/String;)Lcom/auth0/android/request/SignUpRequest;
    .locals 1

    const-string v0, "audience"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/SignUpRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    .line 87
    invoke-interface {v0, p1}, Lcom/auth0/android/request/AuthenticationRequest;->setAudience(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;

    return-object p0
.end method

.method public bridge synthetic setConnection(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/auth0/android/request/SignUpRequest;->setConnection(Ljava/lang/String;)Lcom/auth0/android/request/SignUpRequest;

    move-result-object p1

    check-cast p1, Lcom/auth0/android/request/AuthenticationRequest;

    return-object p1
.end method

.method public setConnection(Ljava/lang/String;)Lcom/auth0/android/request/SignUpRequest;
    .locals 2

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/auth0/android/request/SignUpRequest;->signUpRequest:Lcom/auth0/android/request/Request;

    .line 113
    invoke-interface {v1, v0, p1}, Lcom/auth0/android/request/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;

    iget-object v0, p0, Lcom/auth0/android/request/SignUpRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    .line 114
    invoke-interface {v0, p1}, Lcom/auth0/android/request/AuthenticationRequest;->setConnection(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;

    return-object p0
.end method

.method public bridge synthetic setGrantType(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/auth0/android/request/SignUpRequest;->setGrantType(Ljava/lang/String;)Lcom/auth0/android/request/SignUpRequest;

    move-result-object p1

    check-cast p1, Lcom/auth0/android/request/AuthenticationRequest;

    return-object p1
.end method

.method public setGrantType(Ljava/lang/String;)Lcom/auth0/android/request/SignUpRequest;
    .locals 1

    const-string v0, "grantType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/SignUpRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    .line 107
    invoke-interface {v0, p1}, Lcom/auth0/android/request/AuthenticationRequest;->setGrantType(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;

    return-object p0
.end method

.method public bridge synthetic setRealm(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/auth0/android/request/SignUpRequest;->setRealm(Ljava/lang/String;)Lcom/auth0/android/request/SignUpRequest;

    move-result-object p1

    check-cast p1, Lcom/auth0/android/request/AuthenticationRequest;

    return-object p1
.end method

.method public setRealm(Ljava/lang/String;)Lcom/auth0/android/request/SignUpRequest;
    .locals 2

    const-string v0, "realm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/SignUpRequest;->signUpRequest:Lcom/auth0/android/request/Request;

    const-string v1, "connection"

    .line 120
    invoke-interface {v0, v1, p1}, Lcom/auth0/android/request/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;

    iget-object v0, p0, Lcom/auth0/android/request/SignUpRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    .line 121
    invoke-interface {v0, p1}, Lcom/auth0/android/request/AuthenticationRequest;->setRealm(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;

    return-object p0
.end method

.method public bridge synthetic setScope(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/auth0/android/request/SignUpRequest;->setScope(Ljava/lang/String;)Lcom/auth0/android/request/SignUpRequest;

    move-result-object p1

    check-cast p1, Lcom/auth0/android/request/AuthenticationRequest;

    return-object p1
.end method

.method public setScope(Ljava/lang/String;)Lcom/auth0/android/request/SignUpRequest;
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/SignUpRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    .line 82
    invoke-interface {v0, p1}, Lcom/auth0/android/request/AuthenticationRequest;->setScope(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;

    return-object p0
.end method

.method public start(Lcom/auth0/android/callback/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/android/callback/Callback<",
            "Lcom/auth0/android/result/Credentials;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/SignUpRequest;->signUpRequest:Lcom/auth0/android/request/Request;

    .line 131
    new-instance v1, Lcom/auth0/android/request/SignUpRequest$start$1;

    invoke-direct {v1, p0, p1}, Lcom/auth0/android/request/SignUpRequest$start$1;-><init>(Lcom/auth0/android/request/SignUpRequest;Lcom/auth0/android/callback/Callback;)V

    check-cast v1, Lcom/auth0/android/callback/Callback;

    invoke-interface {v0, v1}, Lcom/auth0/android/request/Request;->start(Lcom/auth0/android/callback/Callback;)V

    return-void
.end method

.method public bridge synthetic validateClaims()Lcom/auth0/android/request/AuthenticationRequest;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/auth0/android/request/SignUpRequest;->validateClaims()Lcom/auth0/android/request/SignUpRequest;

    move-result-object v0

    check-cast v0, Lcom/auth0/android/request/AuthenticationRequest;

    return-object v0
.end method

.method public validateClaims()Lcom/auth0/android/request/SignUpRequest;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/request/SignUpRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    .line 92
    invoke-interface {v0}, Lcom/auth0/android/request/AuthenticationRequest;->validateClaims()Lcom/auth0/android/request/AuthenticationRequest;

    return-object p0
.end method

.method public bridge synthetic withIdTokenVerificationIssuer(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/auth0/android/request/SignUpRequest;->withIdTokenVerificationIssuer(Ljava/lang/String;)Lcom/auth0/android/request/SignUpRequest;

    move-result-object p1

    check-cast p1, Lcom/auth0/android/request/AuthenticationRequest;

    return-object p1
.end method

.method public withIdTokenVerificationIssuer(Ljava/lang/String;)Lcom/auth0/android/request/SignUpRequest;
    .locals 1

    const-string v0, "issuer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/SignUpRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    .line 102
    invoke-interface {v0, p1}, Lcom/auth0/android/request/AuthenticationRequest;->withIdTokenVerificationIssuer(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;

    return-object p0
.end method

.method public bridge synthetic withIdTokenVerificationLeeway(I)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/auth0/android/request/SignUpRequest;->withIdTokenVerificationLeeway(I)Lcom/auth0/android/request/SignUpRequest;

    move-result-object p1

    check-cast p1, Lcom/auth0/android/request/AuthenticationRequest;

    return-object p1
.end method

.method public withIdTokenVerificationLeeway(I)Lcom/auth0/android/request/SignUpRequest;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/request/SignUpRequest;->authenticationRequest:Lcom/auth0/android/request/AuthenticationRequest;

    .line 97
    invoke-interface {v0, p1}, Lcom/auth0/android/request/AuthenticationRequest;->withIdTokenVerificationLeeway(I)Lcom/auth0/android/request/AuthenticationRequest;

    return-object p0
.end method
