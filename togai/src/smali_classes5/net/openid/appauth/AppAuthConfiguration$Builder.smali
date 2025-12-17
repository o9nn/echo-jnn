.class public Lnet/openid/appauth/AppAuthConfiguration$Builder;
.super Ljava/lang/Object;
.source "AppAuthConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AppAuthConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBrowserMatcher:Lnet/openid/appauth/browser/BrowserMatcher;

.field private mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

.field private mSkipIssuerHttpsCheck:Z

.field private mSkipNonceVerification:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sget-object v0, Lnet/openid/appauth/browser/AnyBrowserMatcher;->INSTANCE:Lnet/openid/appauth/browser/AnyBrowserMatcher;

    iput-object v0, p0, Lnet/openid/appauth/AppAuthConfiguration$Builder;->mBrowserMatcher:Lnet/openid/appauth/browser/BrowserMatcher;

    .line 85
    sget-object v0, Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;->INSTANCE:Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;

    iput-object v0, p0, Lnet/openid/appauth/AppAuthConfiguration$Builder;->mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

    return-void
.end method


# virtual methods
.method public build()Lnet/openid/appauth/AppAuthConfiguration;
    .locals 5

    .line 127
    new-instance v0, Lnet/openid/appauth/AppAuthConfiguration;

    iget-object v1, p0, Lnet/openid/appauth/AppAuthConfiguration$Builder;->mBrowserMatcher:Lnet/openid/appauth/browser/BrowserMatcher;

    iget-object v2, p0, Lnet/openid/appauth/AppAuthConfiguration$Builder;->mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

    iget-boolean v3, p0, Lnet/openid/appauth/AppAuthConfiguration$Builder;->mSkipIssuerHttpsCheck:Z

    .line 130
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/openid/appauth/AppAuthConfiguration;-><init>(Lnet/openid/appauth/browser/BrowserMatcher;Lnet/openid/appauth/connectivity/ConnectionBuilder;Ljava/lang/Boolean;Lnet/openid/appauth/AppAuthConfiguration$1;)V

    return-object v0
.end method

.method public setBrowserMatcher(Lnet/openid/appauth/browser/BrowserMatcher;)Lnet/openid/appauth/AppAuthConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "browserMatcher"
        }
    .end annotation

    const-string v0, "browserMatcher cannot be null"

    .line 95
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lnet/openid/appauth/AppAuthConfiguration$Builder;->mBrowserMatcher:Lnet/openid/appauth/browser/BrowserMatcher;

    return-object p0
.end method

.method public setConnectionBuilder(Lnet/openid/appauth/connectivity/ConnectionBuilder;)Lnet/openid/appauth/AppAuthConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connectionBuilder"
        }
    .end annotation

    const-string v0, "connectionBuilder cannot be null"

    .line 106
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lnet/openid/appauth/AppAuthConfiguration$Builder;->mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

    return-object p0
.end method

.method public setSkipIssuerHttpsCheck(Ljava/lang/Boolean;)Lnet/openid/appauth/AppAuthConfiguration$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skipIssuerHttpsCheck"
        }
    .end annotation

    .line 118
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lnet/openid/appauth/AppAuthConfiguration$Builder;->mSkipIssuerHttpsCheck:Z

    return-object p0
.end method
