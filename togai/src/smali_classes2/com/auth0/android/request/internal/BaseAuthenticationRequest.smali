.class public Lcom/auth0/android/request/internal/BaseAuthenticationRequest;
.super Ljava/lang/Object;
.source "BaseAuthenticationRequest.kt"

# interfaces
.implements Lcom/auth0/android/request/AuthenticationRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/request/internal/BaseAuthenticationRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010$\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0010\u0018\u0000 H2\u00020\u0001:\u0001HB)\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u0018\u0010)\u001a\u00020\u00012\u0006\u0010*\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0016J\u0018\u0010+\u001a\u00020\u00012\u0006\u0010*\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0016J\u001c\u0010,\u001a\u00020\u00012\u0012\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070.H\u0016J\u0011\u0010/\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00100J\u0008\u00101\u001a\u00020\u0004H\u0016J\u0010\u00102\u001a\u00020\u00012\u0006\u00103\u001a\u00020\u0007H\u0016J\u0010\u00104\u001a\u00020\u00012\u0006\u00105\u001a\u00020\u0007H\u0016J\u0010\u00106\u001a\u00020\u00012\u0006\u00107\u001a\u00020\u0007H\u0016J\u0010\u00108\u001a\u00020\u00012\u0006\u00109\u001a\u00020\u0007H\u0016J\u0010\u0010:\u001a\u00020\u00012\u0006\u0010;\u001a\u00020\u0007H\u0016J\u001c\u0010<\u001a\u00020=2\u0012\u0010>\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050?H\u0016J\u0008\u0010\"\u001a\u00020\u0001H\u0016J\u0015\u0010@\u001a\u00020=2\u0006\u0010A\u001a\u00020\u0007H\u0001\u00a2\u0006\u0002\u0008BJ\u0008\u0010C\u001a\u00020=H\u0002J\u0010\u0010D\u001a\u00020\u00012\u0006\u0010E\u001a\u00020\u0007H\u0016J\u0010\u0010F\u001a\u00020\u00012\u0006\u0010G\u001a\u00020\u001bH\u0016R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b8@@AX\u0080\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R$\u0010\u0013\u001a\u00020\u00078\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R(\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0016\n\u0002\u0010!\u0012\u0004\u0008\u001c\u0010\u0015\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\"\u001a\u00020#8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008$\u0010\u0015\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006I"
    }
    d2 = {
        "Lcom/auth0/android/request/internal/BaseAuthenticationRequest;",
        "Lcom/auth0/android/request/AuthenticationRequest;",
        "request",
        "Lcom/auth0/android/request/Request;",
        "Lcom/auth0/android/result/Credentials;",
        "Lcom/auth0/android/authentication/AuthenticationException;",
        "clientId",
        "",
        "baseURL",
        "(Lcom/auth0/android/request/Request;Ljava/lang/String;Ljava/lang/String;)V",
        "_currentTimeInMillis",
        "",
        "Ljava/lang/Long;",
        "value",
        "currentTimeInMillis",
        "getCurrentTimeInMillis$auth0_release",
        "()J",
        "setCurrentTimeInMillis$auth0_release",
        "(J)V",
        "idTokenVerificationIssuer",
        "getIdTokenVerificationIssuer$auth0_release$annotations",
        "()V",
        "getIdTokenVerificationIssuer$auth0_release",
        "()Ljava/lang/String;",
        "setIdTokenVerificationIssuer$auth0_release",
        "(Ljava/lang/String;)V",
        "idTokenVerificationLeeway",
        "",
        "getIdTokenVerificationLeeway$auth0_release$annotations",
        "getIdTokenVerificationLeeway$auth0_release",
        "()Ljava/lang/Integer;",
        "setIdTokenVerificationLeeway$auth0_release",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "validateClaims",
        "",
        "getValidateClaims$auth0_release$annotations",
        "getValidateClaims$auth0_release",
        "()Z",
        "setValidateClaims$auth0_release",
        "(Z)V",
        "addHeader",
        "name",
        "addParameter",
        "addParameters",
        "parameters",
        "",
        "await",
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
        "verifyClaims",
        "idToken",
        "verifyClaims$auth0_release",
        "warnClaimValidation",
        "withIdTokenVerificationIssuer",
        "issuer",
        "withIdTokenVerificationLeeway",
        "leeway",
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
.field private static final Companion:Lcom/auth0/android/request/internal/BaseAuthenticationRequest$Companion;

.field private static final ERROR_VALUE_ID_TOKEN_VALIDATION_FAILED:Ljava/lang/String; = "Could not verify the ID token"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _currentTimeInMillis:Ljava/lang/Long;

.field private final clientId:Ljava/lang/String;

.field private idTokenVerificationIssuer:Ljava/lang/String;

.field private idTokenVerificationLeeway:Ljava/lang/Integer;

.field private final request:Lcom/auth0/android/request/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/auth0/android/request/Request<",
            "Lcom/auth0/android/result/Credentials;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation
.end field

.field private validateClaims:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->Companion:Lcom/auth0/android/request/internal/BaseAuthenticationRequest$Companion;

    const-string v0, "BaseAuthenticationRequest"

    sput-object v0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/auth0/android/request/Request;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/android/request/Request<",
            "Lcom/auth0/android/result/Credentials;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseURL"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->request:Lcom/auth0/android/request/Request;

    iput-object p2, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->clientId:Ljava/lang/String;

    iput-object p3, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->idTokenVerificationIssuer:Ljava/lang/String;

    return-void
.end method

.method static synthetic await$suspendImpl(Lcom/auth0/android/request/internal/BaseAuthenticationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/android/request/internal/BaseAuthenticationRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/auth0/android/result/Credentials;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/Auth0Exception;
        }
    .end annotation

    instance-of v0, p1, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$await$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$await$1;

    iget v1, v0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$await$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$await$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$await$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$await$1;

    invoke-direct {v0, p0, p1}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$await$1;-><init>(Lcom/auth0/android/request/internal/BaseAuthenticationRequest;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$await$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 162
    iget v2, v0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$await$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$await$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 163
    invoke-direct {p0}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->warnClaimValidation()V

    .line 164
    iget-object p1, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->request:Lcom/auth0/android/request/Request;

    iput-object p0, v0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$await$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$await$1;->label:I

    invoke-interface {p1, v0}, Lcom/auth0/android/request/Request;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 162
    :cond_3
    :goto_1
    check-cast p1, Lcom/auth0/android/result/Credentials;

    .line 165
    iget-boolean v0, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->validateClaims:Z

    if-eqz v0, :cond_4

    .line 166
    invoke-virtual {p1}, Lcom/auth0/android/result/Credentials;->getIdToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->verifyClaims$auth0_release(Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method

.method public static synthetic getIdTokenVerificationIssuer$auth0_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getIdTokenVerificationLeeway$auth0_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getValidateClaims$auth0_release$annotations()V
    .locals 0

    return-void
.end method

.method private final warnClaimValidation()V
    .locals 2

    iget-boolean v0, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->validateClaims:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->TAG:Ljava/lang/String;

    const-string v1, "The request is made without validating claims. Enable claim validation by calling AuthenticationRequest#validateClaims()"

    .line 203
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->request:Lcom/auth0/android/request/Request;

    .line 125
    invoke-interface {v0, p1, p2}, Lcom/auth0/android/request/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;

    .line 126
    move-object p1, p0

    check-cast p1, Lcom/auth0/android/request/AuthenticationRequest;

    return-object p1
.end method

.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;

    move-result-object p1

    check-cast p1, Lcom/auth0/android/request/Request;

    return-object p1
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->request:Lcom/auth0/android/request/Request;

    .line 120
    invoke-interface {v0, p1, p2}, Lcom/auth0/android/request/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;

    .line 121
    move-object p1, p0

    check-cast p1, Lcom/auth0/android/request/AuthenticationRequest;

    return-object p1
.end method

.method public bridge synthetic addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;

    move-result-object p1

    check-cast p1, Lcom/auth0/android/request/Request;

    return-object p1
.end method

.method public addParameters(Ljava/util/Map;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/auth0/android/request/AuthenticationRequest;"
        }
    .end annotation

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->request:Lcom/auth0/android/request/Request;

    .line 115
    invoke-interface {v0, p1}, Lcom/auth0/android/request/Request;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;

    .line 116
    move-object p1, p0

    check-cast p1, Lcom/auth0/android/request/AuthenticationRequest;

    return-object p1
.end method

.method public bridge synthetic addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/AuthenticationRequest;

    move-result-object p1

    check-cast p1, Lcom/auth0/android/request/Request;

    return-object p1
.end method

.method public synthetic await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/Auth0Exception;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->await$suspendImpl(Lcom/auth0/android/request/internal/BaseAuthenticationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute()Lcom/auth0/android/result/Credentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/Auth0Exception;
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->warnClaimValidation()V

    iget-object v0, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->request:Lcom/auth0/android/request/Request;

    .line 153
    invoke-interface {v0}, Lcom/auth0/android/request/Request;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/auth0/android/result/Credentials;

    iget-boolean v1, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->validateClaims:Z

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v0}, Lcom/auth0/android/result/Credentials;->getIdToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->verifyClaims$auth0_release(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->execute()Lcom/auth0/android/result/Credentials;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentTimeInMillis$auth0_release()J
    .locals 2

    iget-object v0, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->_currentTimeInMillis:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 38
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getIdTokenVerificationIssuer$auth0_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->idTokenVerificationIssuer:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdTokenVerificationLeeway$auth0_release()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->idTokenVerificationLeeway:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getValidateClaims$auth0_release()Z
    .locals 1

    iget-boolean v0, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->validateClaims:Z

    return v0
.end method

.method public setAudience(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 1

    const-string v0, "audience"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v0, p1}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;

    .line 96
    move-object p1, p0

    check-cast p1, Lcom/auth0/android/request/AuthenticationRequest;

    return-object p1
.end method

.method public setConnection(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, v0, p1}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;

    .line 63
    move-object p1, p0

    check-cast p1, Lcom/auth0/android/request/AuthenticationRequest;

    return-object p1
.end method

.method public final setCurrentTimeInMillis$auth0_release(J)V
    .locals 0

    .line 40
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->_currentTimeInMillis:Ljava/lang/Long;

    return-void
.end method

.method public setGrantType(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 1

    const-string v0, "grantType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grant_type"

    .line 51
    invoke-virtual {p0, v0, p1}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;

    .line 52
    move-object p1, p0

    check-cast p1, Lcom/auth0/android/request/AuthenticationRequest;

    return-object p1
.end method

.method public final setIdTokenVerificationIssuer$auth0_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->idTokenVerificationIssuer:Ljava/lang/String;

    return-void
.end method

.method public final setIdTokenVerificationLeeway$auth0_release(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->idTokenVerificationLeeway:Ljava/lang/Integer;

    return-void
.end method

.method public setRealm(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 1

    const-string v0, "realm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, v0, p1}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;

    .line 74
    move-object p1, p0

    check-cast p1, Lcom/auth0/android/request/AuthenticationRequest;

    return-object p1
.end method

.method public setScope(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v0, p1}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;

    .line 85
    move-object p1, p0

    check-cast p1, Lcom/auth0/android/request/AuthenticationRequest;

    return-object p1
.end method

.method public final setValidateClaims$auth0_release(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->validateClaims:Z

    return-void
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

    .line 130
    invoke-direct {p0}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->warnClaimValidation()V

    iget-object v0, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->request:Lcom/auth0/android/request/Request;

    .line 131
    new-instance v1, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$start$1;

    invoke-direct {v1, p0, p1}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$start$1;-><init>(Lcom/auth0/android/request/internal/BaseAuthenticationRequest;Lcom/auth0/android/callback/Callback;)V

    check-cast v1, Lcom/auth0/android/callback/Callback;

    invoke-interface {v0, v1}, Lcom/auth0/android/request/Request;->start(Lcom/auth0/android/callback/Callback;)V

    return-void
.end method

.method public validateClaims()Lcom/auth0/android/request/AuthenticationRequest;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->validateClaims:Z

    .line 101
    move-object v0, p0

    check-cast v0, Lcom/auth0/android/request/AuthenticationRequest;

    return-object v0
.end method

.method public final verifyClaims$auth0_release(Ljava/lang/String;)V
    .locals 4

    const-string v0, "idToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lcom/auth0/android/provider/TokenValidationException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    .line 184
    :try_start_1
    new-instance v0, Lcom/auth0/android/request/internal/Jwt;

    invoke-direct {v0, p1}, Lcom/auth0/android/request/internal/Jwt;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/auth0/android/provider/TokenValidationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    :try_start_2
    new-instance p1, Lcom/auth0/android/provider/IdTokenVerificationOptions;

    iget-object v1, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->idTokenVerificationIssuer:Ljava/lang/String;

    iget-object v2, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->clientId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v3}, Lcom/auth0/android/provider/IdTokenVerificationOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/auth0/android/provider/SignatureVerifier;)V

    iget-object v1, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->idTokenVerificationLeeway:Ljava/lang/Integer;

    .line 193
    invoke-virtual {p1, v1}, Lcom/auth0/android/provider/IdTokenVerificationOptions;->setClockSkew(Ljava/lang/Integer;)V

    .line 194
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->getCurrentTimeInMillis$auth0_release()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Lcom/auth0/android/provider/IdTokenVerificationOptions;->setClock(Ljava/util/Date;)V

    .line 195
    new-instance v1, Lcom/auth0/android/provider/IdTokenVerifier;

    invoke-direct {v1}, Lcom/auth0/android/provider/IdTokenVerifier;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/auth0/android/provider/IdTokenVerifier;->verify(Lcom/auth0/android/request/internal/Jwt;Lcom/auth0/android/provider/IdTokenVerificationOptions;Z)V

    return-void

    :catch_0
    move-exception p1

    .line 186
    new-instance v0, Lcom/auth0/android/provider/UnexpectedIdTokenException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lcom/auth0/android/provider/UnexpectedIdTokenException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 181
    :cond_0
    new-instance p1, Lcom/auth0/android/provider/IdTokenMissingException;

    invoke-direct {p1}, Lcom/auth0/android/provider/IdTokenMissingException;-><init>()V

    throw p1
    :try_end_2
    .catch Lcom/auth0/android/provider/TokenValidationException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 197
    new-instance v0, Lcom/auth0/android/authentication/AuthenticationException;

    const-string v1, "Could not verify the ID token"

    check-cast p1, Ljava/lang/Exception;

    invoke-direct {v0, v1, p1}, Lcom/auth0/android/authentication/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public withIdTokenVerificationIssuer(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 1

    const-string v0, "issuer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->idTokenVerificationIssuer:Ljava/lang/String;

    .line 111
    move-object p1, p0

    check-cast p1, Lcom/auth0/android/request/AuthenticationRequest;

    return-object p1
.end method

.method public withIdTokenVerificationLeeway(I)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 0

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->idTokenVerificationLeeway:Ljava/lang/Integer;

    .line 106
    move-object p1, p0

    check-cast p1, Lcom/auth0/android/request/AuthenticationRequest;

    return-object p1
.end method
