.class public Landroidx/media3/ui/LegacyPlayerControlView;
.super Landroid/widget/FrameLayout;
.source "LegacyPlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;,
        Landroidx/media3/ui/LegacyPlayerControlView$ProgressUpdateListener;,
        Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;,
        Landroidx/media3/ui/LegacyPlayerControlView$Api21;
    }
.end annotation


# static fields
.field public static final DEFAULT_REPEAT_TOGGLE_MODES:I = 0x0

.field public static final DEFAULT_SHOW_TIMEOUT_MS:I = 0x1388

.field public static final DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS:I = 0xc8

.field private static final MAX_UPDATE_INTERVAL_MS:I = 0x3e8

.field public static final MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR:I = 0x64


# instance fields
.field private adGroupTimesMs:[J

.field private final buttonAlphaDisabled:F

.field private final buttonAlphaEnabled:F

.field private final componentListener:Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;

.field private currentBufferedPosition:J

.field private currentPosition:J

.field private currentWindowOffset:J

.field private final durationView:Landroid/widget/TextView;

.field private extraAdGroupTimesMs:[J

.field private extraPlayedAdGroups:[Z

.field private final fastForwardButton:Landroid/view/View;

.field private final formatBuilder:Ljava/lang/StringBuilder;

.field private final formatter:Ljava/util/Formatter;

.field private final hideAction:Ljava/lang/Runnable;

.field private hideAtMs:J

.field private isAttachedToWindow:Z

.field private multiWindowTimeBar:Z

.field private final nextButton:Landroid/view/View;

.field private final pauseButton:Landroid/view/View;

.field private final period:Landroidx/media3/common/Timeline$Period;

.field private final playButton:Landroid/view/View;

.field private playedAdGroups:[Z

.field private player:Landroidx/media3/common/Player;

.field private final positionView:Landroid/widget/TextView;

.field private final previousButton:Landroid/view/View;

.field private progressUpdateListener:Landroidx/media3/ui/LegacyPlayerControlView$ProgressUpdateListener;

.field private final repeatAllButtonContentDescription:Ljava/lang/String;

.field private final repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatOffButtonContentDescription:Ljava/lang/String;

.field private final repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatOneButtonContentDescription:Ljava/lang/String;

.field private final repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatToggleButton:Landroid/widget/ImageView;

.field private repeatToggleModes:I

.field private final rewindButton:Landroid/view/View;

.field private scrubbing:Z

.field private showFastForwardButton:Z

.field private showMultiWindowTimeBar:Z

.field private showNextButton:Z

.field private showPreviousButton:Z

.field private showRewindButton:Z

.field private showShuffleButton:Z

.field private showTimeoutMs:I

.field private final shuffleButton:Landroid/widget/ImageView;

.field private final shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final shuffleOffContentDescription:Ljava/lang/String;

.field private final shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final shuffleOnContentDescription:Ljava/lang/String;

.field private final timeBar:Landroidx/media3/ui/TimeBar;

.field private timeBarMinUpdateIntervalMs:I

.field private final updateProgressAction:Ljava/lang/Runnable;

.field private final visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final vrButton:Landroid/view/View;

.field private final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public static synthetic $r8$lambda$q1kRatk2hGAxGJ7H0Q5bZKgK7Qg(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateProgress()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.ui"

    .line 252
    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 350
    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/LegacyPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 354
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/ui/LegacyPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 358
    invoke-direct {p0, p1, p2, p3, p2}, Landroidx/media3/ui/LegacyPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 5

    .line 371
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 372
    sget p2, Landroidx/media3/ui/R$layout;->exo_legacy_player_control_view:I

    const/16 v0, 0x1388

    iput v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showTimeoutMs:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleModes:I

    const/16 v1, 0xc8

    iput v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBarMinUpdateIntervalMs:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAtMs:J

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showRewindButton:Z

    iput-boolean v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showFastForwardButton:Z

    iput-boolean v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showPreviousButton:Z

    iput-boolean v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showNextButton:Z

    iput-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showShuffleButton:Z

    if-eqz p4, :cond_0

    .line 385
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView:[I

    .line 386
    invoke-virtual {v3, p4, v4, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 392
    :try_start_0
    sget v3, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_show_timeout:I

    iget v4, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showTimeoutMs:I

    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showTimeoutMs:I

    .line 393
    sget v3, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_controller_layout_id:I

    .line 394
    invoke-virtual {p3, v3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iget v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleModes:I

    .line 396
    invoke-static {p3, v3}, Landroidx/media3/ui/LegacyPlayerControlView;->getRepeatToggleModes(Landroid/content/res/TypedArray;I)I

    move-result v3

    iput v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleModes:I

    .line 397
    sget v3, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_show_rewind_button:I

    iget-boolean v4, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showRewindButton:Z

    .line 398
    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showRewindButton:Z

    .line 399
    sget v3, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_show_fastforward_button:I

    iget-boolean v4, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showFastForwardButton:Z

    .line 400
    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showFastForwardButton:Z

    .line 402
    sget v3, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_show_previous_button:I

    iget-boolean v4, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showPreviousButton:Z

    .line 403
    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showPreviousButton:Z

    .line 405
    sget v3, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_show_next_button:I

    iget-boolean v4, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showNextButton:Z

    .line 406
    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showNextButton:Z

    .line 407
    sget v3, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_show_shuffle_button:I

    iget-boolean v4, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showShuffleButton:Z

    .line 408
    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showShuffleButton:Z

    .line 410
    sget v3, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_time_bar_min_update_interval:I

    iget v4, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBarMinUpdateIntervalMs:I

    .line 411
    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 410
    invoke-virtual {p0, v3}, Landroidx/media3/ui/LegacyPlayerControlView;->setTimeBarMinUpdateInterval(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 416
    throw p1

    .line 418
    :cond_0
    :goto_0
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 419
    new-instance p3, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p3}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    .line 420
    new-instance p3, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p3}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    .line 421
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    .line 422
    new-instance v3, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, p3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->formatter:Ljava/util/Formatter;

    new-array p3, v0, [J

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->adGroupTimesMs:[J

    new-array p3, v0, [Z

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->playedAdGroups:[Z

    new-array p3, v0, [J

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->extraAdGroupTimesMs:[J

    new-array p3, v0, [Z

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->extraPlayedAdGroups:[Z

    .line 427
    new-instance p3, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;

    const/4 v3, 0x0

    invoke-direct {p3, p0, v3}, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;-><init>(Landroidx/media3/ui/LegacyPlayerControlView;Landroidx/media3/ui/LegacyPlayerControlView$1;)V

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->componentListener:Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;

    .line 428
    new-instance v4, Landroidx/media3/ui/LegacyPlayerControlView$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Landroidx/media3/ui/LegacyPlayerControlView$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/ui/LegacyPlayerControlView;)V

    iput-object v4, p0, Landroidx/media3/ui/LegacyPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    .line 429
    new-instance v4, Landroidx/media3/ui/LegacyPlayerControlView$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroidx/media3/ui/LegacyPlayerControlView$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/ui/LegacyPlayerControlView;)V

    iput-object v4, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAction:Ljava/lang/Runnable;

    .line 431
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 p2, 0x40000

    .line 432
    invoke-virtual {p0, p2}, Landroidx/media3/ui/LegacyPlayerControlView;->setDescendantFocusability(I)V

    .line 434
    sget p2, Landroidx/media3/ui/R$id;->exo_progress:I

    invoke-virtual {p0, p2}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/media3/ui/TimeBar;

    .line 435
    sget v4, Landroidx/media3/ui/R$id;->exo_progress_placeholder:I

    invoke-virtual {p0, v4}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz p2, :cond_1

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    .line 441
    new-instance p2, Landroidx/media3/ui/DefaultTimeBar;

    invoke-direct {p2, p1, v3, v0, p4}, Landroidx/media3/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    .line 442
    sget p4, Landroidx/media3/ui/R$id;->exo_progress:I

    invoke-virtual {p2, p4}, Landroidx/media3/ui/DefaultTimeBar;->setId(I)V

    .line 443
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroidx/media3/ui/DefaultTimeBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    .line 445
    invoke-virtual {p4, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 446
    invoke-virtual {p4, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 447
    invoke-virtual {p4, p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    goto :goto_1

    :cond_2
    iput-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    .line 452
    :goto_1
    sget p2, Landroidx/media3/ui/R$id;->exo_duration:I

    invoke-virtual {p0, p2}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->durationView:Landroid/widget/TextView;

    .line 453
    sget p2, Landroidx/media3/ui/R$id;->exo_position:I

    invoke-virtual {p0, p2}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->positionView:Landroid/widget/TextView;

    iget-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    if-eqz p2, :cond_3

    .line 456
    invoke-interface {p2, p3}, Landroidx/media3/ui/TimeBar;->addListener(Landroidx/media3/ui/TimeBar$OnScrubListener;)V

    .line 458
    :cond_3
    sget p2, Landroidx/media3/ui/R$id;->exo_play:I

    invoke-virtual {p0, p2}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->playButton:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 460
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    :cond_4
    sget p2, Landroidx/media3/ui/R$id;->exo_pause:I

    invoke-virtual {p0, p2}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 464
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    :cond_5
    sget p2, Landroidx/media3/ui/R$id;->exo_prev:I

    invoke-virtual {p0, p2}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->previousButton:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 468
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    :cond_6
    sget p2, Landroidx/media3/ui/R$id;->exo_next:I

    invoke-virtual {p0, p2}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->nextButton:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 472
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    :cond_7
    sget p2, Landroidx/media3/ui/R$id;->exo_rew:I

    invoke-virtual {p0, p2}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->rewindButton:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 476
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    :cond_8
    sget p2, Landroidx/media3/ui/R$id;->exo_ffwd:I

    invoke-virtual {p0, p2}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->fastForwardButton:Landroid/view/View;

    if-eqz p2, :cond_9

    .line 480
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    :cond_9
    sget p2, Landroidx/media3/ui/R$id;->exo_repeat_toggle:I

    invoke-virtual {p0, p2}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-eqz p2, :cond_a

    .line 484
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    :cond_a
    sget p2, Landroidx/media3/ui/R$id;->exo_shuffle:I

    invoke-virtual {p0, p2}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    if-eqz p2, :cond_b

    .line 488
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    :cond_b
    sget p2, Landroidx/media3/ui/R$id;->exo_vr:I

    invoke-virtual {p0, p2}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->vrButton:Landroid/view/View;

    .line 491
    invoke-virtual {p0, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->setShowVrButton(Z)V

    .line 492
    invoke-direct {p0, v0, v0, p2}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 494
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 496
    sget p3, Landroidx/media3/ui/R$integer;->exo_media_button_opacity_percentage_enabled:I

    .line 497
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p3, p4

    iput p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->buttonAlphaEnabled:F

    .line 498
    sget p3, Landroidx/media3/ui/R$integer;->exo_media_button_opacity_percentage_disabled:I

    .line 499
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p4

    iput p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->buttonAlphaDisabled:F

    .line 501
    sget p3, Landroidx/media3/ui/R$drawable;->exo_legacy_controls_repeat_off:I

    .line 502
    invoke-static {p1, p2, p3}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 503
    sget p3, Landroidx/media3/ui/R$drawable;->exo_legacy_controls_repeat_one:I

    .line 504
    invoke-static {p1, p2, p3}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 505
    sget p3, Landroidx/media3/ui/R$drawable;->exo_legacy_controls_repeat_all:I

    .line 506
    invoke-static {p1, p2, p3}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 507
    sget p3, Landroidx/media3/ui/R$drawable;->exo_legacy_controls_shuffle_on:I

    .line 508
    invoke-static {p1, p2, p3}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 509
    sget p3, Landroidx/media3/ui/R$drawable;->exo_legacy_controls_shuffle_off:I

    .line 510
    invoke-static {p1, p2, p3}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 511
    sget p1, Landroidx/media3/ui/R$string;->exo_controls_repeat_off_description:I

    .line 512
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    .line 513
    sget p1, Landroidx/media3/ui/R$string;->exo_controls_repeat_one_description:I

    .line 514
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    .line 515
    sget p1, Landroidx/media3/ui/R$string;->exo_controls_repeat_all_description:I

    .line 516
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    .line 517
    sget p1, Landroidx/media3/ui/R$string;->exo_controls_shuffle_on_description:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleOnContentDescription:Ljava/lang/String;

    .line 518
    sget p1, Landroidx/media3/ui/R$string;->exo_controls_shuffle_off_description:I

    .line 519
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    iput-wide v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->currentPosition:J

    iput-wide v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->currentBufferedPosition:J

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0

    .line 249
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updatePlayPauseButton()V

    return-void
.end method

.method static synthetic access$1000(Landroidx/media3/ui/LegacyPlayerControlView;)Ljava/util/Formatter;
    .locals 0

    .line 249
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->formatter:Ljava/util/Formatter;

    return-object p0
.end method

.method static synthetic access$1100(Landroidx/media3/ui/LegacyPlayerControlView;)Landroidx/media3/common/Player;
    .locals 0

    .line 249
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    return-object p0
.end method

.method static synthetic access$1200(Landroidx/media3/ui/LegacyPlayerControlView;Landroidx/media3/common/Player;J)V
    .locals 0

    .line 249
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/ui/LegacyPlayerControlView;->seekToTimeBarPosition(Landroidx/media3/common/Player;J)V

    return-void
.end method

.method static synthetic access$1300(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 249
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->nextButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 249
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->previousButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1500(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 249
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->fastForwardButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 249
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->rewindButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 249
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->playButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 249
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->pauseButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1900(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 249
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0

    .line 249
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateProgress()V

    return-void
.end method

.method static synthetic access$2000(Landroidx/media3/ui/LegacyPlayerControlView;)I
    .locals 0

    .line 249
    iget p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleModes:I

    return p0
.end method

.method static synthetic access$2100(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 249
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0

    .line 249
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateRepeatModeButton()V

    return-void
.end method

.method static synthetic access$400(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0

    .line 249
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateShuffleButton()V

    return-void
.end method

.method static synthetic access$500(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0

    .line 249
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateNavigation()V

    return-void
.end method

.method static synthetic access$600(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0

    .line 249
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateTimeline()V

    return-void
.end method

.method static synthetic access$702(Landroidx/media3/ui/LegacyPlayerControlView;Z)Z
    .locals 0

    .line 249
    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->scrubbing:Z

    return p1
.end method

.method static synthetic access$800(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/widget/TextView;
    .locals 0

    .line 249
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->positionView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Landroidx/media3/ui/LegacyPlayerControlView;)Ljava/lang/StringBuilder;
    .locals 0

    .line 249
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private static canShowMultiWindowTimeBar(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline$Window;)Z
    .locals 7

    .line 1244
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    .line 1247
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1249
    invoke-virtual {p0, v1, p1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v3

    iget-wide v3, v3, Landroidx/media3/common/Timeline$Window;->durationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static getRepeatToggleModes(Landroid/content/res/TypedArray;I)I
    .locals 1

    .line 1259
    sget v0, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_repeat_toggle_modes:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method private hideAfterTimeout()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAction:Ljava/lang/Runnable;

    .line 817
    invoke-virtual {p0, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showTimeoutMs:I

    if-lez v0, :cond_0

    .line 819
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showTimeoutMs:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAtMs:J

    iget-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAction:Ljava/lang/Runnable;

    int-to-long v1, v2

    .line 821
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/ui/LegacyPlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAtMs:J

    :cond_1
    :goto_0
    return-void
.end method

.method private static isHandledMediaKey(I)Z
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59

    if-eq p0, v0, :cond_1

    const/16 v0, 0x55

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x57

    if-eq p0, v0, :cond_1

    const/16 v0, 0x58

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private requestPlayPauseAccessibilityFocus()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    .line 1092
    invoke-static {v0}, Landroidx/media3/common/util/Util;->shouldShowPlayButton(Landroidx/media3/common/Player;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->playButton:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1094
    invoke-virtual {v2, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1096
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private requestPlayPauseFocus()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    .line 1083
    invoke-static {v0}, Landroidx/media3/common/util/Util;->shouldShowPlayButton(Landroidx/media3/common/Player;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->playButton:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1085
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1087
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private seekTo(Landroidx/media3/common/Player;IJ)V
    .locals 0

    .line 1135
    invoke-interface {p1, p2, p3, p4}, Landroidx/media3/common/Player;->seekTo(IJ)V

    return-void
.end method

.method private seekToTimeBarPosition(Landroidx/media3/common/Player;J)V
    .locals 6

    .line 1111
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->multiWindowTimeBar:Z

    if-eqz v1, :cond_2

    .line 1112
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1113
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    .line 1116
    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v3

    cmp-long v5, p2, v3

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_1

    move-wide p2, v3

    goto :goto_1

    :cond_1
    sub-long/2addr p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1128
    :cond_2
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v2

    .line 1130
    :goto_1
    invoke-direct {p0, p1, v2, p2, p3}, Landroidx/media3/ui/LegacyPlayerControlView;->seekTo(Landroidx/media3/common/Player;IJ)V

    .line 1131
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateProgress()V

    return-void
.end method

.method private updateAll()V
    .locals 0

    .line 829
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updatePlayPauseButton()V

    .line 830
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateNavigation()V

    .line 831
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateRepeatModeButton()V

    .line 832
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateShuffleButton()V

    .line 833
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateTimeline()V

    return-void
.end method

.method private updateButton(ZZLandroid/view/View;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 1104
    :cond_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_1

    iget p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->buttonAlphaEnabled:F

    goto :goto_0

    :cond_1
    iget p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->buttonAlphaDisabled:F

    .line 1105
    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    .line 1106
    :goto_1
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateNavigation()V
    .locals 7

    .line 868
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    .line 879
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    const/4 v2, 0x7

    .line 880
    invoke-interface {v0, v2}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    const/16 v3, 0xb

    .line 881
    invoke-interface {v0, v3}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v3

    const/16 v4, 0xc

    .line 882
    invoke-interface {v0, v4}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v4

    const/16 v5, 0x9

    .line 883
    invoke-interface {v0, v5}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move v0, v1

    move v2, v0

    move v3, v2

    move v4, v3

    :goto_0
    iget-boolean v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showPreviousButton:Z

    iget-object v6, p0, Landroidx/media3/ui/LegacyPlayerControlView;->previousButton:Landroid/view/View;

    .line 886
    invoke-direct {p0, v5, v2, v6}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    iget-boolean v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showRewindButton:Z

    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->rewindButton:Landroid/view/View;

    .line 887
    invoke-direct {p0, v2, v3, v5}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    iget-boolean v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showFastForwardButton:Z

    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->fastForwardButton:Landroid/view/View;

    .line 888
    invoke-direct {p0, v2, v4, v3}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    iget-boolean v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showNextButton:Z

    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->nextButton:Landroid/view/View;

    .line 889
    invoke-direct {p0, v2, v0, v3}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    if-eqz v0, :cond_2

    .line 891
    invoke-interface {v0, v1}, Landroidx/media3/ui/TimeBar;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updatePlayPauseButton()V
    .locals 9

    .line 837
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    .line 842
    invoke-static {v0}, Landroidx/media3/common/util/Util;->shouldShowPlayButton(Landroidx/media3/common/Player;)Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->playButton:Landroid/view/View;

    const/16 v2, 0x8

    const/16 v3, 0x15

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    if-nez v0, :cond_1

    .line 844
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v5

    .line 846
    :goto_0
    sget v6, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-ge v6, v3, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    iget-object v6, p0, Landroidx/media3/ui/LegacyPlayerControlView;->playButton:Landroid/view/View;

    .line 848
    invoke-static {v6}, Landroidx/media3/ui/LegacyPlayerControlView$Api21;->isAccessibilityFocused(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v5

    :goto_1
    iget-object v7, p0, Landroidx/media3/ui/LegacyPlayerControlView;->playButton:Landroid/view/View;

    if-eqz v0, :cond_4

    move v8, v5

    goto :goto_2

    :cond_4
    move v8, v2

    .line 849
    :goto_2
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    move v1, v5

    move v6, v1

    :goto_3
    iget-object v7, p0, Landroidx/media3/ui/LegacyPlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz v7, :cond_a

    if-eqz v0, :cond_6

    .line 852
    invoke-virtual {v7}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v4

    goto :goto_4

    :cond_6
    move v7, v5

    :goto_4
    or-int/2addr v1, v7

    .line 854
    sget v7, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-ge v7, v3, :cond_7

    move v4, v1

    goto :goto_5

    :cond_7
    if-eqz v0, :cond_8

    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->pauseButton:Landroid/view/View;

    .line 856
    invoke-static {v3}, Landroidx/media3/ui/LegacyPlayerControlView$Api21;->isAccessibilityFocused(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    move v4, v5

    :goto_5
    or-int/2addr v6, v4

    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    move v2, v5

    .line 857
    :goto_6
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    if-eqz v1, :cond_b

    .line 860
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->requestPlayPauseFocus()V

    :cond_b
    if-eqz v6, :cond_c

    .line 863
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->requestPlayPauseAccessibilityFocus()V

    :cond_c
    :goto_7
    return-void
.end method

.method private updateProgress()V
    .locals 12

    .line 1029
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->currentWindowOffset:J

    .line 1037
    invoke-interface {v0}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-wide v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->currentWindowOffset:J

    .line 1038
    invoke-interface {v0}, Landroidx/media3/common/Player;->getContentBufferedPosition()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    iget-wide v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->currentPosition:J

    cmp-long v5, v1, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    iget-wide v8, p0, Landroidx/media3/ui/LegacyPlayerControlView;->currentBufferedPosition:J

    cmp-long v8, v3, v8

    if-eqz v8, :cond_3

    move v6, v7

    :cond_3
    iput-wide v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->currentPosition:J

    iput-wide v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->currentBufferedPosition:J

    iget-object v8, p0, Landroidx/media3/ui/LegacyPlayerControlView;->positionView:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    iget-boolean v9, p0, Landroidx/media3/ui/LegacyPlayerControlView;->scrubbing:Z

    if-nez v9, :cond_4

    if-eqz v5, :cond_4

    iget-object v9, p0, Landroidx/media3/ui/LegacyPlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v10, p0, Landroidx/media3/ui/LegacyPlayerControlView;->formatter:Ljava/util/Formatter;

    .line 1048
    invoke-static {v9, v10, v1, v2}, Landroidx/media3/common/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v8, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    if-eqz v8, :cond_5

    .line 1051
    invoke-interface {v8, v1, v2}, Landroidx/media3/ui/TimeBar;->setPosition(J)V

    iget-object v8, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    .line 1052
    invoke-interface {v8, v3, v4}, Landroidx/media3/ui/TimeBar;->setBufferedPosition(J)V

    :cond_5
    iget-object v8, p0, Landroidx/media3/ui/LegacyPlayerControlView;->progressUpdateListener:Landroidx/media3/ui/LegacyPlayerControlView$ProgressUpdateListener;

    if-eqz v8, :cond_7

    if-nez v5, :cond_6

    if-eqz v6, :cond_7

    .line 1055
    :cond_6
    invoke-interface {v8, v1, v2, v3, v4}, Landroidx/media3/ui/LegacyPlayerControlView$ProgressUpdateListener;->onProgressUpdate(JJ)V

    :cond_7
    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    .line 1059
    invoke-virtual {p0, v3}, Landroidx/media3/ui/LegacyPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-nez v0, :cond_8

    move v3, v7

    goto :goto_2

    .line 1060
    :cond_8
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v3

    :goto_2
    const-wide/16 v4, 0x3e8

    if-eqz v0, :cond_b

    .line 1061
    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    if-eqz v3, :cond_9

    .line 1063
    invoke-interface {v3}, Landroidx/media3/ui/TimeBar;->getPreferredUpdateDelay()J

    move-result-wide v6

    goto :goto_3

    :cond_9
    move-wide v6, v4

    .line 1066
    :goto_3
    rem-long/2addr v1, v4

    sub-long v1, v4, v1

    .line 1067
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 1070
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_a

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v4, v1

    :cond_a
    move-wide v6, v4

    iget v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBarMinUpdateIntervalMs:I

    int-to-long v8, v0

    const-wide/16 v10, 0x3e8

    .line 1075
    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    .line 1076
    invoke-virtual {p0, v2, v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_b
    const/4 v0, 0x4

    if-eq v3, v0, :cond_c

    if-eq v3, v7, :cond_c

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    .line 1078
    invoke-virtual {p0, v0, v4, v5}, Landroidx/media3/ui/LegacyPlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    :goto_4
    return-void
.end method

.method private updateRepeatModeButton()V
    .locals 4

    .line 896
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleModes:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 901
    invoke-direct {p0, v2, v2, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 907
    invoke-direct {p0, v3, v2, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 908
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    .line 909
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 913
    :cond_2
    invoke-direct {p0, v3, v3, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 914
    invoke-interface {v1}, Landroidx/media3/common/Player;->getRepeatMode()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 924
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    .line 925
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 920
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    .line 921
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 916
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    .line 917
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    .line 930
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private updateShuffleButton()V
    .locals 4

    .line 934
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    iget-boolean v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showShuffleButton:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 940
    invoke-direct {p0, v3, v3, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 942
    invoke-direct {p0, v2, v3, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 943
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    .line 944
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 946
    :cond_2
    invoke-direct {p0, v2, v2, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    .line 948
    invoke-interface {v1}, Landroidx/media3/common/Player;->getShuffleModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 947
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    .line 950
    invoke-interface {v1}, Landroidx/media3/common/Player;->getShuffleModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleOnContentDescription:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    .line 949
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateTimeline()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, v0, Landroidx/media3/ui/LegacyPlayerControlView;->showMultiWindowTimeBar:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 962
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v2

    iget-object v5, v0, Landroidx/media3/ui/LegacyPlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {v2, v5}, Landroidx/media3/ui/LegacyPlayerControlView;->canShowMultiWindowTimeBar(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline$Window;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Landroidx/media3/ui/LegacyPlayerControlView;->multiWindowTimeBar:Z

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Landroidx/media3/ui/LegacyPlayerControlView;->currentWindowOffset:J

    .line 966
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v2

    .line 967
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    .line 968
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    iget-boolean v7, v0, Landroidx/media3/ui/LegacyPlayerControlView;->multiWindowTimeBar:Z

    if-eqz v7, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    move v8, v1

    :goto_1
    if-eqz v7, :cond_3

    .line 970
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v7

    sub-int/2addr v7, v4

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    move-wide v9, v5

    const/4 v11, 0x0

    :goto_3
    if-gt v8, v7, :cond_d

    if-ne v8, v1, :cond_4

    .line 973
    invoke-static {v9, v10}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v12

    iput-wide v12, v0, Landroidx/media3/ui/LegacyPlayerControlView;->currentWindowOffset:J

    :cond_4
    iget-object v12, v0, Landroidx/media3/ui/LegacyPlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    .line 975
    invoke-virtual {v2, v8, v12}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    iget-object v12, v0, Landroidx/media3/ui/LegacyPlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    .line 976
    iget-wide v12, v12, Landroidx/media3/common/Timeline$Window;->durationUs:J

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v12, v12, v14

    if-nez v12, :cond_5

    iget-boolean v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->multiWindowTimeBar:Z

    xor-int/2addr v1, v4

    .line 977
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    goto/16 :goto_8

    :cond_5
    iget-object v12, v0, Landroidx/media3/ui/LegacyPlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    .line 980
    iget v12, v12, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    :goto_4
    iget-object v13, v0, Landroidx/media3/ui/LegacyPlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    iget v13, v13, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-gt v12, v13, :cond_c

    iget-object v13, v0, Landroidx/media3/ui/LegacyPlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    .line 981
    invoke-virtual {v2, v12, v13}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v13, v0, Landroidx/media3/ui/LegacyPlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    .line 982
    invoke-virtual {v13}, Landroidx/media3/common/Timeline$Period;->getRemovedAdGroupCount()I

    move-result v13

    iget-object v4, v0, Landroidx/media3/ui/LegacyPlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    .line 983
    invoke-virtual {v4}, Landroidx/media3/common/Timeline$Period;->getAdGroupCount()I

    move-result v4

    :goto_5
    if-ge v13, v4, :cond_b

    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    .line 985
    invoke-virtual {v3, v13}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v16

    const-wide/high16 v18, -0x8000000000000000L

    cmp-long v3, v16, v18

    if-nez v3, :cond_7

    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    .line 987
    iget-wide v5, v3, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long v3, v5, v14

    if-nez v3, :cond_6

    goto :goto_7

    :cond_6
    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    .line 991
    iget-wide v5, v3, Landroidx/media3/common/Timeline$Period;->durationUs:J

    move-wide/from16 v16, v5

    :cond_7
    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    .line 993
    invoke-virtual {v3}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v5

    add-long v16, v16, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v16, v5

    if-ltz v3, :cond_a

    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->adGroupTimesMs:[J

    .line 995
    array-length v5, v3

    if-ne v11, v5, :cond_9

    .line 996
    array-length v5, v3

    if-nez v5, :cond_8

    const/4 v5, 0x1

    goto :goto_6

    :cond_8
    array-length v5, v3

    mul-int/lit8 v5, v5, 0x2

    .line 997
    :goto_6
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->adGroupTimesMs:[J

    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->playedAdGroups:[Z

    .line 998
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->playedAdGroups:[Z

    :cond_9
    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->adGroupTimesMs:[J

    add-long v16, v9, v16

    .line 1000
    invoke-static/range {v16 .. v17}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v5

    aput-wide v5, v3, v11

    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->playedAdGroups:[Z

    iget-object v5, v0, Landroidx/media3/ui/LegacyPlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    .line 1001
    invoke-virtual {v5, v13}, Landroidx/media3/common/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v5

    aput-boolean v5, v3, v11

    add-int/lit8 v11, v11, 0x1

    :cond_a
    :goto_7
    add-int/lit8 v13, v13, 0x1

    const-wide/16 v5, 0x0

    goto :goto_5

    :cond_b
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    goto :goto_4

    :cond_c
    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    .line 1006
    iget-wide v3, v3, Landroidx/media3/common/Timeline$Window;->durationUs:J

    add-long/2addr v9, v3

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    goto/16 :goto_3

    :cond_d
    :goto_8
    move-wide v5, v9

    goto :goto_9

    :cond_e
    const-wide/16 v5, 0x0

    const/4 v11, 0x0

    .line 1009
    :goto_9
    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v1

    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->durationView:Landroid/widget/TextView;

    if-eqz v3, :cond_f

    iget-object v4, v0, Landroidx/media3/ui/LegacyPlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroidx/media3/ui/LegacyPlayerControlView;->formatter:Ljava/util/Formatter;

    .line 1011
    invoke-static {v4, v5, v1, v2}, Landroidx/media3/common/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    if-eqz v3, :cond_11

    .line 1014
    invoke-interface {v3, v1, v2}, Landroidx/media3/ui/TimeBar;->setDuration(J)V

    iget-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->extraAdGroupTimesMs:[J

    .line 1015
    array-length v1, v1

    add-int v2, v11, v1

    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->adGroupTimesMs:[J

    .line 1017
    array-length v4, v3

    if-le v2, v4, :cond_10

    .line 1018
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->adGroupTimesMs:[J

    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->playedAdGroups:[Z

    .line 1019
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->playedAdGroups:[Z

    :cond_10
    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->extraAdGroupTimesMs:[J

    iget-object v4, v0, Landroidx/media3/ui/LegacyPlayerControlView;->adGroupTimesMs:[J

    const/4 v5, 0x0

    .line 1021
    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->extraPlayedAdGroups:[Z

    iget-object v4, v0, Landroidx/media3/ui/LegacyPlayerControlView;->playedAdGroups:[Z

    .line 1022
    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->adGroupTimesMs:[J

    iget-object v4, v0, Landroidx/media3/ui/LegacyPlayerControlView;->playedAdGroups:[Z

    .line 1023
    invoke-interface {v1, v3, v4, v2}, Landroidx/media3/ui/TimeBar;->setAdGroupTimesMs([J[ZI)V

    .line 1025
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateProgress()V

    return-void
.end method


# virtual methods
.method public addVisibilityListener(Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;)V
    .locals 1

    .line 601
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 602
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1175
    invoke-virtual {p0, p1}, Landroidx/media3/ui/LegacyPlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1186
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    if-eqz v1, :cond_9

    .line 1188
    invoke-static {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->isHandledMediaKey(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1191
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_8

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_1

    .line 1193
    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    .line 1194
    invoke-interface {v1}, Landroidx/media3/common/Player;->seekForward()V

    goto :goto_0

    :cond_1
    const/16 v2, 0x59

    if-ne v0, v2, :cond_2

    .line 1197
    invoke-interface {v1}, Landroidx/media3/common/Player;->seekBack()V

    goto :goto_0

    .line 1198
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_8

    const/16 p1, 0x4f

    if-eq v0, p1, :cond_7

    const/16 p1, 0x55

    if-eq v0, p1, :cond_7

    const/16 p1, 0x57

    if-eq v0, p1, :cond_6

    const/16 p1, 0x58

    if-eq v0, p1, :cond_5

    const/16 p1, 0x7e

    if-eq v0, p1, :cond_4

    const/16 p1, 0x7f

    if-eq v0, p1, :cond_3

    goto :goto_0

    .line 1208
    :cond_3
    invoke-static {v1}, Landroidx/media3/common/util/Util;->handlePauseButtonAction(Landroidx/media3/common/Player;)Z

    goto :goto_0

    .line 1205
    :cond_4
    invoke-static {v1}, Landroidx/media3/common/util/Util;->handlePlayButtonAction(Landroidx/media3/common/Player;)Z

    goto :goto_0

    .line 1214
    :cond_5
    invoke-interface {v1}, Landroidx/media3/common/Player;->seekToPrevious()V

    goto :goto_0

    .line 1211
    :cond_6
    invoke-interface {v1}, Landroidx/media3/common/Player;->seekToNext()V

    goto :goto_0

    .line 1202
    :cond_7
    invoke-static {v1}, Landroidx/media3/common/util/Util;->handlePlayPauseButtonAction(Landroidx/media3/common/Player;)Z

    :cond_8
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_9
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAction:Ljava/lang/Runnable;

    .line 1166
    invoke-virtual {p0, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1167
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1168
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->hideAfterTimeout()V

    .line 1170
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getPlayer()Landroidx/media3/common/Player;
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    iget v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleModes:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showShuffleButton:Z

    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    iget v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showTimeoutMs:I

    return v0
.end method

.method public getShowVrButton()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->vrButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 738
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hide()V
    .locals 3

    .line 800
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 801
    invoke-virtual {p0, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->setVisibility(I)V

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 802
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;

    .line 803
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;->onVisibilityChange(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    .line 805
    invoke-virtual {p0, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAction:Ljava/lang/Runnable;

    .line 806
    invoke-virtual {p0, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAtMs:J

    :cond_1
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 813
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1140
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->isAttachedToWindow:Z

    iget-wide v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAtMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 1143
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1145
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->hide()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAction:Ljava/lang/Runnable;

    .line 1147
    invoke-virtual {p0, v2, v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1149
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1150
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->hideAfterTimeout()V

    .line 1152
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateAll()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1157
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->isAttachedToWindow:Z

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    .line 1159
    invoke-virtual {p0, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAction:Ljava/lang/Runnable;

    .line 1160
    invoke-virtual {p0, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeVisibilityListener(Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 611
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [J

    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->extraAdGroupTimesMs:[J

    new-array p1, v0, [Z

    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->extraPlayedAdGroups:[Z

    goto :goto_0

    .line 587
    :cond_0
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Z

    .line 588
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->extraAdGroupTimesMs:[J

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->extraPlayedAdGroups:[Z

    .line 592
    :goto_0
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateTimeline()V

    return-void
.end method

.method public setPlayer(Landroidx/media3/common/Player;)V
    .locals 4

    .line 542
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    if-eqz p1, :cond_2

    .line 544
    invoke-interface {p1}, Landroidx/media3/common/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 543
    :cond_2
    :goto_1
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->componentListener:Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;

    .line 549
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->removeListener(Landroidx/media3/common/Player$Listener;)V

    :cond_4
    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    if-eqz p1, :cond_5

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->componentListener:Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;

    .line 553
    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 555
    :cond_5
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateAll()V

    return-void
.end method

.method public setProgressUpdateListener(Landroidx/media3/ui/LegacyPlayerControlView$ProgressUpdateListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->progressUpdateListener:Landroidx/media3/ui/LegacyPlayerControlView$ProgressUpdateListener;

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 3

    iput p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleModes:I

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_2

    .line 706
    invoke-interface {v0}, Landroidx/media3/common/Player;->getRepeatMode()I

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    const/4 v0, 0x0

    .line 709
    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->setRepeatMode(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    .line 712
    invoke-interface {p1, v2}, Landroidx/media3/common/Player;->setRepeatMode(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    if-ne v0, v2, :cond_2

    iget-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    .line 715
    invoke-interface {p1, v1}, Landroidx/media3/common/Player;->setRepeatMode(I)V

    .line 718
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateRepeatModeButton()V

    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showFastForwardButton:Z

    .line 640
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showMultiWindowTimeBar:Z

    .line 568
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateTimeline()V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showNextButton:Z

    .line 660
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showPreviousButton:Z

    .line 650
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showRewindButton:Z

    .line 630
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showShuffleButton:Z

    .line 733
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateShuffleButton()V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showTimeoutMs:I

    .line 683
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 685
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->hideAfterTimeout()V

    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->vrButton:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 748
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x3e8

    .line 777
    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result p1

    iput p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBarMinUpdateIntervalMs:I

    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->vrButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 759
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->getShowVrButton()Z

    move-result v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->vrButton:Landroid/view/View;

    invoke-direct {p0, v0, p1, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 3

    .line 785
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 786
    invoke-virtual {p0, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->setVisibility(I)V

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 787
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;

    .line 788
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;->onVisibilityChange(I)V

    goto :goto_0

    .line 790
    :cond_0
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateAll()V

    .line 791
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->requestPlayPauseFocus()V

    .line 792
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->requestPlayPauseAccessibilityFocus()V

    .line 795
    :cond_1
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->hideAfterTimeout()V

    return-void
.end method
