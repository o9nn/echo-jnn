.class public Lcl/json/social/PinterestShare;
.super Lcl/json/social/SingleShareIntent;
.source "PinterestShare.java"


# static fields
.field private static final DEFAULT_WEB_LINK:Ljava/lang/String; = "https://pinterest.com/pin/create/button/?url={url}&media=$media&description={message}"

.field private static final PACKAGE:Ljava/lang/String; = "com.pinterest"

.field private static final PLAY_STORE_LINK:Ljava/lang/String; = "market://details?id=com.pinterest"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcl/json/social/SingleShareIntent;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method


# virtual methods
.method protected getDefaultWebLink()Ljava/lang/String;
    .locals 1

    const-string v0, "https://pinterest.com/pin/create/button/?url={url}&media=$media&description={message}"

    return-object v0
.end method

.method protected getPackage()Ljava/lang/String;
    .locals 1

    const-string v0, "com.pinterest"

    return-object v0
.end method

.method protected getPlayStoreLink()Ljava/lang/String;
    .locals 1

    const-string v0, "market://details?id=com.pinterest"

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
    invoke-virtual {p0}, Lcl/json/social/PinterestShare;->openIntentChooser()V

    return-void
.end method
