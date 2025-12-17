.class public Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "MediaStyleNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaStyleNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStyle"
.end annotation


# static fields
.field private static final MAX_MEDIA_BUTTONS:I = 0x5

.field private static final MAX_MEDIA_BUTTONS_IN_COMPACT:I = 0x3


# instance fields
.field actionsToShowInCompact:[I

.field cancelButtonIntent:Landroid/app/PendingIntent;

.field session:Landroidx/media3/session/MediaSession;

.field showCancelButton:Z


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSession;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->session:Landroidx/media3/session/MediaSession;

    return-void
.end method

.method private generateMediaActionButton(Landroidx/core/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;
    .locals 4

    .line 250
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 251
    :goto_0
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 253
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroidx/media/R$layout;->notification_media_action:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 255
    sget v2, Landroidx/media/R$id;->action0:I

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getIcon()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    if-nez v0, :cond_1

    .line 257
    sget v0, Landroidx/media/R$id;->action0:I

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 259
    :cond_1
    sget v0, Landroidx/media/R$id;->action0:I

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    return-object v1
.end method

.method public static getSessionToken(Landroid/app/Notification;)Landroidx/media3/session/SessionToken;
    .locals 2

    .line 96
    invoke-static {p0}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "androidx.media3.session"

    .line 100
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    sget-object v0, Landroidx/media3/session/SessionToken;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p0}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroidx/media3/session/SessionToken;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 4

    .line 182
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    .line 184
    invoke-static {}, Landroidx/media3/session/MediaStyleNotificationHelper$Api21Impl;->createMediaStyle()Landroid/app/Notification$MediaStyle;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->actionsToShowInCompact:[I

    iget-object v3, p0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->session:Landroidx/media3/session/MediaSession;

    .line 183
    invoke-static {v1, v2, v3}, Landroidx/media3/session/MediaStyleNotificationHelper$Api21Impl;->fillInMediaStyle(Landroid/app/Notification$MediaStyle;[ILandroidx/media3/session/MediaSession;)Landroid/app/Notification$MediaStyle;

    move-result-object v1

    .line 181
    invoke-static {v0, v1}, Landroidx/media3/session/MediaStyleNotificationHelper$Api21Impl;->setMediaStyle(Landroid/app/Notification$Builder;Landroid/app/Notification$MediaStyle;)V

    .line 185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->session:Landroidx/media3/session/MediaSession;

    .line 186
    invoke-virtual {v1}, Landroidx/media3/session/MediaSession;->getToken()Landroidx/media3/session/SessionToken;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/SessionToken;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "androidx.media3.session"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 187
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    return-void
.end method

.method generateBigContentView()Landroid/widget/RemoteViews;
    .locals 6

    .line 279
    iget-object v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 283
    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->getBigContentViewLayoutResource(I)I

    move-result v1

    const/4 v2, 0x0

    .line 281
    invoke-virtual {p0, v2, v1, v2}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 286
    sget v3, Landroidx/media/R$id;->media_actions:I

    invoke-virtual {v1, v3}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    if-lez v0, :cond_0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 289
    iget-object v4, p0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/app/NotificationCompat$Action;

    invoke-direct {p0, v4}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->generateMediaActionButton(Landroidx/core/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 290
    sget v5, Landroidx/media/R$id;->media_actions:I

    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->showCancelButton:Z

    if-eqz v0, :cond_1

    .line 294
    sget v0, Landroidx/media/R$id;->cancel_action:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 295
    sget v0, Landroidx/media/R$id;->cancel_action:I

    iget-object v2, p0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 300
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/media/R$integer;->cancel_button_image_alpha:I

    .line 301
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "setAlpha"

    .line 295
    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 302
    sget v0, Landroidx/media/R$id;->cancel_action:I

    iget-object v2, p0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->cancelButtonIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 304
    :cond_1
    sget v0, Landroidx/media/R$id;->cancel_action:I

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    return-object v1
.end method

.method generateContentView()Landroid/widget/RemoteViews;
    .locals 9

    .line 207
    invoke-virtual {p0}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->getContentViewLayoutResource()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 206
    invoke-virtual {p0, v1, v0, v2}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 209
    iget-object v3, p0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->actionsToShowInCompact:[I

    if-eqz v4, :cond_1

    .line 212
    array-length v5, v4

    const/4 v6, 0x3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 213
    sget v6, Landroidx/media/R$id;->media_actions:I

    invoke-virtual {v0, v6}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    if-lez v5, :cond_1

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_1

    if-ge v6, v3, :cond_0

    .line 223
    iget-object v7, p0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    aget v8, v4, v6

    .line 224
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/core/app/NotificationCompat$Action;

    .line 225
    invoke-direct {p0, v7}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->generateMediaActionButton(Landroidx/core/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 226
    sget v8, Landroidx/media/R$id;->media_actions:I

    invoke-virtual {v0, v8, v7}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 220
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    .line 218
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v2, p0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->showCancelButton:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    .line 231
    sget v2, Landroidx/media/R$id;->end_padder:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 232
    sget v2, Landroidx/media/R$id;->cancel_action:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 233
    sget v1, Landroidx/media/R$id;->cancel_action:I

    iget-object v2, p0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->cancelButtonIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 234
    sget v1, Landroidx/media/R$id;->cancel_action:I

    iget-object v2, p0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 239
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/media/R$integer;->cancel_button_image_alpha:I

    .line 240
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "setAlpha"

    .line 234
    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_1

    .line 242
    :cond_2
    sget v2, Landroidx/media/R$id;->end_padder:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 243
    sget v1, Landroidx/media/R$id;->cancel_action:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    return-object v0
.end method

.method getBigContentViewLayoutResource(I)I
    .locals 1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 311
    sget p1, Landroidx/media/R$layout;->notification_template_big_media_narrow:I

    goto :goto_0

    .line 312
    :cond_0
    sget p1, Landroidx/media/R$layout;->notification_template_big_media:I

    :goto_0
    return p1
.end method

.method getContentViewLayoutResource()I
    .locals 1

    .line 264
    sget v0, Landroidx/media/R$layout;->notification_template_media:I

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

.method public setCancelButtonIntent(Landroid/app/PendingIntent;)Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;
    .locals 0

    iput-object p1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->cancelButtonIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public varargs setShowActionsInCompactView([I)Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;
    .locals 0

    iput-object p1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->actionsToShowInCompact:[I

    return-object p0
.end method

.method public setShowCancelButton(Z)Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;
    .locals 0

    return-object p0
.end method
