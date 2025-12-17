.class public Lcl/json/social/FacebookPagesManagerShare;
.super Lcl/json/social/SingleShareIntent;
.source "FacebookPagesManagerShare.java"


# static fields
.field private static final DEFAULT_WEB_LINK:Ljava/lang/String; = "https://www.facebook.com/sharer/sharer.php?u={url}"

.field private static final PACKAGE:Ljava/lang/String; = "com.facebook.pages.app"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcl/json/social/SingleShareIntent;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method


# virtual methods
.method protected getDefaultWebLink()Ljava/lang/String;
    .locals 1

    const-string v0, "https://www.facebook.com/sharer/sharer.php?u={url}"

    return-object v0
.end method

.method protected getPackage()Ljava/lang/String;
    .locals 1

    const-string v0, "com.facebook.pages.app"

    return-object v0
.end method

.method protected getPlayStoreLink()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public open(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 21
    invoke-super {p0, p1}, Lcl/json/social/SingleShareIntent;->open(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 23
    invoke-virtual {p0}, Lcl/json/social/FacebookPagesManagerShare;->openIntentChooser()V

    return-void
.end method
