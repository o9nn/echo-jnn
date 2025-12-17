.class public Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;
.super Landroid/app/Activity;
.source "ManageDataLauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;,
        Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$Connection;
    }
.end annotation


# static fields
.field public static final ACTION_MANAGE_TRUSTED_WEB_ACTIVITY_DATA:Ljava/lang/String; = "android.support.customtabs.action.ACTION_MANAGE_TRUSTED_WEB_ACTIVITY_DATA"

.field public static final CATEGORY_LAUNCH_SITE_SETTINGS:Ljava/lang/String; = "androidx.browser.trusted.category.LaunchSiteSettings"

.field private static final METADATA_MANAGE_SPACE_DEFAULT_URL:Ljava/lang/String; = "android.support.customtabs.trusted.MANAGE_SPACE_URL"

.field public static final OVERRIDE_IC_SITE_SETTINGS_ID:Ljava/lang/String; = "drawable/override_ic_site_settings"

.field public static final SITE_SETTINGS_SHORTCUT_ID:Ljava/lang/String; = "android.support.customtabs.action.SITE_SETTINGS_SHORTCUT"

.field private static final TAG:Ljava/lang/String; = "ManageDataLauncher"


# instance fields
.field private mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

.field private mProviderPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;Landroidx/browser/customtabs/CustomTabsSession;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->launchSettings(Landroidx/browser/customtabs/CustomTabsSession;)V

    return-void
.end method

.method public static addSiteSettingsShortcut(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 379
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 380
    const-class v1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager;

    .line 383
    invoke-static {p1, v0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->packageSupportsSiteSettings(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result p1

    const-string v2, "android.support.customtabs.action.SITE_SETTINGS_SHORTCUT"

    if-nez p1, :cond_0

    .line 384
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    return-void

    .line 389
    :cond_0
    invoke-static {p0, v0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->getSiteSettingsShortcutOrNull(Landroid/content/Context;Landroid/content/pm/PackageManager;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    if-nez p0, :cond_1

    .line 394
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    return-void

    .line 398
    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z

    return-void
.end method

.method static getSiteSettingsShortcutOrNull(Landroid/content/Context;Landroid/content/pm/PackageManager;)Landroid/content/pm/ShortcutInfo;
    .locals 4

    .line 349
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.support.customtabs.action.ACTION_MANAGE_TRUSTED_WEB_ACTIVITY_DATA"

    .line 350
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000

    .line 351
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 354
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 356
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "drawable"

    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable/override_ic_site_settings"

    .line 356
    invoke-virtual {p1, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 358
    new-instance v1, Landroid/content/pm/ShortcutInfo$Builder;

    const-string v2, "android.support.customtabs.action.SITE_SETTINGS_SHORTCUT"

    invoke-direct {v1, p0, v2}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "Site Settings"

    .line 359
    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    const-string v2, "Manage website notifications, permissions, etc."

    .line 360
    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 362
    :cond_1
    sget p1, Lcom/google/androidbrowserhelper/R$drawable;->ic_site_settings:I

    .line 361
    :goto_0
    invoke-static {p0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p0

    .line 363
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p0

    .line 364
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method private static launchBrowserSiteSettings(Landroid/app/Activity;Landroidx/browser/customtabs/CustomTabsSession;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 1

    .line 221
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setSession(Landroidx/browser/customtabs/CustomTabsSession;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p1

    iget-object p1, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const-string v0, "android.support.customtabs.action.ACTION_MANAGE_TRUSTED_WEB_ACTIVITY_DATA"

    .line 222
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 226
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private launchSettings(Landroidx/browser/customtabs/CustomTabsSession;)V
    .locals 2

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->mProviderPackage:Ljava/lang/String;

    .line 209
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->getDefaultUrlForManagingSpace()Landroid/net/Uri;

    move-result-object v1

    .line 208
    invoke-static {p0, p1, v0, v1}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->launchBrowserSiteSettings(Landroid/app/Activity;Landroidx/browser/customtabs/CustomTabsSession;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->finish()V

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->handleNoSupportForManageSpace()V

    :goto_0
    return-void
.end method

.method public static packageSupportsSiteSettings(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 319
    :cond_0
    invoke-static {p1, p0}, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->supportsSiteSettings(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 323
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "androidx.browser.trusted.category.LaunchSiteSettings"

    .line 324
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p0, 0x40

    .line 326
    invoke-virtual {p1, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 328
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method private supportsTrustedWebActivities(Ljava/lang/String;)Z
    .locals 3

    .line 235
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->supportsTrustedWebActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 238
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 240
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x40

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 242
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 245
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 246
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string v0, "androidx.browser.trusted.category.TrustedWebActivities"

    .line 247
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method


# virtual methods
.method protected createLoadingView()Landroid/view/View;
    .locals 3

    .line 153
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 155
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 156
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method protected getDefaultUrlForManagingSpace()Landroid/net/Uri;
    .locals 5

    const-string v0, "android.support.customtabs.trusted.MANAGE_SPACE_URL"

    const-string v1, "Using clean-up URL from Manifest ("

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 133
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 135
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 136
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "ManageDataLauncher"

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 143
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->onError(Ljava/lang/RuntimeException;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleNoSupportForManageSpace()V
    .locals 3

    .line 187
    :try_start_0
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->mProviderPackage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->mProviderPackage:Ljava/lang/String;

    .line 193
    :goto_0
    sget v1, Lcom/google/androidbrowserhelper/R$string;->manage_space_not_supported_toast:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 195
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->finish()V

    return-void
.end method

.method protected handleTwaNeverLaunched()V
    .locals 2

    .line 175
    sget v0, Lcom/google/androidbrowserhelper/R$string;->manage_space_no_data_toast:I

    invoke-virtual {p0, v0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 177
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    new-instance p1, Lcom/google/androidbrowserhelper/trusted/TwaSharedPreferencesManager;

    invoke-direct {p1, p0}, Lcom/google/androidbrowserhelper/trusted/TwaSharedPreferencesManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/androidbrowserhelper/trusted/TwaSharedPreferencesManager;->readLastLaunchedProviderPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->mProviderPackage:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->handleTwaNeverLaunched()V

    return-void

    .line 106
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->supportsTrustedWebActivities(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->handleNoSupportForManageSpace()V

    return-void

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->createLoadingView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 112
    invoke-virtual {p0, p1}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->setContentView(Landroid/view/View;)V

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->mProviderPackage:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->supportsManageSpaceWithoutWarmupAndValidation(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 117
    new-instance p1, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$Connection;

    invoke-direct {p1, p0, v0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$Connection;-><init>(Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$1;)V

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    goto :goto_0

    .line 119
    :cond_3
    new-instance p1, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;

    invoke-direct {p1, p0, v0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;-><init>(Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$1;)V

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    :goto_0
    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->mProviderPackage:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    .line 121
    invoke-static {p0, p1, v0}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    return-void
.end method

.method protected onError(Ljava/lang/RuntimeException;)V
    .locals 0

    .line 166
    throw p1
.end method

.method protected onStop()V
    .locals 1

    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0, v0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->finish()V

    return-void
.end method
