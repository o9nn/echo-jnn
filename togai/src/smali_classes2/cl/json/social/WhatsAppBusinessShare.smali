.class public Lcl/json/social/WhatsAppBusinessShare;
.super Lcl/json/social/SingleShareIntent;
.source "WhatsAppBusinessShare.java"


# static fields
.field private static final PACKAGE:Ljava/lang/String; = "com.whatsapp.w4b"

.field private static final PLAY_STORE_LINK:Ljava/lang/String; = "market://details?id=com.whatsapp.w4b"

.field private static final START_ACTIVITY_TIME_GAP_MS:I = 0xa

.field private static final START_CONVERSATION_CLASS:Ljava/lang/String; = "com.whatsapp.Conversation"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 23
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

    const-string v0, "com.whatsapp.w4b"

    return-object v0
.end method

.method protected getPlayStoreLink()Ljava/lang/String;
    .locals 1

    const-string v0, "market://details?id=com.whatsapp.w4b"

    return-object v0
.end method

.method public open(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 27
    invoke-super {p0, p1}, Lcl/json/social/SingleShareIntent;->open(Lcom/facebook/react/bridge/ReadableMap;)V

    const-string/jumbo v0, "whatsAppNumber"

    .line 29
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcl/json/social/WhatsAppBusinessShare;->getIntent()Landroid/content/Intent;

    move-result-object p1

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.whatsapp.w4b"

    const-string v2, "com.whatsapp.Conversation"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0}, Lcl/json/social/WhatsAppBusinessShare;->openIntentChooser()V

    const-wide/16 v0, 0xa

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcl/json/social/WhatsAppBusinessShare;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0}, Lcl/json/social/WhatsAppBusinessShare;->openIntentChooser()V

    return-void
.end method
