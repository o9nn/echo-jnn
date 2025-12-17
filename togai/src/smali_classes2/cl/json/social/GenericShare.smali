.class public Lcl/json/social/GenericShare;
.super Lcl/json/social/ShareIntent;
.source "GenericShare.java"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcl/json/social/ShareIntent;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

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

    const/4 v0, 0x0

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

    .line 18
    invoke-super {p0, p1}, Lcl/json/social/ShareIntent;->open(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 20
    invoke-virtual {p0}, Lcl/json/social/GenericShare;->openIntentChooser()V

    return-void
.end method
