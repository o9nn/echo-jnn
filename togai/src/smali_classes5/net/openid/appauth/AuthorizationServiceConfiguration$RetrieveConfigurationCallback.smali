.class public interface abstract Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;
.super Ljava/lang/Object;
.source "AuthorizationServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RetrieveConfigurationCallback"
.end annotation


# virtual methods
.method public abstract onFetchConfigurationCompleted(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AuthorizationException;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serviceConfiguration",
            "ex"
        }
    .end annotation
.end method
