.class public interface abstract Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;
.super Ljava/lang/Object;
.source "AuthorizationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TokenResponseCallback"
.end annotation


# virtual methods
.method public abstract onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "response",
            "ex"
        }
    .end annotation
.end method
