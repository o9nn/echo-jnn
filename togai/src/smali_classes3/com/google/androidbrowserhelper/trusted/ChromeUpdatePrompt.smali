.class public Lcom/google/androidbrowserhelper/trusted/ChromeUpdatePrompt;
.super Ljava/lang/Object;
.source "ChromeUpdatePrompt.java"


# static fields
.field private static final UPDATE_CHROME_MESSAGE_RESOURCE_ID:Ljava/lang/String; = "string/update_chrome_toast"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static chromeNeedsUpdate(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    .line 51
    invoke-static {p0, p1}, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->getVersionCode(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    const v0, 0x159cd640

    if-ge p0, v0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public static promptIfNeeded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 42
    sget-object v0, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->VERSION_CHECK_CHROME_PACKAGES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/androidbrowserhelper/trusted/ChromeUpdatePrompt;->chromeNeedsUpdate(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "string/update_chrome_toast"

    .line 47
    invoke-static {p0, p1}, Lcom/google/androidbrowserhelper/trusted/ChromeUpdatePrompt;->showToastIfResourceExists(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static showToastIfResourceExists(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 65
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
