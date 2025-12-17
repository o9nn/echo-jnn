.class public Lnet/openid/appauth/browser/VersionedBrowserMatcher;
.super Ljava/lang/Object;
.source "VersionedBrowserMatcher.java"

# interfaces
.implements Lnet/openid/appauth/browser/BrowserMatcher;


# static fields
.field public static final CHROME_BROWSER:Lnet/openid/appauth/browser/VersionedBrowserMatcher;

.field public static final CHROME_CUSTOM_TAB:Lnet/openid/appauth/browser/VersionedBrowserMatcher;

.field public static final FIREFOX_BROWSER:Lnet/openid/appauth/browser/VersionedBrowserMatcher;

.field public static final FIREFOX_CUSTOM_TAB:Lnet/openid/appauth/browser/VersionedBrowserMatcher;

.field public static final SAMSUNG_BROWSER:Lnet/openid/appauth/browser/VersionedBrowserMatcher;

.field public static final SAMSUNG_CUSTOM_TAB:Lnet/openid/appauth/browser/VersionedBrowserMatcher;


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mSignatureHashes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsingCustomTab:Z

.field private mVersionRange:Lnet/openid/appauth/browser/VersionRange;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 31
    new-instance v0, Lnet/openid/appauth/browser/VersionedBrowserMatcher;

    sget-object v1, Lnet/openid/appauth/browser/Browsers$Chrome;->SIGNATURE_SET:Ljava/util/Set;

    sget-object v2, Lnet/openid/appauth/browser/Browsers$Chrome;->MINIMUM_VERSION_FOR_CUSTOM_TAB:Lnet/openid/appauth/browser/DelimitedVersion;

    .line 35
    invoke-static {v2}, Lnet/openid/appauth/browser/VersionRange;->atLeast(Lnet/openid/appauth/browser/DelimitedVersion;)Lnet/openid/appauth/browser/VersionRange;

    move-result-object v2

    const-string v3, "com.android.chrome"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v1, v4, v2}, Lnet/openid/appauth/browser/VersionedBrowserMatcher;-><init>(Ljava/lang/String;Ljava/util/Set;ZLnet/openid/appauth/browser/VersionRange;)V

    sput-object v0, Lnet/openid/appauth/browser/VersionedBrowserMatcher;->CHROME_CUSTOM_TAB:Lnet/openid/appauth/browser/VersionedBrowserMatcher;

    .line 40
    new-instance v0, Lnet/openid/appauth/browser/VersionedBrowserMatcher;

    sget-object v1, Lnet/openid/appauth/browser/Browsers$Chrome;->SIGNATURE_SET:Ljava/util/Set;

    sget-object v2, Lnet/openid/appauth/browser/VersionRange;->ANY_VERSION:Lnet/openid/appauth/browser/VersionRange;

    const/4 v5, 0x0

    invoke-direct {v0, v3, v1, v5, v2}, Lnet/openid/appauth/browser/VersionedBrowserMatcher;-><init>(Ljava/lang/String;Ljava/util/Set;ZLnet/openid/appauth/browser/VersionRange;)V

    sput-object v0, Lnet/openid/appauth/browser/VersionedBrowserMatcher;->CHROME_BROWSER:Lnet/openid/appauth/browser/VersionedBrowserMatcher;

    .line 49
    new-instance v0, Lnet/openid/appauth/browser/VersionedBrowserMatcher;

    sget-object v1, Lnet/openid/appauth/browser/Browsers$Firefox;->SIGNATURE_SET:Ljava/util/Set;

    sget-object v2, Lnet/openid/appauth/browser/Browsers$Firefox;->MINIMUM_VERSION_FOR_CUSTOM_TAB:Lnet/openid/appauth/browser/DelimitedVersion;

    .line 53
    invoke-static {v2}, Lnet/openid/appauth/browser/VersionRange;->atLeast(Lnet/openid/appauth/browser/DelimitedVersion;)Lnet/openid/appauth/browser/VersionRange;

    move-result-object v2

    const-string v3, "org.mozilla.firefox"

    invoke-direct {v0, v3, v1, v4, v2}, Lnet/openid/appauth/browser/VersionedBrowserMatcher;-><init>(Ljava/lang/String;Ljava/util/Set;ZLnet/openid/appauth/browser/VersionRange;)V

    sput-object v0, Lnet/openid/appauth/browser/VersionedBrowserMatcher;->FIREFOX_CUSTOM_TAB:Lnet/openid/appauth/browser/VersionedBrowserMatcher;

    .line 58
    new-instance v0, Lnet/openid/appauth/browser/VersionedBrowserMatcher;

    sget-object v1, Lnet/openid/appauth/browser/Browsers$Firefox;->SIGNATURE_SET:Ljava/util/Set;

    sget-object v2, Lnet/openid/appauth/browser/VersionRange;->ANY_VERSION:Lnet/openid/appauth/browser/VersionRange;

    invoke-direct {v0, v3, v1, v5, v2}, Lnet/openid/appauth/browser/VersionedBrowserMatcher;-><init>(Ljava/lang/String;Ljava/util/Set;ZLnet/openid/appauth/browser/VersionRange;)V

    sput-object v0, Lnet/openid/appauth/browser/VersionedBrowserMatcher;->FIREFOX_BROWSER:Lnet/openid/appauth/browser/VersionedBrowserMatcher;

    .line 67
    new-instance v0, Lnet/openid/appauth/browser/VersionedBrowserMatcher;

    sget-object v1, Lnet/openid/appauth/browser/Browsers$SBrowser;->SIGNATURE_SET:Ljava/util/Set;

    sget-object v2, Lnet/openid/appauth/browser/VersionRange;->ANY_VERSION:Lnet/openid/appauth/browser/VersionRange;

    const-string v3, "com.sec.android.app.sbrowser"

    invoke-direct {v0, v3, v1, v5, v2}, Lnet/openid/appauth/browser/VersionedBrowserMatcher;-><init>(Ljava/lang/String;Ljava/util/Set;ZLnet/openid/appauth/browser/VersionRange;)V

    sput-object v0, Lnet/openid/appauth/browser/VersionedBrowserMatcher;->SAMSUNG_BROWSER:Lnet/openid/appauth/browser/VersionedBrowserMatcher;

    .line 76
    new-instance v0, Lnet/openid/appauth/browser/VersionedBrowserMatcher;

    sget-object v1, Lnet/openid/appauth/browser/Browsers$SBrowser;->SIGNATURE_SET:Ljava/util/Set;

    sget-object v2, Lnet/openid/appauth/browser/Browsers$SBrowser;->MINIMUM_VERSION_FOR_CUSTOM_TAB:Lnet/openid/appauth/browser/DelimitedVersion;

    .line 80
    invoke-static {v2}, Lnet/openid/appauth/browser/VersionRange;->atLeast(Lnet/openid/appauth/browser/DelimitedVersion;)Lnet/openid/appauth/browser/VersionRange;

    move-result-object v2

    invoke-direct {v0, v3, v1, v4, v2}, Lnet/openid/appauth/browser/VersionedBrowserMatcher;-><init>(Ljava/lang/String;Ljava/util/Set;ZLnet/openid/appauth/browser/VersionRange;)V

    sput-object v0, Lnet/openid/appauth/browser/VersionedBrowserMatcher;->SAMSUNG_CUSTOM_TAB:Lnet/openid/appauth/browser/VersionedBrowserMatcher;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLnet/openid/appauth/browser/VersionRange;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "signatureHash",
            "usingCustomTab",
            "versionRange"
        }
    .end annotation

    .line 97
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/openid/appauth/browser/VersionedBrowserMatcher;-><init>(Ljava/lang/String;Ljava/util/Set;ZLnet/openid/appauth/browser/VersionRange;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;ZLnet/openid/appauth/browser/VersionRange;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "signatureHashes",
            "usingCustomTab",
            "versionRange"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Lnet/openid/appauth/browser/VersionRange;",
            ")V"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/openid/appauth/browser/VersionedBrowserMatcher;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lnet/openid/appauth/browser/VersionedBrowserMatcher;->mSignatureHashes:Ljava/util/Set;

    iput-boolean p3, p0, Lnet/openid/appauth/browser/VersionedBrowserMatcher;->mUsingCustomTab:Z

    iput-object p4, p0, Lnet/openid/appauth/browser/VersionedBrowserMatcher;->mVersionRange:Lnet/openid/appauth/browser/VersionRange;

    return-void
.end method


# virtual methods
.method public matches(Lnet/openid/appauth/browser/BrowserDescriptor;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptor"
        }
    .end annotation

    iget-object v0, p0, Lnet/openid/appauth/browser/VersionedBrowserMatcher;->mPackageName:Ljava/lang/String;

    .line 119
    iget-object v1, p1, Lnet/openid/appauth/browser/BrowserDescriptor;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/openid/appauth/browser/VersionedBrowserMatcher;->mUsingCustomTab:Z

    iget-object v1, p1, Lnet/openid/appauth/browser/BrowserDescriptor;->useCustomTab:Ljava/lang/Boolean;

    .line 120
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/openid/appauth/browser/VersionedBrowserMatcher;->mVersionRange:Lnet/openid/appauth/browser/VersionRange;

    iget-object v1, p1, Lnet/openid/appauth/browser/BrowserDescriptor;->version:Ljava/lang/String;

    .line 121
    invoke-virtual {v0, v1}, Lnet/openid/appauth/browser/VersionRange;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/openid/appauth/browser/VersionedBrowserMatcher;->mSignatureHashes:Ljava/util/Set;

    iget-object p1, p1, Lnet/openid/appauth/browser/BrowserDescriptor;->signatureHashes:Ljava/util/Set;

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
