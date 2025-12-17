.class public abstract Lcl/json/social/SingleShareIntent;
.super Lcl/json/social/ShareIntent;
.source "SingleShareIntent.java"


# instance fields
.field protected appStoreURL:Ljava/lang/String;

.field protected playStoreURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcl/json/social/ShareIntent;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcl/json/social/SingleShareIntent;->playStoreURL:Ljava/lang/String;

    iput-object p1, p0, Lcl/json/social/SingleShareIntent;->appStoreURL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public open(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 31
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getDefaultWebLink()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getPlayStoreLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getPackage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcl/json/social/SingleShareIntent;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0, v1}, Lcl/json/social/SingleShareIntent;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "INSTALLED"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getComponentClass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getComponentClass()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    :goto_0
    invoke-super {p0, p1}, Lcl/json/social/ShareIntent;->open(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void

    .line 45
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "NOT INSTALLED"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getDefaultWebLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 48
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getDefaultWebLink()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 49
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/json/social/SingleShareIntent;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{url}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    .line 50
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/json/social/SingleShareIntent;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{message}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 51
    :cond_3
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getPlayStoreLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 52
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getPlayStoreLink()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, ""

    .line 57
    :goto_1
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v1}, Lcl/json/social/SingleShareIntent;->setIntent(Landroid/content/Intent;)V

    .line 61
    :cond_5
    invoke-super {p0, p1}, Lcl/json/social/ShareIntent;->open(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method protected openIntentChooser()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lcl/json/social/SingleShareIntent;->openIntentChooser(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method protected openIntentChooser(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcl/json/social/SingleShareIntent;->options:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "forceDialog"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "message"

    const/4 v3, 0x1

    const-string v4, "success"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcl/json/social/SingleShareIntent;->options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    iget-object v0, p0, Lcl/json/social/SingleShareIntent;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Something went wrong"

    .line 72
    invoke-static {p1}, Lcl/json/social/TargetChosenReceiver;->callbackReject(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const-string v1, "social"

    .line 76
    invoke-static {v1, p1}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "social is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_2
    :goto_0
    invoke-static {}, Lcl/json/social/TargetChosenReceiver;->isSupported()Z

    move-result p1

    const/16 v1, 0x41cd

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz p1, :cond_3

    .line 81
    iget-object p1, p0, Lcl/json/social/SingleShareIntent;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {p1}, Lcl/json/social/TargetChosenReceiver;->getSharingSenderIntent(Lcom/facebook/react/bridge/ReactContext;)Landroid/content/IntentSender;

    move-result-object p1

    .line 82
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcl/json/social/SingleShareIntent;->chooserTitle:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object p1

    .line 83
    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v6, p0, Lcl/json/social/SingleShareIntent;->chooserTitle:Ljava/lang/String;

    invoke-static {p1, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 87
    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 90
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 91
    invoke-interface {p1, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "OK"

    .line 92
    invoke-interface {p1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Lcl/json/social/TargetChosenReceiver;->callbackResolve(Ljava/lang/Object;)V

    goto :goto_1

    .line 96
    :cond_4
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    iget-object p1, p0, Lcl/json/social/SingleShareIntent;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->startActivity(Landroid/content/Intent;)V

    .line 98
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 99
    invoke-interface {p1, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {p1}, Lcl/json/social/TargetChosenReceiver;->callbackResolve(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
