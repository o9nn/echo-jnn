.class final Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;
.super Ljava/lang/Object;
.source "LegacyPlayerControlView.java"

# interfaces
.implements Landroidx/media3/common/Player$Listener;
.implements Landroidx/media3/ui/TimeBar$OnScrubListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/LegacyPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/ui/LegacyPlayerControlView;


# direct methods
.method private constructor <init>(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/ui/LegacyPlayerControlView;Landroidx/media3/ui/LegacyPlayerControlView$1;)V
    .locals 0

    .line 1262
    invoke-direct {p0, p1}, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;-><init>(Landroidx/media3/ui/LegacyPlayerControlView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1318
    invoke-static {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1100(Landroidx/media3/ui/LegacyPlayerControlView;)Landroidx/media3/common/Player;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1322
    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1300(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 1323
    invoke-interface {v0}, Landroidx/media3/common/Player;->seekToNext()V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1324
    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1400(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 1325
    invoke-interface {v0}, Landroidx/media3/common/Player;->seekToPrevious()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1326
    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1500(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 1327
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_8

    .line 1328
    invoke-interface {v0}, Landroidx/media3/common/Player;->seekForward()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1330
    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1600(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_4

    .line 1331
    invoke-interface {v0}, Landroidx/media3/common/Player;->seekBack()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1332
    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1700(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_5

    .line 1333
    invoke-static {v0}, Landroidx/media3/common/util/Util;->handlePlayButtonAction(Landroidx/media3/common/Player;)Z

    goto :goto_0

    :cond_5
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1334
    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1800(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_6

    .line 1335
    invoke-static {v0}, Landroidx/media3/common/util/Util;->handlePauseButtonAction(Landroidx/media3/common/Player;)Z

    goto :goto_0

    :cond_6
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1336
    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1900(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_7

    .line 1338
    invoke-interface {v0}, Landroidx/media3/common/Player;->getRepeatMode()I

    move-result p1

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$2000(Landroidx/media3/ui/LegacyPlayerControlView;)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/media3/common/util/RepeatModeUtil;->getNextRepeatMode(II)I

    move-result p1

    .line 1337
    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setRepeatMode(I)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1339
    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$2100(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_8

    .line 1340
    invoke-interface {v0}, Landroidx/media3/common/Player;->getShuffleModeEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setShuffleModeEnabled(Z)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 4

    const/4 p1, 0x4

    const/4 v0, 0x5

    filled-new-array {p1, v0}, [I

    move-result-object v1

    .line 1267
    invoke-virtual {p2, v1}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1268
    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$100(Landroidx/media3/ui/LegacyPlayerControlView;)V

    :cond_0
    const/4 v1, 0x7

    filled-new-array {p1, v0, v1}, [I

    move-result-object p1

    .line 1270
    invoke-virtual {p2, p1}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1272
    invoke-static {p1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$200(Landroidx/media3/ui/LegacyPlayerControlView;)V

    :cond_1
    const/16 p1, 0x8

    .line 1274
    invoke-virtual {p2, p1}, Landroidx/media3/common/Player$Events;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1275
    invoke-static {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->access$300(Landroidx/media3/ui/LegacyPlayerControlView;)V

    :cond_2
    const/16 v0, 0x9

    .line 1277
    invoke-virtual {p2, v0}, Landroidx/media3/common/Player$Events;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1278
    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$400(Landroidx/media3/ui/LegacyPlayerControlView;)V

    :cond_3
    const/16 v1, 0xd

    const/16 v2, 0xb

    const/4 v3, 0x0

    filled-new-array {p1, v0, v2, v3, v1}, [I

    move-result-object p1

    .line 1280
    invoke-virtual {p2, p1}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1286
    invoke-static {p1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$500(Landroidx/media3/ui/LegacyPlayerControlView;)V

    :cond_4
    filled-new-array {v2, v3}, [I

    move-result-object p1

    .line 1288
    invoke-virtual {p2, p1}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1289
    invoke-static {p1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$600(Landroidx/media3/ui/LegacyPlayerControlView;)V

    :cond_5
    return-void
.end method

.method public onScrubMove(Landroidx/media3/ui/TimeBar;J)V
    .locals 2

    iget-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1303
    invoke-static {p1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$800(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1304
    invoke-static {p1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$800(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->access$900(Landroidx/media3/ui/LegacyPlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1000(Landroidx/media3/ui/LegacyPlayerControlView;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Landroidx/media3/common/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onScrubStart(Landroidx/media3/ui/TimeBar;J)V
    .locals 2

    iget-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    const/4 v0, 0x1

    .line 1295
    invoke-static {p1, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->access$702(Landroidx/media3/ui/LegacyPlayerControlView;Z)Z

    iget-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1296
    invoke-static {p1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$800(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1297
    invoke-static {p1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$800(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->access$900(Landroidx/media3/ui/LegacyPlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1000(Landroidx/media3/ui/LegacyPlayerControlView;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Landroidx/media3/common/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onScrubStop(Landroidx/media3/ui/TimeBar;JZ)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    const/4 v0, 0x0

    .line 1310
    invoke-static {p1, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->access$702(Landroidx/media3/ui/LegacyPlayerControlView;Z)Z

    if-nez p4, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1311
    invoke-static {p1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1100(Landroidx/media3/ui/LegacyPlayerControlView;)Landroidx/media3/common/Player;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 1312
    invoke-static {p1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1100(Landroidx/media3/ui/LegacyPlayerControlView;)Landroidx/media3/common/Player;

    move-result-object p4

    invoke-static {p1, p4, p2, p3}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1200(Landroidx/media3/ui/LegacyPlayerControlView;Landroidx/media3/common/Player;J)V

    :cond_0
    return-void
.end method
