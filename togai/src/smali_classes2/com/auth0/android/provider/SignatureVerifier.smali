.class abstract Lcom/auth0/android/provider/SignatureVerifier;
.super Ljava/lang/Object;
.source "SignatureVerifier.java"


# instance fields
.field private final supportedAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportedAlgorithms"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/provider/SignatureVerifier;->supportedAlgorithms:Ljava/util/List;

    return-void
.end method

.method private checkAlgorithm(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenAlgorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/provider/TokenValidationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/android/provider/SignatureVerifier;->supportedAlgorithms:Ljava/util/List;

    .line 40
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    new-instance v0, Lcom/auth0/android/provider/IdTokenAlgorithmNotSupportedException;

    iget-object v1, p0, Lcom/auth0/android/provider/SignatureVerifier;->supportedAlgorithms:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/auth0/android/provider/IdTokenAlgorithmNotSupportedException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v0
.end method

.method static forAsymmetricAlgorithm(Ljava/lang/String;Lcom/auth0/android/authentication/AuthenticationAPIClient;Lcom/auth0/android/callback/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "keyId",
            "apiClient",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/auth0/android/authentication/AuthenticationAPIClient;",
            "Lcom/auth0/android/callback/Callback<",
            "Lcom/auth0/android/provider/SignatureVerifier;",
            "Lcom/auth0/android/provider/TokenValidationException;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->fetchJsonWebKeys()Lcom/auth0/android/request/Request;

    move-result-object p1

    new-instance v0, Lcom/auth0/android/provider/SignatureVerifier$1;

    invoke-direct {v0, p0, p2}, Lcom/auth0/android/provider/SignatureVerifier$1;-><init>(Ljava/lang/String;Lcom/auth0/android/callback/Callback;)V

    invoke-interface {p1, v0}, Lcom/auth0/android/request/Request;->start(Lcom/auth0/android/callback/Callback;)V

    return-void
.end method


# virtual methods
.method protected abstract checkSignature([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenParts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/provider/TokenValidationException;
        }
    .end annotation
.end method

.method verify(Lcom/auth0/android/request/internal/Jwt;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/provider/TokenValidationException;
        }
    .end annotation

    .line 35
    invoke-virtual {p1}, Lcom/auth0/android/request/internal/Jwt;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/auth0/android/provider/SignatureVerifier;->checkAlgorithm(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lcom/auth0/android/request/internal/Jwt;->getParts()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/auth0/android/provider/SignatureVerifier;->checkSignature([Ljava/lang/String;)V

    return-void
.end method
