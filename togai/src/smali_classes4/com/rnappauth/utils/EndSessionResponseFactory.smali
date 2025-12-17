.class public final Lcom/rnappauth/utils/EndSessionResponseFactory;
.super Ljava/lang/Object;
.source "EndSessionResponseFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final endSessionResponseToMap(Lnet/openid/appauth/EndSessionResponse;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 13
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "state"

    .line 15
    iget-object v2, p0, Lnet/openid/appauth/EndSessionResponse;->state:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lnet/openid/appauth/EndSessionResponse;->request:Lnet/openid/appauth/EndSessionRequest;

    iget-object v1, v1, Lnet/openid/appauth/EndSessionRequest;->idTokenHint:Ljava/lang/String;

    const-string v2, "idTokenHint"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lnet/openid/appauth/EndSessionResponse;->request:Lnet/openid/appauth/EndSessionRequest;

    iget-object v1, v1, Lnet/openid/appauth/EndSessionRequest;->postLogoutRedirectUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 18
    iget-object p0, p0, Lnet/openid/appauth/EndSessionResponse;->request:Lnet/openid/appauth/EndSessionRequest;

    iget-object p0, p0, Lnet/openid/appauth/EndSessionRequest;->postLogoutRedirectUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "postLogoutRedirectUri"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
