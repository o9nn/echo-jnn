.class public Lcom/google/androidbrowserhelper/trusted/TwaProviderPicker;
.super Ljava/lang/Object;
.source "TwaProviderPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/androidbrowserhelper/trusted/TwaProviderPicker$Action;,
        Lcom/google/androidbrowserhelper/trusted/TwaProviderPicker$LaunchMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TWAProviderPicker"

.field private static sPackageNameForTesting:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLaunchModesForCustomTabsServices(Landroid/content/pm/PackageManager;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x40

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 190
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 192
    invoke-static {p0, v3}, Lcom/google/androidbrowserhelper/trusted/ChromeLegacyUtils;->supportsTrustedWebActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 195
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 199
    :cond_0
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string v4, "androidx.browser.trusted.category.TrustedWebActivities"

    .line 200
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v5, v6

    :cond_1
    xor-int/lit8 v2, v5, 0x1

    .line 203
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 202
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static pickProvider(Landroid/content/pm/PackageManager;)Lcom/google/androidbrowserhelper/trusted/TwaProviderPicker$Action;
    .locals 8

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.BROWSABLE"

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http"

    const-string v2, ""

    const/4 v3, 0x0

    .line 109
    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/google/androidbrowserhelper/trusted/TwaProviderPicker;->sPackageNameForTesting:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 v1, 0x10000

    .line 119
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const/high16 v2, 0x20000

    .line 137
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    invoke-static {p0}, Lcom/google/androidbrowserhelper/trusted/TwaProviderPicker;->getLaunchModesForCustomTabsServices(Landroid/content/pm/PackageManager;)Ljava/util/Map;

    move-result-object p0

    .line 143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v3

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    const-string v6, "TWAProviderPicker"

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 144
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 146
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 147
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    :cond_2
    move v7, v5

    :goto_1
    if-eqz v7, :cond_5

    if-eq v7, v4, :cond_4

    if-eq v7, v5, :cond_3

    goto :goto_0

    .line 158
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found browser: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 154
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found Custom Tabs provider: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_0

    .line 151
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Found TWA provider, finishing search: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance p0, Lcom/google/androidbrowserhelper/trusted/TwaProviderPicker$Action;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/google/androidbrowserhelper/trusted/TwaProviderPicker$Action;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_6
    if-eqz v3, :cond_7

    .line 165
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Found no TWA providers, using first Custom Tabs provider: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance p0, Lcom/google/androidbrowserhelper/trusted/TwaProviderPicker$Action;

    invoke-direct {p0, v4, v3}, Lcom/google/androidbrowserhelper/trusted/TwaProviderPicker$Action;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 170
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Found no TWA providers, using first browser: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance p0, Lcom/google/androidbrowserhelper/trusted/TwaProviderPicker$Action;

    invoke-direct {p0, v5, v1}, Lcom/google/androidbrowserhelper/trusted/TwaProviderPicker$Action;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method static restrictToPackageForTesting(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/google/androidbrowserhelper/trusted/TwaProviderPicker;->sPackageNameForTesting:Ljava/lang/String;

    return-void
.end method
