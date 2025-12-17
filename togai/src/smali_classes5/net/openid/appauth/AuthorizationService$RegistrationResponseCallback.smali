.class public interface abstract Lnet/openid/appauth/AuthorizationService$RegistrationResponseCallback;
.super Ljava/lang/Object;
.source "AuthorizationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RegistrationResponseCallback"
.end annotation


# virtual methods
.method public abstract onRegistrationRequestCompleted(Lnet/openid/appauth/RegistrationResponse;Lnet/openid/appauth/AuthorizationException;)V
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
