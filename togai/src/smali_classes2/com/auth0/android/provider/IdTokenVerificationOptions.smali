.class public final Lcom/auth0/android/provider/IdTokenVerificationOptions;
.super Ljava/lang/Object;
.source "IdTokenVerificationOptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0013\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\tR\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\u0008\u0019\u0010\u0013\"\u0004\u0008\u001a\u0010\u0015R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\t\"\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\t\"\u0004\u0008!\u0010\u001eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#\u00a8\u0006$"
    }
    d2 = {
        "Lcom/auth0/android/provider/IdTokenVerificationOptions;",
        "",
        "issuer",
        "",
        "audience",
        "signatureVerifier",
        "Lcom/auth0/android/provider/SignatureVerifier;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/auth0/android/provider/SignatureVerifier;)V",
        "getAudience",
        "()Ljava/lang/String;",
        "clock",
        "Ljava/util/Date;",
        "getClock",
        "()Ljava/util/Date;",
        "setClock",
        "(Ljava/util/Date;)V",
        "clockSkew",
        "",
        "getClockSkew",
        "()Ljava/lang/Integer;",
        "setClockSkew",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getIssuer",
        "maxAge",
        "getMaxAge",
        "setMaxAge",
        "nonce",
        "getNonce",
        "setNonce",
        "(Ljava/lang/String;)V",
        "organization",
        "getOrganization",
        "setOrganization",
        "getSignatureVerifier",
        "()Lcom/auth0/android/provider/SignatureVerifier;",
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
.field private final audience:Ljava/lang/String;

.field private clock:Ljava/util/Date;

.field private clockSkew:Ljava/lang/Integer;

.field private final issuer:Ljava/lang/String;

.field private maxAge:Ljava/lang/Integer;

.field private nonce:Ljava/lang/String;

.field private organization:Ljava/lang/String;

.field private final signatureVerifier:Lcom/auth0/android/provider/SignatureVerifier;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/auth0/android/provider/SignatureVerifier;)V
    .locals 1

    const-string v0, "issuer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audience"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/provider/IdTokenVerificationOptions;->issuer:Ljava/lang/String;

    iput-object p2, p0, Lcom/auth0/android/provider/IdTokenVerificationOptions;->audience:Ljava/lang/String;

    iput-object p3, p0, Lcom/auth0/android/provider/IdTokenVerificationOptions;->signatureVerifier:Lcom/auth0/android/provider/SignatureVerifier;

    return-void
.end method


# virtual methods
.method public final getAudience()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/provider/IdTokenVerificationOptions;->audience:Ljava/lang/String;

    return-object v0
.end method

.method public final getClock()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/provider/IdTokenVerificationOptions;->clock:Ljava/util/Date;

    return-object v0
.end method

.method public final getClockSkew()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/provider/IdTokenVerificationOptions;->clockSkew:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIssuer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/provider/IdTokenVerificationOptions;->issuer:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxAge()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/provider/IdTokenVerificationOptions;->maxAge:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/provider/IdTokenVerificationOptions;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrganization()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/provider/IdTokenVerificationOptions;->organization:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignatureVerifier()Lcom/auth0/android/provider/SignatureVerifier;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/provider/IdTokenVerificationOptions;->signatureVerifier:Lcom/auth0/android/provider/SignatureVerifier;

    return-object v0
.end method

.method public final setClock(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/auth0/android/provider/IdTokenVerificationOptions;->clock:Ljava/util/Date;

    return-void
.end method

.method public final setClockSkew(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/auth0/android/provider/IdTokenVerificationOptions;->clockSkew:Ljava/lang/Integer;

    return-void
.end method

.method public final setMaxAge(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/auth0/android/provider/IdTokenVerificationOptions;->maxAge:Ljava/lang/Integer;

    return-void
.end method

.method public final setNonce(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/auth0/android/provider/IdTokenVerificationOptions;->nonce:Ljava/lang/String;

    return-void
.end method

.method public final setOrganization(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/auth0/android/provider/IdTokenVerificationOptions;->organization:Ljava/lang/String;

    return-void
.end method
