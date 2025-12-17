.class public Lcl/json/social/InstagramStoriesShare;
.super Lcl/json/social/SingleShareIntent;
.source "InstagramStoriesShare.java"


# static fields
.field private static final PACKAGE:Ljava/lang/String; = "com.instagram.android"

.field private static final PLAY_STORE_LINK:Ljava/lang/String; = "https://play.google.com/store/apps/details?id=com.instagram.android"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lcl/json/social/SingleShareIntent;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 25
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.instagram.share.ADD_TO_STORY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcl/json/social/InstagramStoriesShare;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private shareStory(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 13

    const-string v0, "backgroundImage"

    .line 52
    invoke-static {v0, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v1

    const-string v2, "stickerImage"

    const-string v3, "backgroundVideo"

    if-nez v1, :cond_1

    invoke-static {v3, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    invoke-static {v2, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid background or sticker assets provided."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_1
    :goto_0
    iget-object v1, p0, Lcl/json/social/InstagramStoriesShare;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p1, "Something went wrong"

    .line 60
    invoke-static {p1}, Lcl/json/social/TargetChosenReceiver;->callbackReject(Ljava/lang/String;)V

    return-void

    .line 64
    :cond_2
    iget-object v4, p0, Lcl/json/social/InstagramStoriesShare;->intent:Landroid/content/Intent;

    const-string v5, "appId"

    invoke-interface {p1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "source_application"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    iget-object v4, p0, Lcl/json/social/InstagramStoriesShare;->intent:Landroid/content/Intent;

    const-string v5, "#906df4"

    const-string v6, "bottom_background_color"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v4, p0, Lcl/json/social/InstagramStoriesShare;->intent:Landroid/content/Intent;

    const-string v5, "#837DF4"

    const-string/jumbo v7, "top_background_color"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "attributionURL"

    .line 69
    invoke-static {v4, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 70
    iget-object v5, p0, Lcl/json/social/InstagramStoriesShare;->intent:Landroid/content/Intent;

    const-string v8, "content_url"

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const-string v4, "backgroundTopColor"

    .line 73
    invoke-static {v4, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 74
    iget-object v5, p0, Lcl/json/social/InstagramStoriesShare;->intent:Landroid/content/Intent;

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string v4, "backgroundBottomColor"

    .line 77
    invoke-static {v4, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 78
    iget-object v5, p0, Lcl/json/social/InstagramStoriesShare;->intent:Landroid/content/Intent;

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    const/4 v4, 0x0

    .line 81
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string/jumbo v6, "useInternalStorage"

    .line 82
    invoke-static {v6, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 83
    invoke-interface {p1, v6}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 86
    :cond_6
    invoke-static {v0, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v6

    const/4 v12, 0x1

    if-nez v6, :cond_7

    .line 87
    invoke-static {v3, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    move v4, v12

    .line 86
    :cond_8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 89
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 93
    invoke-static {v0, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v6

    const-string v7, "image/jpeg"

    if-eqz v6, :cond_9

    .line 94
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 95
    :cond_9
    invoke-static {v3, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 96
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "video/*"

    move-object v7, v0

    move-object v8, v3

    goto :goto_2

    :cond_a
    const-string v0, ""

    :goto_1
    move-object v8, v7

    move-object v7, v0

    .line 100
    :goto_2
    new-instance v0, Lcl/json/ShareFile;

    const-string v9, "background"

    iget-object v11, p0, Lcl/json/social/InstagramStoriesShare;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    move-object v6, v0

    move-object v10, v5

    invoke-direct/range {v6 .. v11}, Lcl/json/ShareFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 102
    iget-object v3, p0, Lcl/json/social/InstagramStoriesShare;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Lcl/json/ShareFile;->getURI()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0}, Lcl/json/ShareFile;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v0, p0, Lcl/json/social/InstagramStoriesShare;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    :cond_b
    invoke-static {v2, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 107
    new-instance v0, Lcl/json/ShareFile;

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "image/png"

    const-string v9, "sticker"

    iget-object v11, p0, Lcl/json/social/InstagramStoriesShare;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    move-object v6, v0

    move-object v10, v5

    invoke-direct/range {v6 .. v11}, Lcl/json/ShareFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 109
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_c

    .line 110
    iget-object p1, p0, Lcl/json/social/InstagramStoriesShare;->intent:Landroid/content/Intent;

    const-string v2, "image/*"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    :cond_c
    iget-object p1, p0, Lcl/json/social/InstagramStoriesShare;->intent:Landroid/content/Intent;

    const-string v2, "interactive_asset_uri"

    invoke-virtual {v0}, Lcl/json/ShareFile;->getURI()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.instagram.android"

    .line 114
    invoke-virtual {v0}, Lcl/json/ShareFile;->getURI()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, p1, v0, v12}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_d
    return-void
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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcl/json/social/SingleShareIntent;->open(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 31
    invoke-direct {p0, p1}, Lcl/json/social/InstagramStoriesShare;->shareStory(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 33
    invoke-virtual {p0, p1}, Lcl/json/social/InstagramStoriesShare;->openIntentChooser(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method
