.class public Lcl/json/social/InstagramShare;
.super Lcl/json/social/SingleShareIntent;
.source "InstagramShare.java"


# static fields
.field private static final PACKAGE:Ljava/lang/String; = "com.instagram.android"

.field private static final PLAY_STORE_LINK:Ljava/lang/String; = "https://play.google.com/store/apps/details?id=com.instagram.android"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcl/json/social/SingleShareIntent;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method

.method private getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/"

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 70
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    return-object p1
.end method


# virtual methods
.method protected getDefaultWebLink()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPackage()Ljava/lang/String;
    .locals 1

    const-string v0, "com.instagram.android"

    return-object v0
.end method

.method protected getPlayStoreLink()Ljava/lang/String;
    .locals 1

    const-string v0, "https://play.google.com/store/apps/details?id=com.instagram.android"

    return-object v0
.end method

.method public open(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcl/json/social/SingleShareIntent;->open(Lcom/facebook/react/bridge/ReadableMap;)V

    const-string/jumbo v0, "type"

    .line 32
    invoke-static {v0, p1}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v1

    const-string v2, "RNShare"

    if-nez v1, :cond_0

    const-string p1, "No type provided"

    .line 33
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 36
    :cond_0
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "text"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    iget-object p1, p0, Lcl/json/social/InstagramShare;->chooserTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcl/json/social/InstagramShare;->openInstagramIntentChooserForText(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v1, "url"

    .line 43
    invoke-static {v1, p1}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string p1, "No url provided"

    .line 44
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 47
    :cond_2
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "instagram://"

    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    invoke-virtual {p0, p1}, Lcl/json/social/InstagramShare;->openInstagramUrlScheme(Ljava/lang/String;)V

    return-void

    .line 55
    :cond_3
    invoke-direct {p0, v0}, Lcl/json/social/InstagramShare;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 58
    iget-object v2, p0, Lcl/json/social/InstagramShare;->chooserTitle:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcl/json/social/InstagramShare;->openInstagramIntentChooserForMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method protected openInstagramIntentChooserForMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 10

    .line 81
    iget-object v0, p0, Lcl/json/social/InstagramShare;->options:Lcom/facebook/react/bridge/ReadableMap;

    const-string/jumbo v1, "useInternalStorage"

    invoke-static {v1, v0}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/json/social/InstagramShare;->options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 82
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    new-instance v0, Lcl/json/ShareFile;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "image/"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "image"

    iget-object v9, p0, Lcl/json/social/InstagramShare;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcl/json/ShareFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    goto :goto_1

    .line 84
    :cond_1
    new-instance v0, Lcl/json/ShareFile;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "video/"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "video"

    iget-object v9, p0, Lcl/json/social/InstagramShare;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcl/json/ShareFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 85
    :goto_1
    invoke-virtual {v0}, Lcl/json/ShareFile;->getURI()Landroid/net/Uri;

    move-result-object p1

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "image/*"

    .line 90
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_2
    const-string/jumbo p3, "video/*"

    .line 92
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const-string p3, "android.intent.extra.STREAM"

    .line 95
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p3, "com.instagram.android"

    .line 96
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.instagram.share.ADD_TO_STORY"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, p1, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    const/high16 p4, 0x10000000

    .line 106
    invoke-virtual {p2, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-array p4, v3, [Landroid/content/Intent;

    aput-object v1, p4, v2

    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    .line 107
    invoke-virtual {p2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    iget-object p4, p0, Lcl/json/social/InstagramShare;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p4}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p4

    .line 110
    invoke-virtual {p4, p3, p1, v3}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 111
    iget-object p1, p0, Lcl/json/social/InstagramShare;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p1, p2}, Lcom/facebook/react/bridge/ReactApplicationContext;->startActivity(Landroid/content/Intent;)V

    .line 113
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "success"

    .line 114
    invoke-interface {p1, p2, v3}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    invoke-virtual {p0}, Lcl/json/social/InstagramShare;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "message"

    invoke-interface {p1, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {p1}, Lcl/json/social/TargetChosenReceiver;->callbackResolve(Ljava/lang/Object;)V

    return-void
.end method

.method protected openInstagramIntentChooserForText(Ljava/lang/String;)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcl/json/social/InstagramShare;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.instagram.android"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0}, Lcl/json/social/InstagramShare;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "text/plain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0}, Lcl/json/social/InstagramShare;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-super {p0}, Lcl/json/social/SingleShareIntent;->openIntentChooser()V

    return-void
.end method

.method protected openInstagramUrlScheme(Ljava/lang/String;)V
    .locals 2

    .line 62
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Lcl/json/social/InstagramShare;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0}, Lcl/json/social/InstagramShare;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 65
    invoke-super {p0}, Lcl/json/social/SingleShareIntent;->openIntentChooser()V

    return-void
.end method
