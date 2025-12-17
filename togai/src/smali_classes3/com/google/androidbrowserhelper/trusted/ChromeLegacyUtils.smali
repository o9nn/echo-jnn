.class public Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;
.super Ljava/lang/Object;
.source "ChromeLegacyUtils.java"


# static fields
.field private static final CHROME_BETA_PACKAGE:Ljava/lang/String; = "com.chrome.beta"

.field private static final CHROME_CANARY_PACKAGE:Ljava/lang/String; = "com.chrome.canary"

.field private static final CHROME_DEV_PACKAGE:Ljava/lang/String; = "com.chrome.dev"

.field private static final CHROME_LOCAL_BUILD_PACKAGE:Ljava/lang/String; = "com.google.android.apps.chrome"

.field private static final CHROME_STABLE_PACKAGE:Ljava/lang/String; = "com.android.chrome"

.field private static final CHROMIUM_LOCAL_BUILD_PACKAGE:Ljava/lang/String; = "org.chromium.chrome"

.field private static final LOCAL_BUILD_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_CHROME_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final VERSION_CHECK_CHROME_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VERSION_SUPPORTS_CUSTOM_COLOR:I = 0x16b412a0

.field private static final VERSION_SUPPORTS_NO_PREWARM:I = 0x15f3cfe0

.field private static final VERSION_SUPPORTS_SIMPLIFIED_MANAGE_DATA:I = 0x172fab40

.field static final VERSION_SUPPORTS_TRUSTED_WEB_ACTIVITIES:I = 0x159cd640


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "com.google.android.apps.chrome"

    const-string v1, "org.chromium.chrome"

    const-string v2, "com.chrome.canary"

    const-string v3, "com.chrome.dev"

    const-string v4, "com.chrome.beta"

    const-string v5, "com.android.chrome"

    .line 52
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->SUPPORTED_CHROME_PACKAGES:Ljava/util/List;

    const-string v0, "com.chrome.beta"

    const-string v1, "com.android.chrome"

    .line 65
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->VERSION_CHECK_CHROME_PACKAGES:Ljava/util/List;

    const-string v0, "com.google.android.apps.chrome"

    const-string v1, "org.chromium.chrome"

    .line 69
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->LOCAL_BUILD_PACKAGES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkChromeVersion(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z
    .locals 2

    sget-object v0, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->LOCAL_BUILD_PACKAGES:Ljava/util/List;

    .line 150
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 152
    :cond_0
    invoke-static {p0, p1}, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->getVersionCode(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result p0

    if-lt p0, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static getVersionCode(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 161
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, p0

    return p0

    :catch_0
    return v0
.end method

.method public static supportsLaunchWithoutWarmup(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->SUPPORTED_CHROME_PACKAGES:Ljava/util/List;

    .line 125
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const v0, 0x15f3cfe0

    .line 127
    invoke-static {p0, p1, v0}, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->checkChromeVersion(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static supportsManageSpaceWithoutWarmupAndValidation(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->SUPPORTED_CHROME_PACKAGES:Ljava/util/List;

    .line 138
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const v0, 0x172fab40

    .line 140
    invoke-static {p0, p1, v0}, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->checkChromeVersion(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static supportsNavbarAndColorCustomization(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->SUPPORTED_CHROME_PACKAGES:Ljava/util/List;

    .line 95
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const v0, 0x16b412a0

    .line 97
    invoke-static {p0, p1, v0}, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->checkChromeVersion(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static supportsSiteSettings(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 0

    .line 115
    invoke-static {p0, p1}, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->supportsTrustedWebActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static supportsTrustedWebActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->SUPPORTED_CHROME_PACKAGES:Ljava/util/List;

    .line 105
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const v0, 0x159cd640

    .line 107
    invoke-static {p0, p1, v0}, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->checkChromeVersion(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static usesWhiteNavbar(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->SUPPORTED_CHROME_PACKAGES:Ljava/util/List;

    .line 86
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
