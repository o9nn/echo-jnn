.class public interface abstract Lcom/auth0/android/request/AuthenticationRequest;
.super Ljava/lang/Object;
.source "AuthenticationRequest.kt"

# interfaces
.implements Lcom/auth0/android/request/Request;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/request/AuthenticationRequest$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/auth0/android/request/Request<",
        "Lcom/auth0/android/result/Credentials;",
        "Lcom/auth0/android/authentication/AuthenticationException;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0000\u0008f\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0006H&J\u0010\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0006H&J\u0010\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0006H&J\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0006H&J\u0008\u0010\u000f\u001a\u00020\u0000H&J\u0010\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0006H&J\u0010\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0014H&\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/auth0/android/request/AuthenticationRequest;",
        "Lcom/auth0/android/request/Request;",
        "Lcom/auth0/android/result/Credentials;",
        "Lcom/auth0/android/authentication/AuthenticationException;",
        "setAudience",
        "audience",
        "",
        "setConnection",
        "connection",
        "setGrantType",
        "grantType",
        "setRealm",
        "realm",
        "setScope",
        "scope",
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


# virtual methods
.method public abstract setAudience(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
.end method

.method public abstract setConnection(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
.end method

.method public abstract setGrantType(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
.end method

.method public abstract setRealm(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
.end method

.method public abstract setScope(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
.end method

.method public abstract validateClaims()Lcom/auth0/android/request/AuthenticationRequest;
.end method

.method public abstract withIdTokenVerificationIssuer(Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
.end method

.method public abstract withIdTokenVerificationLeeway(I)Lcom/auth0/android/request/AuthenticationRequest;
.end method
