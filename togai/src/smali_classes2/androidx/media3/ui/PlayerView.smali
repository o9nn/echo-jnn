.class public Landroidx/media3/ui/PlayerView;
.super Landroid/widget/FrameLayout;
.source "PlayerView.java"

# interfaces
.implements Landroidx/media3/common/AdViewProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;,
        Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;,
        Landroidx/media3/ui/PlayerView$ComponentListener;,
        Landroidx/media3/ui/PlayerView$ShowBuffering;,
        Landroidx/media3/ui/PlayerView$ArtworkDisplayMode;
    }
.end annotation


# static fields
.field public static final ARTWORK_DISPLAY_MODE_FILL:I = 0x2

.field public static final ARTWORK_DISPLAY_MODE_FIT:I = 0x1

.field public static final ARTWORK_DISPLAY_MODE_OFF:I = 0x0

.field public static final SHOW_BUFFERING_ALWAYS:I = 0x2

.field public static final SHOW_BUFFERING_NEVER:I = 0x0

.field public static final SHOW_BUFFERING_WHEN_PLAYING:I = 0x1

.field private static final SURFACE_TYPE_NONE:I = 0x0

.field private static final SURFACE_TYPE_SPHERICAL_GL_SURFACE_VIEW:I = 0x3

.field private static final SURFACE_TYPE_SURFACE_VIEW:I = 0x1

.field private static final SURFACE_TYPE_TEXTURE_VIEW:I = 0x2

.field private static final SURFACE_TYPE_VIDEO_DECODER_GL_SURFACE_VIEW:I = 0x4


# instance fields
.field private final adOverlayFrameLayout:Landroid/widget/FrameLayout;

.field private artworkDisplayMode:I

.field private final artworkView:Landroid/widget/ImageView;

.field private final bufferingView:Landroid/view/View;

.field private final componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

.field private final contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

.field private final controller:Landroidx/media3/ui/PlayerControlView;

.field private controllerAutoShow:Z

.field private controllerHideDuringAds:Z

.field private controllerHideOnTouch:Z

.field private controllerShowTimeoutMs:I

.field private controllerVisibilityListener:Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;

.field private customErrorMessage:Ljava/lang/CharSequence;

.field private defaultArtwork:Landroid/graphics/drawable/Drawable;

.field private errorMessageProvider:Landroidx/media3/common/ErrorMessageProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/ErrorMessageProvider<",
            "-",
            "Landroidx/media3/common/PlaybackException;",
            ">;"
        }
    .end annotation
.end field

.field private final errorMessageView:Landroid/widget/TextView;

.field private fullscreenButtonClickListener:Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;

.field private isTouching:Z

.field private keepContentOnPlayerReset:Z

.field private legacyControllerVisibilityListener:Landroidx/media3/ui/PlayerControlView$VisibilityListener;

.field private final overlayFrameLayout:Landroid/widget/FrameLayout;

.field private player:Landroidx/media3/common/Player;

.field private showBuffering:I

.field private final shutterView:Landroid/view/View;

.field private final subtitleView:Landroidx/media3/ui/SubtitleView;

.field private final surfaceView:Landroid/view/View;

.field private final surfaceViewIgnoresVideoAspectRatio:Z

.field private textureViewRotation:I

.field private useController:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 295
    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 299
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 304
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 306
    new-instance v3, Landroidx/media3/ui/PlayerView$ComponentListener;

    invoke-direct {v3, v1}, Landroidx/media3/ui/PlayerView$ComponentListener;-><init>(Landroidx/media3/ui/PlayerView;)V

    iput-object v3, v1, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    .line 308
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/ui/PlayerView;->isInEditMode()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    iput-boolean v6, v1, Landroidx/media3/ui/PlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 320
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 321
    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 322
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroidx/media3/ui/PlayerView;->configureEditModeLogoV23(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroidx/media3/ui/PlayerView;->configureEditModeLogo(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    .line 326
    :goto_0
    invoke-virtual {v1, v2}, Landroidx/media3/ui/PlayerView;->addView(Landroid/view/View;)V

    return-void

    .line 332
    :cond_1
    sget v4, Landroidx/media3/ui/R$layout;->exo_player_view:I

    const/4 v7, 0x1

    const/16 v8, 0x1388

    if-eqz v2, :cond_2

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    sget-object v10, Landroidx/media3/ui/R$styleable;->PlayerView:[I

    move/from16 v11, p3

    .line 348
    invoke-virtual {v9, v2, v10, v11, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 351
    :try_start_0
    sget v10, Landroidx/media3/ui/R$styleable;->PlayerView_shutter_background_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    .line 352
    sget v11, Landroidx/media3/ui/R$styleable;->PlayerView_shutter_background_color:I

    invoke-virtual {v9, v11, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 353
    sget v12, Landroidx/media3/ui/R$styleable;->PlayerView_player_layout_id:I

    invoke-virtual {v9, v12, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 354
    sget v12, Landroidx/media3/ui/R$styleable;->PlayerView_use_artwork:I

    invoke-virtual {v9, v12, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 355
    sget v13, Landroidx/media3/ui/R$styleable;->PlayerView_artwork_display_mode:I

    .line 356
    invoke-virtual {v9, v13, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 357
    sget v14, Landroidx/media3/ui/R$styleable;->PlayerView_default_artwork:I

    .line 358
    invoke-virtual {v9, v14, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 359
    sget v15, Landroidx/media3/ui/R$styleable;->PlayerView_use_controller:I

    invoke-virtual {v9, v15, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 360
    sget v5, Landroidx/media3/ui/R$styleable;->PlayerView_surface_type:I

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 361
    sget v7, Landroidx/media3/ui/R$styleable;->PlayerView_resize_mode:I

    invoke-virtual {v9, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 362
    sget v6, Landroidx/media3/ui/R$styleable;->PlayerView_show_timeout:I

    .line 363
    invoke-virtual {v9, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 364
    sget v6, Landroidx/media3/ui/R$styleable;->PlayerView_hide_on_touch:I

    move/from16 p3, v4

    const/4 v4, 0x1

    .line 365
    invoke-virtual {v9, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    move/from16 v16, v5

    .line 366
    sget v5, Landroidx/media3/ui/R$styleable;->PlayerView_auto_show:I

    invoke-virtual {v9, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 367
    sget v4, Landroidx/media3/ui/R$styleable;->PlayerView_show_buffering:I

    move/from16 v17, v5

    const/4 v5, 0x0

    invoke-virtual {v9, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 368
    sget v5, Landroidx/media3/ui/R$styleable;->PlayerView_keep_content_on_player_reset:I

    move/from16 v18, v4

    iget-boolean v4, v1, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    .line 369
    invoke-virtual {v9, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    .line 371
    sget v4, Landroidx/media3/ui/R$styleable;->PlayerView_hide_during_ads:I

    const/4 v5, 0x1

    .line 372
    invoke-virtual {v9, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v5, v17

    move/from16 v9, v18

    move/from16 v17, v4

    move/from16 v4, p3

    move/from16 p3, v8

    move/from16 v8, v16

    move/from16 v16, v15

    move v15, v13

    move v13, v11

    move v11, v14

    move v14, v12

    move v12, v10

    move v10, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 375
    throw v0

    :cond_2
    move/from16 p3, v8

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    .line 378
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v7, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v4, 0x40000

    .line 379
    invoke-virtual {v1, v4}, Landroidx/media3/ui/PlayerView;->setDescendantFocusability(I)V

    .line 382
    sget v4, Landroidx/media3/ui/R$id;->exo_content_frame:I

    invoke-virtual {v1, v4}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/media3/ui/AspectRatioFrameLayout;

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz v4, :cond_3

    .line 384
    invoke-static {v4, v10}, Landroidx/media3/ui/PlayerView;->setResizeModeRaw(Landroidx/media3/ui/AspectRatioFrameLayout;I)V

    .line 388
    :cond_3
    sget v7, Landroidx/media3/ui/R$id;->exo_shutter:I

    invoke-virtual {v1, v7}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v7, :cond_4

    if-eqz v12, :cond_4

    .line 390
    invoke-virtual {v7, v13}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    if-eqz v4, :cond_8

    if-eqz v8, :cond_8

    .line 396
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v7, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v10, 0x2

    if-eq v8, v10, :cond_7

    const/4 v10, 0x3

    if-eq v8, v10, :cond_6

    const/4 v10, 0x4

    if-eq v8, v10, :cond_5

    .line 425
    new-instance v8, Landroid/view/SurfaceView;

    invoke-direct {v8, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    goto :goto_2

    :cond_5
    :try_start_1
    const-string v8, "androidx.media3.exoplayer.video.VideoDecoderGLSurfaceView"

    .line 417
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/Class;

    .line 418
    const-class v10, Landroid/content/Context;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-virtual {v8, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iput-object v8, v1, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 420
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "video_decoder_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_6
    :try_start_2
    const-string v8, "androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView"

    .line 406
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/Class;

    .line 407
    const-class v10, Landroid/content/Context;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-virtual {v8, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iput-object v8, v1, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v8, 0x1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 409
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "spherical_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 401
    :cond_7
    new-instance v8, Landroid/view/TextureView;

    invoke-direct {v8, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    :goto_2
    const/4 v8, 0x0

    :goto_3
    iget-object v10, v1, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 428
    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, v1, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 432
    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v1, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    const/4 v10, 0x0

    .line 433
    invoke-virtual {v7, v10}, Landroid/view/View;->setClickable(Z)V

    iget-object v7, v1, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 434
    invoke-virtual {v4, v7, v10}, Landroidx/media3/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    const/4 v8, 0x0

    :goto_4
    iput-boolean v8, v1, Landroidx/media3/ui/PlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    .line 441
    sget v4, Landroidx/media3/ui/R$id;->exo_ad_overlay:I

    invoke-virtual {v1, v4}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    .line 444
    sget v4, Landroidx/media3/ui/R$id;->exo_overlay:I

    invoke-virtual {v1, v4}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 447
    sget v4, Landroidx/media3/ui/R$id;->exo_artwork:I

    invoke-virtual {v1, v4}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v14, :cond_9

    if-eqz v15, :cond_9

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    const/4 v15, 0x0

    :goto_5
    iput v15, v1, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    if-eqz v11, :cond_a

    .line 452
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v11}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    .line 456
    :cond_a
    sget v4, Landroidx/media3/ui/R$id;->exo_subtitles:I

    invoke-virtual {v1, v4}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/media3/ui/SubtitleView;

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    if-eqz v4, :cond_b

    .line 458
    invoke-virtual {v4}, Landroidx/media3/ui/SubtitleView;->setUserDefaultStyle()V

    .line 459
    invoke-virtual {v4}, Landroidx/media3/ui/SubtitleView;->setUserDefaultTextSize()V

    .line 463
    :cond_b
    sget v4, Landroidx/media3/ui/R$id;->exo_buffering:I

    invoke-virtual {v1, v4}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    const/16 v7, 0x8

    if-eqz v4, :cond_c

    .line 465
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iput v9, v1, Landroidx/media3/ui/PlayerView;->showBuffering:I

    .line 470
    sget v4, Landroidx/media3/ui/R$id;->exo_error_message:I

    invoke-virtual {v1, v4}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v4, :cond_d

    .line 472
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    :cond_d
    sget v4, Landroidx/media3/ui/R$id;->exo_controller:I

    invoke-virtual {v1, v4}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/media3/ui/PlayerControlView;

    .line 477
    sget v7, Landroidx/media3/ui/R$id;->exo_controller_placeholder:I

    invoke-virtual {v1, v7}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v4, :cond_e

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    const/4 v8, 0x0

    goto :goto_6

    :cond_e
    if-eqz v7, :cond_f

    .line 483
    new-instance v4, Landroidx/media3/ui/PlayerControlView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v4, v0, v9, v8, v2}, Landroidx/media3/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 484
    sget v0, Landroidx/media3/ui/R$id;->exo_controller:I

    invoke-virtual {v4, v0}, Landroidx/media3/ui/PlayerControlView;->setId(I)V

    .line 485
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/media3/ui/PlayerControlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 487
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 488
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 489
    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_6

    :cond_f
    const/4 v0, 0x0

    const/4 v8, 0x0

    iput-object v0, v1, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    :goto_6
    iget-object v0, v1, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz v0, :cond_10

    move/from16 v2, p3

    goto :goto_7

    :cond_10
    move v2, v8

    :goto_7
    iput v2, v1, Landroidx/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    iput-boolean v6, v1, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    iput-boolean v5, v1, Landroidx/media3/ui/PlayerView;->controllerAutoShow:Z

    move/from16 v4, v17

    iput-boolean v4, v1, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz v16, :cond_11

    if-eqz v0, :cond_11

    const/4 v6, 0x1

    goto :goto_8

    :cond_11
    move v6, v8

    :goto_8
    iput-boolean v6, v1, Landroidx/media3/ui/PlayerView;->useController:Z

    if-eqz v0, :cond_12

    .line 499
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->hideImmediately()V

    iget-object v0, v1, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 500
    invoke-virtual {v0, v3}, Landroidx/media3/ui/PlayerControlView;->addVisibilityListener(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V

    :cond_12
    if-eqz v16, :cond_13

    const/4 v0, 0x1

    .line 503
    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerView;->setClickable(Z)V

    .line 505
    :cond_13
    invoke-direct/range {p0 .. p0}, Landroidx/media3/ui/PlayerView;->updateContentDescription()V

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/ui/PlayerView;)Landroidx/media3/ui/SubtitleView;
    .locals 0

    .line 177
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/media3/ui/PlayerView;)Landroidx/media3/common/Player;
    .locals 0

    .line 177
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    return-object p0
.end method

.method static synthetic access$1000(Landroidx/media3/ui/PlayerView;)I
    .locals 0

    .line 177
    iget p0, p0, Landroidx/media3/ui/PlayerView;->textureViewRotation:I

    return p0
.end method

.method static synthetic access$1100(Landroid/view/TextureView;I)V
    .locals 0

    .line 177
    invoke-static {p0, p1}, Landroidx/media3/ui/PlayerView;->applyTextureViewRotation(Landroid/view/TextureView;I)V

    return-void
.end method

.method static synthetic access$1200(Landroidx/media3/ui/PlayerView;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->toggleControllerVisibility()V

    return-void
.end method

.method static synthetic access$1300(Landroidx/media3/ui/PlayerView;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateContentDescription()V

    return-void
.end method

.method static synthetic access$1400(Landroidx/media3/ui/PlayerView;)Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;
    .locals 0

    .line 177
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controllerVisibilityListener:Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;

    return-object p0
.end method

.method static synthetic access$1500(Landroidx/media3/ui/PlayerView;)Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;
    .locals 0

    .line 177
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->fullscreenButtonClickListener:Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/media3/ui/PlayerView;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateAspectRatio()V

    return-void
.end method

.method static synthetic access$300(Landroidx/media3/ui/PlayerView;)Landroid/view/View;
    .locals 0

    .line 177
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media3/ui/PlayerView;Z)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    return-void
.end method

.method static synthetic access$500(Landroidx/media3/ui/PlayerView;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateBuffering()V

    return-void
.end method

.method static synthetic access$600(Landroidx/media3/ui/PlayerView;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateErrorMessage()V

    return-void
.end method

.method static synthetic access$700(Landroidx/media3/ui/PlayerView;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateControllerVisibility()V

    return-void
.end method

.method static synthetic access$800(Landroidx/media3/ui/PlayerView;)Z
    .locals 0

    .line 177
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->isPlayingAd()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Landroidx/media3/ui/PlayerView;)Z
    .locals 0

    .line 177
    iget-boolean p0, p0, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    return p0
.end method

.method private static applyTextureViewRotation(Landroid/view/TextureView;I)V
    .locals 6

    .line 1544
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1545
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1546
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    div-float v4, v2, v4

    int-to-float p1, p1

    .line 1550
    invoke-virtual {v0, p1, v5, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1553
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1554
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 1555
    invoke-virtual {v0, v3, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1557
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v1, p1

    .line 1558
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr v2, p1

    .line 1556
    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1562
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private closeShutter()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1438
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private static configureEditModeLogo(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .locals 1

    .line 1533
    sget v0, Landroidx/media3/ui/R$drawable;->exo_edit_mode_logo:I

    invoke-static {p0, p1, v0}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1534
    sget p0, Landroidx/media3/ui/R$color;->exo_edit_mode_background_color:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method private static configureEditModeLogoV23(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .locals 1

    .line 1528
    sget v0, Landroidx/media3/ui/R$drawable;->exo_edit_mode_logo:I

    invoke-static {p0, p1, v0}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1529
    sget p0, Landroidx/media3/ui/R$color;->exo_edit_mode_background_color:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method private hideArtwork()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x106000d

    .line 1431
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    .line 1432
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private isDpadKey(I)Z
    .locals 1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

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

.method private isPlayingAd()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    .line 1348
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 1349
    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 1350
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeShowController(Z)V
    .locals 2

    .line 1312
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz v0, :cond_0

    return-void

    .line 1315
    :cond_0
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1317
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->getShowTimeoutMs()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1318
    :goto_0
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->shouldShowControllerIndefinitely()Z

    move-result v1

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 1320
    :cond_2
    invoke-direct {p0, v1}, Landroidx/media3/ui/PlayerView;->showController(Z)V

    :cond_3
    return-void
.end method

.method private setArtworkFromMediaMetadata(Landroidx/media3/common/Player;)Z
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "artworkView"
        }
    .end annotation

    const/16 v0, 0x12

    .line 1394
    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1397
    :cond_0
    invoke-interface {p1}, Landroidx/media3/common/Player;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object p1

    .line 1398
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    if-nez v0, :cond_1

    return v1

    .line 1401
    :cond_1
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    array-length p1, p1

    .line 1402
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1404
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1
.end method

.method private setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "artworkView"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1410
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1411
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1414
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget v3, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1416
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1417
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :cond_0
    iget-object v3, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 1419
    invoke-virtual {p0, v3, v1}, Landroidx/media3/ui/PlayerView;->onContentAspectRatioChanged(Landroidx/media3/ui/AspectRatioFrameLayout;F)V

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    .line 1420
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    .line 1421
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    .line 1422
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private static setResizeModeRaw(Landroidx/media3/ui/AspectRatioFrameLayout;I)V
    .locals 0

    .line 1539
    invoke-virtual {p0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method private shouldShowControllerIndefinitely()Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1329
    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v0

    iget-boolean v2, p0, Landroidx/media3/ui/PlayerView;->controllerAutoShow:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    const/16 v3, 0x11

    .line 1331
    invoke-interface {v2, v3}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 1332
    invoke-interface {v2}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-eq v0, v1, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 1335
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method private showController(Z)V
    .locals 1

    .line 1339
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    .line 1342
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowTimeoutMs(I)V

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1343
    invoke-virtual {p1}, Landroidx/media3/ui/PlayerControlView;->show()V

    return-void
.end method

.method public static switchTargetView(Landroidx/media3/common/Player;Landroidx/media3/ui/PlayerView;Landroidx/media3/ui/PlayerView;)V
    .locals 0

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 526
    invoke-virtual {p2, p0}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 p0, 0x0

    .line 529
    invoke-virtual {p1, p0}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    :cond_2
    return-void
.end method

.method private toggleControllerVisibility()V
    .locals 1

    .line 1300
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1303
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1304
    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1306
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->hide()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateAspectRatio()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_0

    .line 1494
    invoke-interface {v0}, Landroidx/media3/common/Player;->getVideoSize()Landroidx/media3/common/VideoSize;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    .line 1495
    :goto_0
    iget v1, v0, Landroidx/media3/common/VideoSize;->width:I

    .line 1496
    iget v2, v0, Landroidx/media3/common/VideoSize;->height:I

    .line 1497
    iget v3, v0, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    .line 1499
    iget v0, v0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    mul-float/2addr v1, v0

    int-to-float v0, v2

    div-float/2addr v1, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v4

    :goto_2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 1501
    instance-of v2, v0, Landroid/view/TextureView;

    if-eqz v2, :cond_7

    cmpl-float v2, v1, v4

    if-lez v2, :cond_4

    const/16 v2, 0x5a

    if-eq v3, v2, :cond_3

    const/16 v2, 0x10e

    if-ne v3, v2, :cond_4

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    move v1, v2

    :cond_4
    iget v2, p0, Landroidx/media3/ui/PlayerView;->textureViewRotation:I

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    .line 1510
    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_5
    iput v3, p0, Landroidx/media3/ui/PlayerView;->textureViewRotation:I

    if-eqz v3, :cond_6

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    .line 1516
    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_6
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 1518
    check-cast v0, Landroid/view/TextureView;

    iget v2, p0, Landroidx/media3/ui/PlayerView;->textureViewRotation:I

    invoke-static {v0, v2}, Landroidx/media3/ui/PlayerView;->applyTextureViewRotation(Landroid/view/TextureView;I)V

    :cond_7
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    iget-boolean v2, p0, Landroidx/media3/ui/PlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    move v4, v1

    .line 1521
    :goto_3
    invoke-virtual {p0, v0, v4}, Landroidx/media3/ui/PlayerView;->onContentAspectRatioChanged(Landroidx/media3/ui/AspectRatioFrameLayout;F)V

    return-void
.end method

.method private updateBuffering()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1446
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroidx/media3/ui/PlayerView;->showBuffering:I

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 1448
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    .line 1449
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private updateContentDescription()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 1474
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    if-eqz v0, :cond_1

    .line 1477
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/media3/ui/R$string;->exo_controls_hide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1475
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/media3/ui/PlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1481
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/media3/ui/R$string;->exo_controls_show:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1480
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1473
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/media3/ui/PlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private updateControllerVisibility()V
    .locals 1

    .line 1486
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz v0, :cond_0

    .line 1487
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->hideController()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1489
    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    :goto_0
    return-void
.end method

.method private updateErrorMessage()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1456
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 1457
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_1

    .line 1460
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->errorMessageProvider:Landroidx/media3/common/ErrorMessageProvider;

    if-eqz v1, :cond_2

    .line 1462
    invoke-interface {v1, v0}, Landroidx/media3/common/ErrorMessageProvider;->getErrorMessage(Ljava/lang/Throwable;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 1463
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 1464
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 1466
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateForCurrentTrackSelections(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_5

    const/16 v1, 0x1e

    .line 1356
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1357
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Tracks;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-nez p1, :cond_1

    .line 1367
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->closeShutter()V

    .line 1370
    :cond_1
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1373
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->hideArtwork()V

    return-void

    .line 1378
    :cond_2
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->closeShutter()V

    .line 1380
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->useArtwork()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1381
    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->setArtworkFromMediaMetadata(Landroidx/media3/common/Player;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    .line 1384
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 1389
    :cond_4
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->hideArtwork()V

    return-void

    :cond_5
    :goto_0
    iget-boolean p1, p0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-nez p1, :cond_6

    .line 1359
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->hideArtwork()V

    .line 1360
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->closeShutter()V

    :cond_6
    return-void
.end method

.method private useArtwork()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "artworkView"
        }
        result = true
    .end annotation

    iget v0, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    .line 1293
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private useController()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "controller"
        }
        result = true
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1284
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    .line 799
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 800
    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 804
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->isDpadKey(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 806
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v2}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 808
    invoke-direct {p0, v1}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    goto :goto_1

    .line 810
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 815
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 817
    invoke-direct {p0, v1}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 813
    :cond_4
    :goto_0
    invoke-direct {p0, v1}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    :goto_1
    return v1
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 831
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAdOverlayInfos()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/common/AdOverlayInfo;",
            ">;"
        }
    .end annotation

    .line 1265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 1267
    new-instance v1, Landroidx/media3/common/AdOverlayInfo;

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    const-string v4, "Transparent overlay does not impact viewability"

    invoke-direct {v1, v2, v3, v4}, Landroidx/media3/common/AdOverlayInfo;-><init>(Landroid/view/View;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz v1, :cond_1

    .line 1274
    new-instance v1, Landroidx/media3/common/AdOverlayInfo;

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/media3/common/AdOverlayInfo;-><init>(Landroid/view/View;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1276
    :cond_1
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getAdViewGroup()Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    const-string v1, "exo_ad_overlay must be present for ad playback"

    .line 1259
    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getArtworkDisplayMode()I
    .locals 1

    iget v0, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    return v0
.end method

.method public getControllerAutoShow()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->controllerAutoShow:Z

    return v0
.end method

.method public getControllerHideOnTouch()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .locals 1

    iget v0, p0, Landroidx/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPlayer()Landroidx/media3/common/Player;
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    return-object v0
.end method

.method public getResizeMode()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 626
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 627
    invoke-virtual {v0}, Landroidx/media3/ui/AspectRatioFrameLayout;->getResizeMode()I

    move-result v0

    return v0
.end method

.method public getSubtitleView()Landroidx/media3/ui/SubtitleView;
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    return-object v0
.end method

.method public getUseArtwork()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getUseController()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    return-object v0
.end method

.method public hideController()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->hide()V

    :cond_0
    return-void
.end method

.method public isControllerFullyVisible()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz v0, :cond_0

    .line 837
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onContentAspectRatioChanged(Landroidx/media3/ui/AspectRatioFrameLayout;F)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1251
    invoke-virtual {p1, p2}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 1235
    instance-of v1, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_0

    .line 1236
    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 1222
    instance-of v1, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_0

    .line 1223
    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    :cond_0
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1207
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1210
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public performClick()Z
    .locals 1

    .line 1201
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->toggleControllerVisibility()V

    .line 1202
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setArtworkDisplayMode(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 651
    :goto_1
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget v1, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    if-eq v1, p1, :cond_2

    iput p1, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    .line 654
    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_2
    return-void
.end method

.method public setAspectRatioListener(Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 1147
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 1148
    invoke-virtual {v0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatioListener(Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioListener;)V

    return-void
.end method

.method public setControllerAutoShow(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->controllerAutoShow:Z

    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 903
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    .line 905
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateContentDescription()V

    return-void
.end method

.method public setControllerOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1017
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/ui/PlayerView;->fullscreenButtonClickListener:Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1019
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V

    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 882
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Landroidx/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 884
    invoke-virtual {p1}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 886
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->showController()V

    :cond_0
    return-void
.end method

.method public setControllerVisibilityListener(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 971
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->legacyControllerVisibilityListener:Landroidx/media3/ui/PlayerControlView$VisibilityListener;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 977
    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerControlView;->removeVisibilityListener(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V

    :cond_1
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->legacyControllerVisibilityListener:Landroidx/media3/ui/PlayerControlView$VisibilityListener;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 981
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->addVisibilityListener(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V

    const/4 p1, 0x0

    .line 982
    move-object v0, p1

    check-cast v0, Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setControllerVisibilityListener(Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;)V

    :cond_2
    return-void
.end method

.method public setControllerVisibilityListener(Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;)V
    .locals 1

    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->controllerVisibilityListener:Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 954
    move-object v0, p1

    check-cast v0, Landroidx/media3/ui/PlayerControlView$VisibilityListener;

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setControllerVisibilityListener(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V

    :cond_0
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 791
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    .line 793
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateErrorMessage()V

    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 681
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_0
    return-void
.end method

.method public setErrorMessageProvider(Landroidx/media3/common/ErrorMessageProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/ErrorMessageProvider<",
            "-",
            "Landroidx/media3/common/PlaybackException;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->errorMessageProvider:Landroidx/media3/common/ErrorMessageProvider;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->errorMessageProvider:Landroidx/media3/common/ErrorMessageProvider;

    .line 779
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateErrorMessage()V

    :cond_0
    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1134
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1135
    invoke-virtual {v0, p1, p2}, Landroidx/media3/ui/PlayerControlView;->setExtraAdGroupMarkers([J[Z)V

    return-void
.end method

.method public setFullscreenButtonClickListener(Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 997
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->fullscreenButtonClickListener:Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    .line 999
    invoke-virtual {p1, v0}, Landroidx/media3/ui/PlayerControlView;->setOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V

    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    const/4 p1, 0x0

    .line 750
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_0
    return-void
.end method

.method public setPlayer(Landroidx/media3/common/Player;)V
    .locals 6

    .line 553
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

    .line 555
    invoke-interface {p1}, Landroidx/media3/common/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    .line 554
    :goto_2
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    const/16 v1, 0x1b

    if-eqz v0, :cond_5

    iget-object v4, p0, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    .line 561
    invoke-interface {v0, v4}, Landroidx/media3/common/Player;->removeListener(Landroidx/media3/common/Player$Listener;)V

    .line 562
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 563
    instance-of v5, v4, Landroid/view/TextureView;

    if-eqz v5, :cond_4

    .line 564
    check-cast v4, Landroid/view/TextureView;

    invoke-interface {v0, v4}, Landroidx/media3/common/Player;->clearVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_3

    .line 565
    :cond_4
    instance-of v5, v4, Landroid/view/SurfaceView;

    if-eqz v5, :cond_5

    .line 566
    check-cast v4, Landroid/view/SurfaceView;

    invoke-interface {v0, v4}, Landroidx/media3/common/Player;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    :cond_5
    :goto_3
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    if-eqz v0, :cond_6

    const/4 v4, 0x0

    .line 571
    invoke-virtual {v0, v4}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_6
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 574
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 575
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 577
    :cond_7
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateBuffering()V

    .line 578
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateErrorMessage()V

    .line 579
    invoke-direct {p0, v2}, Landroidx/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    if-eqz p1, :cond_d

    .line 581
    invoke-interface {p1, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 582
    instance-of v1, v0, Landroid/view/TextureView;

    if-eqz v1, :cond_8

    .line 583
    check-cast v0, Landroid/view/TextureView;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->setVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_4

    .line 584
    :cond_8
    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_9

    .line 585
    check-cast v0, Landroid/view/SurfaceView;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    :cond_9
    :goto_4
    const/16 v0, 0x1e

    .line 587
    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 588
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/Tracks;->isTypeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 590
    :cond_a
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateAspectRatio()V

    :cond_b
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    if-eqz v0, :cond_c

    const/16 v0, 0x1c

    .line 593
    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    .line 594
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentCues()Landroidx/media3/common/text/CueGroup;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_c
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    .line 596
    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 597
    invoke-direct {p0, v3}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    goto :goto_5

    .line 599
    :cond_d
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->hideController()V

    :goto_5
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1073
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1074
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setRepeatToggleModes(I)V

    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 619
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 620
    invoke-virtual {v0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method public setShowBuffering(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/ui/PlayerView;->showBuffering:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/media3/ui/PlayerView;->showBuffering:I

    .line 766
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateBuffering()V

    :cond_0
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1040
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1041
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowFastForwardButton(Z)V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1117
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1118
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowMultiWindowTimeBar(Z)V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1062
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1063
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowNextButton(Z)V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1051
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1052
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowPreviousButton(Z)V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1029
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1030
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowRewindButton(Z)V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1084
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1085
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowShuffleButton(Z)V

    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1095
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1096
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowSubtitleButton(Z)V

    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1106
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1107
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowVrButton(Z)V

    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setUseArtwork(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    .line 645
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setArtworkDisplayMode(I)V

    return-void
.end method

.method public setUseController(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 700
    :goto_1
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    if-nez p1, :cond_2

    .line 701
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->hasOnClickListeners()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->setClickable(Z)V

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    if-ne v0, p1, :cond_4

    return-void

    :cond_4
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    .line 706
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 707
    invoke-virtual {p1, v0}, Landroidx/media3/ui/PlayerControlView;->setPlayer(Landroidx/media3/common/Player;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz p1, :cond_6

    .line 709
    invoke-virtual {p1}, Landroidx/media3/ui/PlayerControlView;->hide()V

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    const/4 v0, 0x0

    .line 710
    invoke-virtual {p1, v0}, Landroidx/media3/ui/PlayerControlView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 712
    :cond_6
    :goto_2
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateContentDescription()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 605
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 606
    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 608
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showController()V
    .locals 1

    .line 849
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->shouldShowControllerIndefinitely()Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->showController(Z)V

    return-void
.end method
