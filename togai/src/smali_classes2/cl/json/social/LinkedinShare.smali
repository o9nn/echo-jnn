.class public Lcl/json/social/LinkedinShare;
.super Lcl/json/social/SingleShareIntent;
.source "LinkedinShare.java"


# static fields
.field private static final PACKAGE:Ljava/lang/String; = "com.linkedin.android"

.field private static final PLAY_STORE_LINK:Ljava/lang/String; = "market://details?id=com.linkedin.android"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcl/json/social/SingleShareIntent;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

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

    const-string v0, "com.linkedin.android"

    return-object v0
.end method

.method protected getPlayStoreLink()Ljava/lang/String;
    .locals 1

    const-string v0, "market://details?id=com.linkedin.android"

    return-object v0
.end method

.method public open(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcl/json/social/SingleShareIntent;->open(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 28
    invoke-virtual {p0}, Lcl/json/social/LinkedinShare;->openIntentChooser()V

    return-void
.end method
