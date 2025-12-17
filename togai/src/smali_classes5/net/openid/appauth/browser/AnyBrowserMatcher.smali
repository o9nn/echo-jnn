.class public final Lnet/openid/appauth/browser/AnyBrowserMatcher;
.super Ljava/lang/Object;
.source "AnyBrowserMatcher.java"

# interfaces
.implements Lnet/openid/appauth/browser/BrowserMatcher;


# static fields
.field public static final INSTANCE:Lnet/openid/appauth/browser/AnyBrowserMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lnet/openid/appauth/browser/AnyBrowserMatcher;

    invoke-direct {v0}, Lnet/openid/appauth/browser/AnyBrowserMatcher;-><init>()V

    sput-object v0, Lnet/openid/appauth/browser/AnyBrowserMatcher;->INSTANCE:Lnet/openid/appauth/browser/AnyBrowserMatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lnet/openid/appauth/browser/BrowserDescriptor;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptor"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
