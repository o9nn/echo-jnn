.class public final Lnet/openid/appauth/EndSessionResponse$Builder;
.super Ljava/lang/Object;
.source "EndSessionResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/EndSessionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mRequest:Lnet/openid/appauth/EndSessionRequest;

.field private mState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/openid/appauth/EndSessionRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p0, p1}, Lnet/openid/appauth/EndSessionResponse$Builder;->setRequest(Lnet/openid/appauth/EndSessionRequest;)Lnet/openid/appauth/EndSessionResponse$Builder;

    return-void
.end method


# virtual methods
.method public build()Lnet/openid/appauth/EndSessionResponse;
    .locals 4

    .line 99
    new-instance v0, Lnet/openid/appauth/EndSessionResponse;

    iget-object v1, p0, Lnet/openid/appauth/EndSessionResponse$Builder;->mRequest:Lnet/openid/appauth/EndSessionRequest;

    iget-object v2, p0, Lnet/openid/appauth/EndSessionResponse$Builder;->mState:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/openid/appauth/EndSessionResponse;-><init>(Lnet/openid/appauth/EndSessionRequest;Ljava/lang/String;Lnet/openid/appauth/EndSessionResponse$1;)V

    return-object v0
.end method

.method fromUri(Landroid/net/Uri;)Lnet/openid/appauth/EndSessionResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    const-string v0, "state"

    .line 80
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/EndSessionResponse$Builder;->setState(Ljava/lang/String;)Lnet/openid/appauth/EndSessionResponse$Builder;

    return-object p0
.end method

.method public setRequest(Lnet/openid/appauth/EndSessionRequest;)Lnet/openid/appauth/EndSessionResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    const-string v0, "request cannot be null"

    .line 85
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/openid/appauth/EndSessionRequest;

    iput-object p1, p0, Lnet/openid/appauth/EndSessionResponse$Builder;->mRequest:Lnet/openid/appauth/EndSessionRequest;

    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lnet/openid/appauth/EndSessionResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const-string v0, "state must not be empty"

    .line 90
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/EndSessionResponse$Builder;->mState:Ljava/lang/String;

    return-object p0
.end method
