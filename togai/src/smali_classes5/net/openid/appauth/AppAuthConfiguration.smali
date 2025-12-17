.class public Lnet/openid/appauth/AppAuthConfiguration;
.super Ljava/lang/Object;
.source "AppAuthConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/AppAuthConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lnet/openid/appauth/AppAuthConfiguration;


# instance fields
.field private final mBrowserMatcher:Lnet/openid/appauth/browser/BrowserMatcher;

.field private final mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

.field private final mSkipIssuerHttpsCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lnet/openid/appauth/AppAuthConfiguration$Builder;

    invoke-direct {v0}, Lnet/openid/appauth/AppAuthConfiguration$Builder;-><init>()V

    .line 35
    invoke-virtual {v0}, Lnet/openid/appauth/AppAuthConfiguration$Builder;->build()Lnet/openid/appauth/AppAuthConfiguration;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AppAuthConfiguration;->DEFAULT:Lnet/openid/appauth/AppAuthConfiguration;

    return-void
.end method

.method private constructor <init>(Lnet/openid/appauth/browser/BrowserMatcher;Lnet/openid/appauth/connectivity/ConnectionBuilder;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "browserMatcher",
            "connectionBuilder",
            "skipIssuerHttpsCheck"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/openid/appauth/AppAuthConfiguration;->mBrowserMatcher:Lnet/openid/appauth/browser/BrowserMatcher;

    iput-object p2, p0, Lnet/openid/appauth/AppAuthConfiguration;->mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

    .line 51
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lnet/openid/appauth/AppAuthConfiguration;->mSkipIssuerHttpsCheck:Z

    return-void
.end method

.method synthetic constructor <init>(Lnet/openid/appauth/browser/BrowserMatcher;Lnet/openid/appauth/connectivity/ConnectionBuilder;Ljava/lang/Boolean;Lnet/openid/appauth/AppAuthConfiguration$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lnet/openid/appauth/AppAuthConfiguration;-><init>(Lnet/openid/appauth/browser/BrowserMatcher;Lnet/openid/appauth/connectivity/ConnectionBuilder;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public getBrowserMatcher()Lnet/openid/appauth/browser/BrowserMatcher;
    .locals 1

    iget-object v0, p0, Lnet/openid/appauth/AppAuthConfiguration;->mBrowserMatcher:Lnet/openid/appauth/browser/BrowserMatcher;

    return-object v0
.end method

.method public getConnectionBuilder()Lnet/openid/appauth/connectivity/ConnectionBuilder;
    .locals 1

    iget-object v0, p0, Lnet/openid/appauth/AppAuthConfiguration;->mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

    return-object v0
.end method

.method public getSkipIssuerHttpsCheck()Z
    .locals 1

    iget-boolean v0, p0, Lnet/openid/appauth/AppAuthConfiguration;->mSkipIssuerHttpsCheck:Z

    return v0
.end method
