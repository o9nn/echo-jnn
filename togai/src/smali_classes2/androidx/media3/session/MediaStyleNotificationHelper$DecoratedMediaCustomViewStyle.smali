.class public Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;
.super Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;
.source "MediaStyleNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaStyleNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedMediaCustomViewStyle"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSession;)V
    .locals 0

    .line 353
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;-><init>(Landroidx/media3/session/MediaSession;)V

    return-void
.end method

.method private setBackgroundColor(Landroid/widget/RemoteViews;)V
    .locals 3

    .line 468
    iget-object v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v0

    goto :goto_0

    .line 473
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 472
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/media/R$color;->notification_material_background_media_default_color:I

    .line 473
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 475
    :goto_0
    sget v1, Landroidx/media/R$id;->status_bar_latest_event_content:I

    const-string v2, "setBackgroundColor"

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 4

    .line 361
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    .line 363
    invoke-static {}, Landroidx/media3/session/MediaStyleNotificationHelper$Api24Impl;->createDecoratedMediaCustomViewStyle()Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->actionsToShowInCompact:[I

    iget-object v3, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->session:Landroidx/media3/session/MediaSession;

    .line 362
    invoke-static {v1, v2, v3}, Landroidx/media3/session/MediaStyleNotificationHelper$Api21Impl;->fillInMediaStyle(Landroid/app/Notification$MediaStyle;[ILandroidx/media3/session/MediaSession;)Landroid/app/Notification$MediaStyle;

    move-result-object v1

    .line 360
    invoke-static {v0, v1}, Landroidx/media3/session/MediaStyleNotificationHelper$Api21Impl;->setMediaStyle(Landroid/app/Notification$Builder;Landroid/app/Notification$MediaStyle;)V

    .line 364
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 365
    iget-object v1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->session:Landroidx/media3/session/MediaSession;

    invoke-virtual {v1}, Landroidx/media3/session/MediaSession;->getToken()Landroidx/media3/session/SessionToken;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/SessionToken;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "androidx.media3.session"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 366
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    return-void
.end method

.method getBigContentViewLayoutResource(I)I
    .locals 1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 438
    sget p1, Landroidx/media/R$layout;->notification_template_big_media_narrow_custom:I

    goto :goto_0

    .line 439
    :cond_0
    sget p1, Landroidx/media/R$layout;->notification_template_big_media_custom:I

    :goto_0
    return p1
.end method

.method getContentViewLayoutResource()I
    .locals 1

    .line 406
    iget-object v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    sget v0, Landroidx/media/R$layout;->notification_template_media_custom:I

    goto :goto_0

    .line 408
    :cond_0
    invoke-super {p0}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->getContentViewLayoutResource()I

    move-result v0

    :goto_0
    return v0
.end method

.method public makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
