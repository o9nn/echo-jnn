.class public final Lnet/openid/appauth/browser/Browsers$Firefox;
.super Ljava/lang/Object;
.source "Browsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/browser/Browsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Firefox"
.end annotation


# static fields
.field public static final MINIMUM_VERSION_FOR_CUSTOM_TAB:Lnet/openid/appauth/browser/DelimitedVersion;

.field public static final PACKAGE_NAME:Ljava/lang/String; = "org.mozilla.firefox"

.field public static final SIGNATURE_HASH:Ljava/lang/String; = "2gCe6pR_AO_Q2Vu8Iep-4AsiKNnUHQxu0FaDHO_qa178GByKybdT_BuE8_dYk99G5Uvx_gdONXAOO2EaXidpVQ=="

.field public static final SIGNATURE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "2gCe6pR_AO_Q2Vu8Iep-4AsiKNnUHQxu0FaDHO_qa178GByKybdT_BuE8_dYk99G5Uvx_gdONXAOO2EaXidpVQ=="

    .line 98
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/browser/Browsers$Firefox;->SIGNATURE_SET:Ljava/util/Set;

    const-string v0, "57"

    .line 104
    invoke-static {v0}, Lnet/openid/appauth/browser/DelimitedVersion;->parse(Ljava/lang/String;)Lnet/openid/appauth/browser/DelimitedVersion;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/browser/Browsers$Firefox;->MINIMUM_VERSION_FOR_CUSTOM_TAB:Lnet/openid/appauth/browser/DelimitedVersion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static customTab(Ljava/lang/String;)Lnet/openid/appauth/browser/BrowserDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 119
    new-instance v0, Lnet/openid/appauth/browser/BrowserDescriptor;

    sget-object v1, Lnet/openid/appauth/browser/Browsers$Firefox;->SIGNATURE_SET:Ljava/util/Set;

    const/4 v2, 0x1

    const-string v3, "org.mozilla.firefox"

    invoke-direct {v0, v3, v1, p0, v2}, Lnet/openid/appauth/browser/BrowserDescriptor;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static standaloneBrowser(Ljava/lang/String;)Lnet/openid/appauth/browser/BrowserDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 111
    new-instance v0, Lnet/openid/appauth/browser/BrowserDescriptor;

    sget-object v1, Lnet/openid/appauth/browser/Browsers$Firefox;->SIGNATURE_SET:Ljava/util/Set;

    const/4 v2, 0x0

    const-string v3, "org.mozilla.firefox"

    invoke-direct {v0, v3, v1, p0, v2}, Lnet/openid/appauth/browser/BrowserDescriptor;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Z)V

    return-object v0
.end method
