.class public abstract Lcl/json/social/ShareIntent;
.super Ljava/lang/Object;
.source "ShareIntent.java"


# instance fields
.field protected backgroundAsset:Lcl/json/ShareFile;

.field protected chooserTitle:Ljava/lang/String;

.field protected fileShare:Lcl/json/ShareFile;

.field protected intent:Landroid/content/Intent;

.field protected options:Lcom/facebook/react/bridge/ReadableMap;

.field protected final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field protected stickerAsset:Lcl/json/ShareFile;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Share"

    iput-object v0, p0, Lcl/json/social/ShareIntent;->chooserTitle:Ljava/lang/String;

    iput-object p1, p0, Lcl/json/social/ShareIntent;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 49
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcl/json/social/ShareIntent;->setIntent(Landroid/content/Intent;)V

    .line 50
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "text/plain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private getExcludedComponentArray(Lcom/facebook/react/bridge/ReadableArray;)[Landroid/content/ComponentName;
    .locals 9

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 339
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcl/json/social/ShareIntent;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 342
    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    move v2, v3

    .line 343
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 344
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 345
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 346
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 347
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-array p1, v3, [Landroid/content/ComponentName;

    .line 351
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/ComponentName;

    return-object p1
.end method

.method public static hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 322
    invoke-interface {p1, p0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .line 304
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x1

    .line 306
    :try_start_0
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    .line 233
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 235
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URLEncoder.encode() failed for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public excludeChooserIntent(Landroid/content/Intent;Lcom/facebook/react/bridge/ReadableMap;)Landroid/content/Intent;
    .locals 9

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcl/json/social/ShareIntent;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 60
    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 62
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 63
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v5, "className"

    const-string v6, "packageName"

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 64
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_0

    const-string v7, "excludedActivityTypes"

    invoke-interface {p2, v7}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 68
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcl/json/social/ShareIntent;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v5}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "simpleName"

    invoke-virtual {v7, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 76
    new-instance p2, Lcl/json/social/ShareIntent$1;

    invoke-direct {p2, p0}, Lcl/json/social/ShareIntent$1;-><init>(Lcl/json/social/ShareIntent;)V

    invoke-static {v1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 84
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 86
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    const-string p2, "share"

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    new-array p2, v4, [Landroid/os/Parcelable;

    .line 92
    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/os/Parcelable;

    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p1

    :cond_4
    const-string p2, "Share"

    .line 97
    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected getComponentClass()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getDefaultWebLink()Ljava/lang/String;
.end method

.method protected getFileShare(Lcom/facebook/react/bridge/ReadableMap;)Lcl/json/ShareFile;
    .locals 8

    const-string v0, "filename"

    .line 196
    invoke-static {v0, p1}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    const/4 v0, 0x0

    .line 200
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "useInternalStorage"

    .line 201
    invoke-static {v1, p1}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_1
    move-object v5, v0

    const-string/jumbo v0, "type"

    .line 204
    invoke-static {v0, p1}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v1

    const-string/jumbo v2, "url"

    if-eqz v1, :cond_2

    .line 205
    new-instance v7, Lcl/json/ShareFile;

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcl/json/social/ShareIntent;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcl/json/ShareFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v7

    .line 207
    :cond_2
    new-instance v0, Lcl/json/ShareFile;

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcl/json/social/ShareIntent;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v0, p1, v4, v5, v1}, Lcl/json/ShareFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0
.end method

.method protected getFileShares(Lcom/facebook/react/bridge/ReadableMap;)Lcl/json/ShareFiles;
    .locals 7

    .line 212
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "filenames"

    .line 213
    invoke-static {v0, p1}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 214
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    move v1, v3

    .line 215
    :goto_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 216
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "useInternalStorage"

    .line 221
    invoke-static {v1, p1}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_1
    move-object v4, v0

    const-string/jumbo v0, "type"

    .line 224
    invoke-static {v0, p1}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v1

    const-string/jumbo v3, "urls"

    if-eqz v1, :cond_2

    .line 225
    new-instance v6, Lcl/json/ShareFiles;

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcl/json/social/ShareIntent;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcl/json/ShareFiles;-><init>(Lcom/facebook/react/bridge/ReadableArray;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v6

    .line 227
    :cond_2
    new-instance v0, Lcl/json/ShareFiles;

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    iget-object v1, p0, Lcl/json/social/ShareIntent;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v0, p1, v2, v4, v1}, Lcl/json/ShareFiles;-><init>(Lcom/facebook/react/bridge/ReadableArray;Ljava/util/ArrayList;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcl/json/social/ShareIntent;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method protected getIntentsToViewFile(Landroid/content/Intent;Landroid/net/Uri;)[Landroid/content/Intent;
    .locals 7

    iget-object v0, p0, Lcl/json/social/ShareIntent;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 240
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 242
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/Intent;

    .line 244
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 245
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 246
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 248
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 249
    new-instance v6, Landroid/content/ComponentName;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 250
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, p2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    .line 252
    invoke-virtual {v5, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 253
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method protected abstract getPackage()Ljava/lang/String;
.end method

.method protected abstract getPlayStoreLink()Ljava/lang/String;
.end method

.method public open(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    iput-object p1, p0, Lcl/json/social/ShareIntent;->options:Lcom/facebook/react/bridge/ReadableMap;

    const-string v0, "isNewTask"

    .line 103
    invoke-static {v0, p1}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-string v0, "subject"

    .line 107
    invoke-static {v0, p1}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v0, "email"

    .line 111
    invoke-static {v0, p1}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string/jumbo v0, "title"

    .line 115
    invoke-static {v0, p1}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/json/social/ShareIntent;->chooserTitle:Ljava/lang/String;

    :cond_3
    const-string v0, "message"

    .line 120
    invoke-static {v0, p1}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_4

    .line 121
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v2

    :goto_0
    const-string v1, "social"

    .line 125
    invoke-static {v1, p1}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 126
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    const-string v1, "sms"

    .line 129
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "recipient"

    .line 130
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 133
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "address"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    const-string/jumbo v1, "whatsapp"

    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "jid"

    const-string v4, "@s.whatsapp.net"

    const-string/jumbo v5, "whatsAppNumber"

    if-eqz v1, :cond_7

    .line 138
    invoke-interface {p1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 139
    invoke-interface {p1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    const-string/jumbo v1, "whatsappbusiness"

    .line 145
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 146
    invoke-interface {p1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 147
    invoke-interface {p1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    const-string/jumbo v1, "urls"

    .line 153
    invoke-static {v1, p1}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v2

    const-string v3, " "

    const/4 v4, 0x1

    const-string v5, "android.intent.extra.STREAM"

    const-string v6, "android.intent.extra.TEXT"

    if-eqz v2, :cond_b

    .line 155
    invoke-virtual {p0, p1}, Lcl/json/social/ShareIntent;->getFileShares(Lcom/facebook/react/bridge/ReadableMap;)Lcl/json/ShareFiles;

    move-result-object v2

    .line 156
    invoke-virtual {v2}, Lcl/json/ShareFiles;->isFile()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 157
    invoke-virtual {v2}, Lcl/json/ShareFiles;->getURI()Ljava/util/ArrayList;

    move-result-object p1

    .line 158
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2}, Lcl/json/ShareFiles;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 163
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 166
    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_a

    .line 167
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 169
    :cond_a
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v1, "url"

    .line 172
    invoke-static {v1, p1}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 173
    invoke-virtual {p0, p1}, Lcl/json/social/ShareIntent;->getFileShare(Lcom/facebook/react/bridge/ReadableMap;)Lcl/json/ShareFile;

    move-result-object v2

    iput-object v2, p0, Lcl/json/social/ShareIntent;->fileShare:Lcl/json/ShareFile;

    .line 174
    invoke-virtual {v2}, Lcl/json/ShareFile;->isFile()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object p1, p0, Lcl/json/social/ShareIntent;->fileShare:Lcl/json/ShareFile;

    .line 175
    invoke-virtual {p1}, Lcl/json/ShareFile;->getURI()Landroid/net/Uri;

    move-result-object p1

    .line 176
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcl/json/social/ShareIntent;->fileShare:Lcl/json/ShareFile;

    invoke-virtual {v2}, Lcl/json/ShareFile;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 180
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 183
    :cond_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 184
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 186
    :cond_d
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 189
    :cond_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 190
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_f
    :goto_1
    return-void
.end method

.method protected openIntentChooser()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcl/json/social/ShareIntent;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 260
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Something went wrong"

    .line 262
    invoke-static {v0}, Lcl/json/social/TargetChosenReceiver;->callbackReject(Ljava/lang/String;)V

    return-void

    .line 267
    :cond_0
    invoke-static {}, Lcl/json/social/TargetChosenReceiver;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcl/json/social/ShareIntent;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 268
    invoke-static {v1}, Lcl/json/social/TargetChosenReceiver;->getSharingSenderIntent(Lcom/facebook/react/bridge/ReactContext;)Landroid/content/IntentSender;

    move-result-object v1

    .line 269
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcl/json/social/ShareIntent;->chooserTitle:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcl/json/social/ShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcl/json/social/ShareIntent;->chooserTitle:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    .line 273
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "showAppsToView"

    iget-object v4, p0, Lcl/json/social/ShareIntent;->options:Lcom/facebook/react/bridge/ReadableMap;

    .line 275
    invoke-static {v3, v4}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "url"

    iget-object v4, p0, Lcl/json/social/ShareIntent;->options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {v3, v4}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 276
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcl/json/social/ShareIntent;->fileShare:Lcl/json/ShareFile;

    .line 277
    invoke-virtual {v4}, Lcl/json/ShareFile;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcl/json/social/ShareIntent;->fileShare:Lcl/json/ShareFile;

    .line 279
    invoke-virtual {v4}, Lcl/json/ShareFile;->getURI()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcl/json/social/ShareIntent;->getIntentsToViewFile(Landroid/content/Intent;Landroid/net/Uri;)[Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.INITIAL_INTENTS"

    .line 281
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    iget-object v3, p0, Lcl/json/social/ShareIntent;->options:Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "excludedActivityTypes"

    .line 284
    invoke-static {v4, v3}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v3

    const/16 v5, 0x41cd

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcl/json/social/ShareIntent;->options:Lcom/facebook/react/bridge/ReadableMap;

    .line 286
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    invoke-direct {p0, v3}, Lcl/json/social/ShareIntent;->getExcludedComponentArray(Lcom/facebook/react/bridge/ReadableArray;)[Landroid/content/ComponentName;

    move-result-object v3

    const-string v4, "android.intent.extra.EXCLUDE_COMPONENTS"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 287
    invoke-virtual {v0, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 292
    :cond_3
    invoke-virtual {v0, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    if-nez v1, :cond_4

    .line 296
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "success"

    const/4 v2, 0x1

    .line 297
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "message"

    const-string v2, "OK"

    .line 298
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {v0}, Lcl/json/social/TargetChosenReceiver;->callbackResolve(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method protected setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcl/json/social/ShareIntent;->intent:Landroid/content/Intent;

    return-void
.end method
