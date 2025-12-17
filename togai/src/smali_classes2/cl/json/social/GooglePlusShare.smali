.class public Lcl/json/social/GooglePlusShare;
.super Lcl/json/social/SingleShareIntent;
.source "GooglePlusShare.java"


# static fields
.field private static final DEFAULT_WEB_LINK:Ljava/lang/String; = "https://plus.google.com/share?url={url}"

.field private static final PACKAGE:Ljava/lang/String; = "com.google.android.apps.plus"

.field private static final PLAY_STORE_LINK:Ljava/lang/String; = "market://details?id=com.google.android.apps.plus"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcl/json/social/SingleShareIntent;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method


# virtual methods
.method protected getDefaultWebLink()Ljava/lang/String;
    .locals 1

    const-string v0, "https://plus.google.com/share?url={url}"

    return-object v0
.end method

.method protected getPackage()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.apps.plus"

    return-object v0
.end method

.method protected getPlayStoreLink()Ljava/lang/String;
    .locals 1

    const-string v0, "market://details?id=com.google.android.apps.plus"

    return-object v0
.end method

.method public open(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 23
    invoke-super {p0, p1}, Lcl/json/social/SingleShareIntent;->open(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 25
    invoke-virtual {p0}, Lcl/json/social/GooglePlusShare;->openIntentChooser()V

    return-void
.end method
