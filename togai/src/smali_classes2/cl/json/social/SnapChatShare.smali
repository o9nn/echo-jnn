.class public Lcl/json/social/SnapChatShare;
.super Lcl/json/social/SingleShareIntent;
.source "SnapChatShare.java"


# static fields
.field private static final CLASS:Ljava/lang/String; = "com.snap.mushroom.MainActivity"

.field private static final PACKAGE:Ljava/lang/String; = "com.snapchat.android"

.field private static final PLAY_STORE_LINK:Ljava/lang/String; = "market://details?id=com.snapchat.android"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcl/json/social/SingleShareIntent;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method


# virtual methods
.method protected getComponentClass()Ljava/lang/String;
    .locals 1

    const-string v0, "com.snap.mushroom.MainActivity"

    return-object v0
.end method

.method protected getDefaultWebLink()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPackage()Ljava/lang/String;
    .locals 1

    const-string v0, "com.snapchat.android"

    return-object v0
.end method

.method protected getPlayStoreLink()Ljava/lang/String;
    .locals 1

    const-string v0, "market://details?id=com.snapchat.android"

    return-object v0
.end method

.method public open(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 27
    invoke-super {p0, p1}, Lcl/json/social/SingleShareIntent;->open(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 29
    invoke-virtual {p0}, Lcl/json/social/SnapChatShare;->openIntentChooser()V

    return-void
.end method
