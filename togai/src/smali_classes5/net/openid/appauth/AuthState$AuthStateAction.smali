.class public interface abstract Lnet/openid/appauth/AuthState$AuthStateAction;
.super Ljava/lang/Object;
.source "AuthState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuthStateAction"
.end annotation


# virtual methods
.method public abstract execute(Ljava/lang/String;Ljava/lang/String;Lnet/openid/appauth/AuthorizationException;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "accessToken",
            "idToken",
            "ex"
        }
    .end annotation
.end method
