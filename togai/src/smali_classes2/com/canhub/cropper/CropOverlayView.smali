.class public final Lcom/canhub/cropper/CropOverlayView;
.super Landroid/view/View;
.source "CropOverlayView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropOverlayView$Companion;,
        Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;,
        Lcom/canhub/cropper/CropOverlayView$ScaleListener;,
        Lcom/canhub/cropper/CropOverlayView$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCropOverlayView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropOverlayView.kt\ncom/canhub/cropper/CropOverlayView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1231:1\n1#2:1232\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0014\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008/\u0018\u0000 \u00a5\u00012\u00020\u0001:\u0006\u00a5\u0001\u00a6\u0001\u00a7\u0001B\u001d\u0008\u0007\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\\\u001a\u0002002\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0010\u0010]\u001a\u00020^2\u0006\u0010_\u001a\u000200H\u0002J\u0010\u0010`\u001a\u00020^2\u0006\u0010a\u001a\u00020bH\u0002J\u0010\u0010c\u001a\u00020^2\u0006\u0010a\u001a\u00020bH\u0002J0\u0010d\u001a\u00020^2\u0006\u0010a\u001a\u00020b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010e\u001a\u00020\u00192\u0006\u0010f\u001a\u00020\u00192\u0006\u0010g\u001a\u00020\u0019H\u0002J(\u0010h\u001a\u00020^2\u0006\u0010a\u001a\u00020b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010e\u001a\u00020\u00192\u0006\u0010f\u001a\u00020\u0019H\u0002J0\u0010i\u001a\u00020^2\u0006\u0010a\u001a\u00020b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010e\u001a\u00020\u00192\u0006\u0010f\u001a\u00020\u00192\u0006\u0010g\u001a\u00020\u0019H\u0002J\u0010\u0010j\u001a\u00020^2\u0006\u0010a\u001a\u00020bH\u0002J\u0010\u0010k\u001a\u00020^2\u0006\u0010a\u001a\u00020bH\u0002J\u0010\u0010l\u001a\u00020^2\u0006\u0010a\u001a\u00020bH\u0002J(\u0010m\u001a\u00020^2\u0006\u0010a\u001a\u00020b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010e\u001a\u00020\u00192\u0006\u0010f\u001a\u00020\u0019H\u0002J\u0010\u0010n\u001a\u00020^2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0006\u0010o\u001a\u00020^J\u0008\u0010p\u001a\u00020^H\u0002J\u0018\u0010q\u001a\u00020^2\u0006\u0010r\u001a\u00020\u00192\u0006\u0010s\u001a\u00020\u0019H\u0002J\u0018\u0010t\u001a\u00020^2\u0006\u0010r\u001a\u00020\u00192\u0006\u0010s\u001a\u00020\u0019H\u0002J\u0008\u0010u\u001a\u00020^H\u0002J\u0010\u0010v\u001a\u00020^2\u0006\u0010a\u001a\u00020bH\u0014J\u0010\u0010w\u001a\u0002002\u0006\u0010x\u001a\u00020yH\u0016J\u0006\u0010z\u001a\u00020^J\u0006\u0010{\u001a\u00020^J \u0010|\u001a\u00020^2\u0008\u0010}\u001a\u0004\u0018\u00010>2\u0006\u0010~\u001a\u00020\u00082\u0006\u0010\u007f\u001a\u00020\u0008J\u0010\u0010\u0080\u0001\u001a\u0002002\u0007\u0010\u0081\u0001\u001a\u000200J\u0010\u0010\u0082\u0001\u001a\u00020^2\u0007\u0010\u0083\u0001\u001a\u00020\u0019J\u0010\u0010\u0084\u0001\u001a\u00020^2\u0007\u0010\u0085\u0001\u001a\u00020\u0011J\u0012\u0010\u0086\u0001\u001a\u00020^2\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u0016J\u0010\u0010\u0088\u0001\u001a\u00020^2\u0007\u0010\u0089\u0001\u001a\u00020\u0008J\u0010\u0010\u008a\u0001\u001a\u00020^2\u0007\u0010\u008b\u0001\u001a\u00020\u0019J\u000f\u0010\u008c\u0001\u001a\u00020^2\u0006\u0010\u001b\u001a\u00020\u001aJ\u0012\u0010\u008d\u0001\u001a\u00020^2\t\u0010\u008e\u0001\u001a\u0004\u0018\u00010EJ+\u0010\u008f\u0001\u001a\u00020^2\u0007\u0010\u0090\u0001\u001a\u00020\u00192\u0007\u0010\u0091\u0001\u001a\u00020\u00192\u0007\u0010\u0092\u0001\u001a\u00020\u00192\u0007\u0010\u0093\u0001\u001a\u00020\u0019J\u0010\u0010\u0094\u0001\u001a\u00020^2\u0007\u0010\u0095\u0001\u001a\u000200J\u0010\u0010\u0096\u0001\u001a\u00020^2\u0007\u0010\u0097\u0001\u001a\u000200J\u000f\u0010\u0098\u0001\u001a\u00020^2\u0006\u0010&\u001a\u00020%J\u0010\u0010\u0099\u0001\u001a\u00020^2\u0007\u0010\u009a\u0001\u001a\u00020PJ\u0019\u0010\u009b\u0001\u001a\u00020^2\u0007\u0010\u009c\u0001\u001a\u00020\u00082\u0007\u0010\u009d\u0001\u001a\u00020\u0008J\u0019\u0010\u009e\u0001\u001a\u00020^2\u0007\u0010\u009f\u0001\u001a\u00020\u00082\u0007\u0010\u00a0\u0001\u001a\u00020\u0008J\u0010\u0010\u00a1\u0001\u001a\u0002002\u0007\u0010\u00a2\u0001\u001a\u000200J\u0010\u0010\u00a3\u0001\u001a\u00020^2\u0007\u0010\u00a4\u0001\u001a\u00020\u0019R$\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00088F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR$\u0010\r\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00088F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\n\"\u0004\u0008\u000f\u0010\u000cR\"\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u001a@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR$\u0010 \u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001f8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\"\u0010&\u001a\u0004\u0018\u00010%2\u0008\u0010\u0010\u001a\u0004\u0018\u00010%@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R(\u0010*\u001a\u0004\u0018\u00010)2\u0008\u0010\u001e\u001a\u0004\u0018\u00010)8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u000e\u0010/\u001a\u000200X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u000200X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u00102\u001a\u0002002\u0006\u0010\u0010\u001a\u000200@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u0014\u00104\u001a\u0002008BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u00103R\u000e\u00105\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00107\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010;\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010<\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020>X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u000200X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010A\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010BR\u000e\u0010C\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010D\u001a\u0004\u0018\u00010EX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010F\u001a\u00020GX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010H\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010I\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010J\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010K\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010L\u001a\u0004\u0018\u00010MX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010N\u001a\u000200X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010O\u001a\u0004\u0018\u00010PX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010Q\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010BR\u000e\u0010R\u001a\u00020SX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010T\u001a\u0004\u0018\u00010UX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010V\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010W\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010X\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010Y\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010Z\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010[\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00a8\u0001"
    }
    d2 = {
        "Lcom/canhub/cropper/CropOverlayView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "aspectRatioX",
        "",
        "getAspectRatioX",
        "()I",
        "setAspectRatioX",
        "(I)V",
        "aspectRatioY",
        "getAspectRatioY",
        "setAspectRatioY",
        "<set-?>",
        "Lcom/canhub/cropper/CropImageView$CropCornerShape;",
        "cornerShape",
        "getCornerShape",
        "()Lcom/canhub/cropper/CropImageView$CropCornerShape;",
        "cropLabelText",
        "",
        "cropLabelTextColor",
        "cropLabelTextSize",
        "",
        "Lcom/canhub/cropper/CropImageView$CropShape;",
        "cropShape",
        "getCropShape",
        "()Lcom/canhub/cropper/CropImageView$CropShape;",
        "rect",
        "Landroid/graphics/RectF;",
        "cropWindowRect",
        "getCropWindowRect",
        "()Landroid/graphics/RectF;",
        "setCropWindowRect",
        "(Landroid/graphics/RectF;)V",
        "Lcom/canhub/cropper/CropImageView$Guidelines;",
        "guidelines",
        "getGuidelines",
        "()Lcom/canhub/cropper/CropImageView$Guidelines;",
        "Landroid/graphics/Rect;",
        "initialCropWindowRect",
        "getInitialCropWindowRect",
        "()Landroid/graphics/Rect;",
        "setInitialCropWindowRect",
        "(Landroid/graphics/Rect;)V",
        "initializedCropWindow",
        "",
        "isCropLabelEnabled",
        "isFixAspectRatio",
        "()Z",
        "isNonStraightAngleRotated",
        "mAspectRatioX",
        "mAspectRatioY",
        "mBackgroundPaint",
        "Landroid/graphics/Paint;",
        "mBorderCornerLength",
        "mBorderCornerOffset",
        "mBorderCornerPaint",
        "mBorderPaint",
        "mBoundsPoints",
        "",
        "mCalcBounds",
        "mCenterMoveEnabled",
        "mCircleCornerFillColor",
        "Ljava/lang/Integer;",
        "mCropCornerRadius",
        "mCropWindowChangeListener",
        "Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;",
        "mCropWindowHandler",
        "Lcom/canhub/cropper/CropWindowHandler;",
        "mDrawRect",
        "mGuidelinePaint",
        "mInitialCropWindowPaddingRatio",
        "mInitialCropWindowRect",
        "mMoveHandler",
        "Lcom/canhub/cropper/CropWindowMoveHandler;",
        "mMultiTouchEnabled",
        "mOptions",
        "Lcom/canhub/cropper/CropImageOptions;",
        "mOriginalLayerType",
        "mPath",
        "Landroid/graphics/Path;",
        "mScaleDetector",
        "Landroid/view/ScaleGestureDetector;",
        "mSnapRadius",
        "mTargetAspectRatio",
        "mTouchRadius",
        "mViewHeight",
        "mViewWidth",
        "textLabelPaint",
        "calculateBounds",
        "callOnCropWindowChanged",
        "",
        "inProgress",
        "drawBackground",
        "canvas",
        "Landroid/graphics/Canvas;",
        "drawBorders",
        "drawCircleShape",
        "cornerOffset",
        "cornerExtension",
        "radius",
        "drawCornerBasedOnShape",
        "drawCornerShape",
        "drawCorners",
        "drawCropLabelText",
        "drawGuidelines",
        "drawLineShape",
        "fixCropWindowRectByRules",
        "fixCurrentCropWindowRect",
        "initCropWindow",
        "onActionDown",
        "x",
        "y",
        "onActionMove",
        "onActionUp",
        "onDraw",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "resetCropOverlayView",
        "resetCropWindowRect",
        "setBounds",
        "boundsPoints",
        "viewWidth",
        "viewHeight",
        "setCenterMoveEnabled",
        "centerMoveEnabled",
        "setCropCornerRadius",
        "cornerRadius",
        "setCropCornerShape",
        "cropCornerShape",
        "setCropLabelText",
        "textLabel",
        "setCropLabelTextColor",
        "textColor",
        "setCropLabelTextSize",
        "textSize",
        "setCropShape",
        "setCropWindowChangeListener",
        "listener",
        "setCropWindowLimits",
        "maxWidth",
        "maxHeight",
        "scaleFactorWidth",
        "scaleFactorHeight",
        "setCropperTextLabelVisibility",
        "isEnabled",
        "setFixedAspectRatio",
        "fixAspectRatio",
        "setGuidelines",
        "setInitialAttributeValues",
        "options",
        "setMaxCropResultSize",
        "maxCropResultWidth",
        "maxCropResultHeight",
        "setMinCropResultSize",
        "minCropResultWidth",
        "minCropResultHeight",
        "setMultiTouchEnabled",
        "multiTouchEnabled",
        "setSnapRadius",
        "snapRadius",
        "Companion",
        "CropWindowChangeListener",
        "ScaleListener",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/canhub/cropper/CropOverlayView$Companion;


# instance fields
.field private cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

.field private cropLabelText:Ljava/lang/String;

.field private cropLabelTextColor:I

.field private cropLabelTextSize:F

.field private cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

.field private guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

.field private initializedCropWindow:Z

.field private isCropLabelEnabled:Z

.field private isFixAspectRatio:Z

.field private mAspectRatioX:I

.field private mAspectRatioY:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBorderCornerLength:F

.field private mBorderCornerOffset:F

.field private mBorderCornerPaint:Landroid/graphics/Paint;

.field private mBorderPaint:Landroid/graphics/Paint;

.field private final mBoundsPoints:[F

.field private final mCalcBounds:Landroid/graphics/RectF;

.field private mCenterMoveEnabled:Z

.field private mCircleCornerFillColor:Ljava/lang/Integer;

.field private mCropCornerRadius:F

.field private mCropWindowChangeListener:Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;

.field private final mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

.field private final mDrawRect:Landroid/graphics/RectF;

.field private mGuidelinePaint:Landroid/graphics/Paint;

.field private mInitialCropWindowPaddingRatio:F

.field private final mInitialCropWindowRect:Landroid/graphics/Rect;

.field private mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

.field private mMultiTouchEnabled:Z

.field private mOptions:Lcom/canhub/cropper/CropImageOptions;

.field private mOriginalLayerType:Ljava/lang/Integer;

.field private final mPath:Landroid/graphics/Path;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mSnapRadius:F

.field private mTargetAspectRatio:F

.field private mTouchRadius:F

.field private mViewHeight:I

.field private mViewWidth:I

.field private textLabelPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/canhub/cropper/CropOverlayView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/canhub/cropper/CropOverlayView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/canhub/cropper/CropOverlayView;->Companion:Lcom/canhub/cropper/CropOverlayView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/canhub/cropper/CropOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->mCenterMoveEnabled:Z

    .line 85
    new-instance p1, Lcom/canhub/cropper/CropWindowHandler;

    invoke-direct {p1}, Lcom/canhub/cropper/CropWindowHandler;-><init>()V

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 91
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    .line 108
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    .line 114
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget p1, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float p1, p1

    iget p2, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioY:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    const-string p1, ""

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelText:Ljava/lang/String;

    const/high16 p1, 0x41a00000    # 20.0f

    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelTextSize:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelTextColor:I

    .line 188
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 33
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/canhub/cropper/CropOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$getMCropWindowHandler$p(Lcom/canhub/cropper/CropOverlayView;)Lcom/canhub/cropper/CropWindowHandler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    return-object p0
.end method

.method private final calculateBounds(Landroid/graphics/RectF;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1094
    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v3, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v2, v3}, Lcom/canhub/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v2

    .line 1095
    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v4, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v3, v4}, Lcom/canhub/cropper/BitmapUtils;->getRectTop([F)F

    move-result v3

    .line 1096
    sget-object v4, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v5, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v4, v5}, Lcom/canhub/cropper/BitmapUtils;->getRectRight([F)F

    move-result v4

    .line 1097
    sget-object v5, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v6, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v5, v6}, Lcom/canhub/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v5

    .line 1099
    invoke-direct/range {p0 .. p0}, Lcom/canhub/cropper/CropOverlayView;->isNonStraightAngleRotated()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    iget-object v1, v0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    .line 1100
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    move-object v4, v0

    goto/16 :goto_7

    :cond_0
    iget-object v6, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    .line 1103
    aget v7, v6, v7

    const/4 v8, 0x1

    .line 1104
    aget v9, v6, v8

    const/4 v10, 0x4

    .line 1105
    aget v10, v6, v10

    const/4 v11, 0x5

    .line 1106
    aget v11, v6, v11

    const/4 v12, 0x6

    .line 1107
    aget v12, v6, v12

    const/4 v13, 0x7

    .line 1108
    aget v13, v6, v13

    cmpg-float v14, v13, v9

    const/4 v15, 0x3

    const/16 v16, 0x2

    if-gez v14, :cond_2

    .line 1110
    aget v14, v6, v15

    cmpg-float v15, v9, v14

    if-gez v15, :cond_1

    .line 1113
    aget v7, v6, v16

    move v9, v11

    move v6, v12

    move v11, v14

    move v14, v13

    move/from16 v19, v10

    move v10, v7

    move/from16 v7, v19

    goto :goto_0

    .line 1122
    :cond_1
    aget v6, v6, v16

    move/from16 v19, v7

    move v7, v6

    move v6, v10

    move/from16 v10, v19

    move/from16 v20, v11

    move v11, v9

    move v9, v14

    move/from16 v14, v20

    goto :goto_0

    .line 1125
    :cond_2
    aget v14, v6, v15

    cmpl-float v15, v9, v14

    if-lez v15, :cond_3

    .line 1126
    aget v6, v6, v16

    move v10, v12

    move v11, v13

    goto :goto_0

    :cond_3
    move v6, v7

    move v14, v9

    move v7, v12

    move v9, v13

    :goto_0
    sub-float/2addr v9, v14

    sub-float/2addr v7, v6

    div-float/2addr v9, v7

    const/high16 v7, -0x40800000    # -1.0f

    div-float/2addr v7, v9

    mul-float v12, v9, v6

    sub-float v12, v14, v12

    mul-float/2addr v6, v7

    sub-float/2addr v14, v6

    mul-float v6, v9, v10

    sub-float v6, v11, v6

    mul-float/2addr v10, v7

    sub-float/2addr v11, v10

    .line 1139
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    iget v13, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    iget v15, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v15

    div-float/2addr v10, v13

    neg-float v13, v10

    .line 1141
    iget v15, v1, Landroid/graphics/RectF;->top:F

    iget v8, v1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v8, v10

    sub-float/2addr v15, v8

    .line 1142
    iget v8, v1, Landroid/graphics/RectF;->top:F

    iget v0, v1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, v13

    sub-float/2addr v8, v0

    sub-float v0, v15, v12

    sub-float v17, v9, v10

    div-float v0, v0, v17

    move/from16 v18, v5

    .line 1145
    iget v5, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v0, v5

    if-gez v5, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v2, v15, v14

    sub-float v5, v7, v10

    div-float/2addr v2, v5

    .line 1149
    iget v5, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v2, v5

    if-gez v5, :cond_5

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v2, v8, v11

    sub-float v5, v7, v13

    div-float/2addr v2, v5

    .line 1153
    iget v10, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v10, v2, v10

    if-gez v10, :cond_6

    goto :goto_3

    :cond_6
    move v2, v0

    :goto_3
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v2, v8, v14

    div-float/2addr v2, v5

    .line 1157
    iget v5, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v2, v5

    if-lez v5, :cond_7

    goto :goto_4

    :cond_7
    move v2, v4

    :goto_4
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float/2addr v8, v6

    sub-float v4, v9, v13

    div-float/2addr v8, v4

    .line 1161
    iget v4, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v8, v4

    if-lez v4, :cond_8

    goto :goto_5

    :cond_8
    move v8, v2

    :goto_5
    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float/2addr v15, v6

    div-float v15, v15, v17

    .line 1165
    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v15, v1

    if-lez v1, :cond_9

    goto :goto_6

    :cond_9
    move v15, v2

    :goto_6
    invoke-static {v2, v15}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v2, v9, v0

    add-float/2addr v2, v12

    mul-float v4, v7, v1

    add-float/2addr v4, v14

    .line 1167
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v7, v0

    add-float/2addr v7, v11

    mul-float/2addr v9, v1

    add-float/2addr v9, v6

    .line 1168
    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move/from16 v4, v18

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    .line 1169
    iput v0, v5, Landroid/graphics/RectF;->left:F

    iget-object v0, v4, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    .line 1170
    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, v4, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    .line 1171
    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, v4, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    .line 1172
    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v7, 0x1

    :goto_7
    return v7
.end method

.method private final callOnCropWindowChanged(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowChangeListener:Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;

    if-eqz v0, :cond_0

    .line 1184
    invoke-interface {v0, p1}, Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;->onCropWindowChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Exception in crop window changed"

    .line 1186
    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "AIC"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private final drawBackground(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 650
    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 651
    sget-object v1, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v1, v2}, Lcom/canhub/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 652
    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v3, v4}, Lcom/canhub/cropper/BitmapUtils;->getRectTop([F)F

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 653
    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v2, v3}, Lcom/canhub/cropper/BitmapUtils;->getRectRight([F)F

    move-result v2

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 654
    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v2, v3}, Lcom/canhub/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v2

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    if-nez v3, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    .line 655
    :cond_0
    sget-object v4, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v3

    aget v3, v4, v3

    :goto_0
    const/4 v4, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v3, v7, :cond_4

    if-eq v3, v8, :cond_4

    if-eq v3, v6, :cond_4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    .line 681
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 682
    sget-object v3, Lcom/canhub/cropper/common/CommonVersionCheck;->INSTANCE:Lcom/canhub/cropper/common/CommonVersionCheck;

    invoke-virtual {v3}, Lcom/canhub/cropper/common/CommonVersionCheck;->isAtLeastJ18()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    .line 683
    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v6, v7, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    .line 684
    iget v4, v0, Landroid/graphics/RectF;->left:F

    int-to-float v6, v8

    add-float/2addr v4, v6

    iget v7, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v6

    iget v8, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v6

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v6

    invoke-virtual {v3, v4, v7, v8, v0}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_1
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    .line 686
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 687
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 689
    sget-object v0, Lcom/canhub/cropper/common/CommonVersionCheck;->INSTANCE:Lcom/canhub/cropper/common/CommonVersionCheck;

    invoke-virtual {v0}, Lcom/canhub/cropper/common/CommonVersionCheck;->isAtLeastO26()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    .line 690
    sget-object v3, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :goto_2
    iget-object v8, p0, Lcom/canhub/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 692
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p1

    move v4, v1

    move v6, v9

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 693
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    .line 695
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unrecognized crop shape"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 659
    :cond_4
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->isNonStraightAngleRotated()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/canhub/cropper/common/CommonVersionCheck;->INSTANCE:Lcom/canhub/cropper/common/CommonVersionCheck;

    invoke-virtual {v3}, Lcom/canhub/cropper/common/CommonVersionCheck;->isAtLeastJ18()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    .line 665
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v11, 0x0

    .line 666
    aget v11, v10, v11

    aget v7, v10, v7

    invoke-virtual {v3, v11, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    .line 667
    aget v8, v7, v8

    aget v6, v7, v6

    invoke-virtual {v3, v8, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    .line 668
    aget v4, v6, v4

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v6, 0x6

    .line 669
    aget v6, v4, v6

    const/4 v7, 0x7

    aget v4, v4, v7

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    .line 670
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 671
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 673
    sget-object v3, Lcom/canhub/cropper/common/CommonVersionCheck;->INSTANCE:Lcom/canhub/cropper/common/CommonVersionCheck;

    invoke-virtual {v3}, Lcom/canhub/cropper/common/CommonVersionCheck;->isAtLeastO26()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    .line 674
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 676
    :goto_3
    sget-object v3, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    iget-object v8, p0, Lcom/canhub/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 677
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p1

    move v4, v1

    move v6, v9

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 678
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    .line 660
    :cond_7
    :goto_4
    iget v7, v0, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/canhub/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p1

    move v4, v1

    move v6, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 661
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/canhub/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 662
    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, v0, Landroid/graphics/RectF;->left:F

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/canhub/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 663
    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget v8, v0, Landroid/graphics/RectF;->top:F

    iget v10, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v11, p0, Lcom/canhub/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_5
    return-void
.end method

.method private final drawBorders(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    .line 782
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 783
    invoke-virtual {v1}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    const/4 v2, 0x2

    int-to-float v3, v2

    div-float/2addr v0, v3

    .line 784
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 786
    :cond_0
    sget-object v3, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v0

    aget v0, v3, v0

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    .line 792
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 793
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unrecognized crop shape"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    .line 790
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final drawCircleShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V
    .locals 2

    .line 983
    iget p3, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p3, p4

    .line 984
    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p4

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 986
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 982
    invoke-virtual {p1, p3, v0, p5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 990
    iget p3, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr p3, p4

    .line 991
    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p4

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 993
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 989
    invoke-virtual {p1, p3, v0, p5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 997
    iget p3, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p3, p4

    .line 998
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p4

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 1000
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 996
    invoke-virtual {p1, p3, v0, p5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1004
    iget p3, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr p3, p4

    .line 1005
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p2, p4

    iget-object p4, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 1007
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1003
    invoke-virtual {p1, p3, p2, p5, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final drawCornerBasedOnShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V
    .locals 13

    move-object v6, p0

    move-object v2, p2

    iget-object v0, v6, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 834
    :cond_0
    sget-object v1, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 839
    invoke-direct/range {p0 .. p4}, Lcom/canhub/cropper/CropOverlayView;->drawLineShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    goto/16 :goto_1

    .line 877
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized crop shape"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :cond_2
    iget v0, v2, Landroid/graphics/RectF;->left:F

    sub-float v8, v0, p3

    .line 864
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v9, v0, v1

    .line 865
    iget v0, v2, Landroid/graphics/RectF;->left:F

    sub-float v10, v0, p3

    .line 866
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v11, v0, v1

    iget-object v12, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 867
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, p1

    .line 862
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 870
    iget v0, v2, Landroid/graphics/RectF;->right:F

    add-float v8, v0, p3

    .line 871
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v9, v0, v1

    .line 872
    iget v0, v2, Landroid/graphics/RectF;->right:F

    add-float v10, v0, p3

    .line 873
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v11, v0, v1

    iget-object v12, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 874
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 869
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 845
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v8, v0, v1

    .line 846
    iget v0, v2, Landroid/graphics/RectF;->top:F

    sub-float v9, v0, p3

    .line 847
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v10, v0, v1

    .line 848
    iget v0, v2, Landroid/graphics/RectF;->top:F

    sub-float v11, v0, p3

    iget-object v12, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 849
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, p1

    .line 844
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 852
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v8, v0, v1

    .line 853
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    add-float v9, v0, p3

    .line 854
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v10, v0, v1

    .line 855
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    add-float v11, v0, p3

    iget-object v12, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 856
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 851
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    iget v5, v6, Lcom/canhub/cropper/CropOverlayView;->mCropCornerRadius:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 836
    invoke-direct/range {v0 .. v5}, Lcom/canhub/cropper/CropOverlayView;->drawCornerShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V

    :goto_1
    return-void
.end method

.method private final drawCornerShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V
    .locals 2

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 962
    :cond_0
    sget-object v1, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView$CropCornerShape;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p5, 0x2

    if-eq v0, p5, :cond_1

    goto :goto_1

    .line 966
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/canhub/cropper/CropOverlayView;->drawLineShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    goto :goto_1

    .line 964
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/canhub/cropper/CropOverlayView;->drawCircleShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V

    :goto_1
    return-void
.end method

.method private final drawCorners(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 801
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 802
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    sub-float v0, v1, v0

    const/4 v2, 0x2

    int-to-float v3, v2

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    add-float v3, v1, v0

    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    if-nez v4, :cond_1

    const/4 v4, -0x1

    goto :goto_1

    .line 805
    :cond_1
    sget-object v5, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v4

    aget v4, v5, v4

    :goto_1
    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    if-eq v4, v2, :cond_3

    const/4 v2, 0x3

    if-eq v4, v2, :cond_3

    const/4 v2, 0x4

    if-ne v4, v2, :cond_2

    goto :goto_2

    .line 811
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unrecognized crop shape"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerOffset:F

    add-float/2addr v1, v2

    :goto_2
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 813
    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 814
    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 815
    invoke-direct {p0, p1, v2, v0, v3}, Lcom/canhub/cropper/CropOverlayView;->drawCornerBasedOnShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    .line 816
    sget-object v4, Lcom/canhub/cropper/CropImageView$CropCornerShape;->OVAL:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mCircleCornerFillColor:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 818
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sget-object v4, Lcom/canhub/cropper/CropOverlayView;->Companion:Lcom/canhub/cropper/CropOverlayView$Companion;

    invoke-static {v4, v1}, Lcom/canhub/cropper/CropOverlayView$Companion;->access$getNewPaintWithFill(Lcom/canhub/cropper/CropOverlayView$Companion;I)Landroid/graphics/Paint;

    move-result-object v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    iput-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 819
    invoke-direct {p0, p1, v2, v0, v3}, Lcom/canhub/cropper/CropOverlayView;->drawCornerBasedOnShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    :cond_5
    return-void
.end method

.method private final drawCropLabelText(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->isCropLabelEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 636
    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 637
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 638
    iget v0, v0, Landroid/graphics/RectF;->top:F

    const/16 v2, 0x32

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->textLabelPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelTextSize:F

    .line 640
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelTextColor:I

    .line 641
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelText:Ljava/lang/String;

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->textLabelPaint:Landroid/graphics/Paint;

    .line 643
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 644
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_1
    return-void
.end method

.method private final drawGuidelines(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/canhub/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 705
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 706
    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 707
    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 708
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/4 v4, 0x3

    int-to-float v5, v4

    div-float/2addr v3, v5

    .line 709
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v5

    iget-object v5, v0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    if-nez v5, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    .line 714
    :cond_1
    sget-object v7, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v5

    aget v5, v7, v5

    :goto_1
    const/4 v7, 0x1

    if-eq v5, v7, :cond_3

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    if-eq v5, v4, :cond_3

    const/4 v4, 0x4

    if-ne v5, v4, :cond_2

    .line 716
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v5, v7

    div-float/2addr v4, v5

    sub-float/2addr v4, v1

    .line 717
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v5

    sub-float/2addr v7, v1

    .line 719
    iget v1, v2, Landroid/graphics/RectF;->left:F

    add-float v11, v1, v3

    .line 720
    iget v1, v2, Landroid/graphics/RectF;->right:F

    sub-float v15, v1, v3

    float-to-double v8, v7

    sub-float v1, v4, v3

    div-float/2addr v1, v4

    float-to-double v12, v1

    .line 721
    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v8, v12

    double-to-float v1, v8

    .line 726
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v7

    sub-float v10, v3, v1

    .line 728
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v7

    add-float v12, v3, v1

    iget-object v13, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    .line 729
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    move v9, v11

    .line 724
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 734
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v7

    sub-float v14, v3, v1

    .line 736
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v7

    add-float v16, v3, v1

    iget-object v1, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    .line 737
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v12, p1

    move v13, v15

    move-object/from16 v17, v1

    .line 732
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 740
    iget v1, v2, Landroid/graphics/RectF;->top:F

    add-float v12, v1, v6

    .line 741
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v17, v1, v6

    float-to-double v8, v4

    sub-float v1, v7, v6

    div-float/2addr v1, v7

    float-to-double v5, v1

    .line 742
    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v8, v5

    double-to-float v1, v8

    .line 745
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    sub-float v9, v3, v1

    .line 747
    iget v3, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    add-float v11, v3, v1

    iget-object v13, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    .line 749
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    move v10, v12

    .line 744
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 753
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    sub-float v14, v3, v1

    .line 755
    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v4

    add-float v16, v2, v1

    iget-object v1, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    .line 757
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v13, p1

    move/from16 v15, v17

    move-object/from16 v18, v1

    .line 752
    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 774
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unrecognized crop shape"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 764
    :cond_3
    iget v1, v2, Landroid/graphics/RectF;->left:F

    add-float v10, v1, v3

    .line 765
    iget v1, v2, Landroid/graphics/RectF;->right:F

    sub-float v14, v1, v3

    .line 766
    iget v9, v2, Landroid/graphics/RectF;->top:F

    iget v11, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v12, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    move v8, v10

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 767
    iget v13, v2, Landroid/graphics/RectF;->top:F

    iget v15, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v1, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v11, p1

    move v12, v14

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 769
    iget v1, v2, Landroid/graphics/RectF;->top:F

    add-float v11, v1, v6

    .line 770
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v16, v1, v6

    .line 771
    iget v8, v2, Landroid/graphics/RectF;->left:F

    iget v10, v2, Landroid/graphics/RectF;->right:F

    iget-object v12, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move v9, v11

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 772
    iget v13, v2, Landroid/graphics/RectF;->left:F

    iget v15, v2, Landroid/graphics/RectF;->right:F

    iget-object v1, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v12, p1

    move/from16 v14, v16

    move-object/from16 v17, v1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private final drawLineShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V
    .locals 7

    .line 892
    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float v2, v0, p3

    .line 893
    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float v3, v0, p4

    .line 894
    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float v4, v0, p3

    .line 895
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v5, v0, v1

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 896
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p1

    .line 891
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 899
    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float v2, v0, p4

    .line 900
    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float v3, v0, p3

    .line 901
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v4, v0, v1

    .line 902
    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float v5, v0, p3

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 903
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p1

    .line 898
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 907
    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float v2, v0, p3

    .line 908
    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float v3, v0, p4

    .line 909
    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float v4, v0, p3

    .line 910
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v5, v0, v1

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 911
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p1

    .line 906
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 914
    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float v2, v0, p4

    .line 915
    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float v3, v0, p3

    .line 916
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v4, v0, v1

    .line 917
    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float v5, v0, p3

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 918
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p1

    .line 913
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 922
    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float v2, v0, p3

    .line 923
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float v3, v0, p4

    .line 924
    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float v4, v0, p3

    .line 925
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v5, v0, v1

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 926
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p1

    .line 921
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 929
    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float v2, v0, p4

    .line 930
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float v3, v0, p3

    .line 931
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v4, v0, v1

    .line 932
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float v5, v0, p3

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 933
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p1

    .line 928
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 937
    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float v2, v0, p3

    .line 938
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float v3, v0, p4

    .line 939
    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float v4, v0, p3

    .line 940
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v5, v0, v1

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 941
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p1

    .line 936
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 944
    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float v2, v0, p4

    .line 945
    iget p4, p2, Landroid/graphics/RectF;->bottom:F

    add-float v3, p4, p3

    .line 946
    iget p4, p2, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v4, p4, v0

    .line 947
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    add-float v5, p2, p3

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 948
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 943
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final fixCropWindowRectByRules(Landroid/graphics/RectF;)V
    .locals 6

    .line 565
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 566
    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v0, v2

    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 567
    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 568
    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 570
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 571
    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v0, v2

    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 572
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 573
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 575
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->getMaxCropWidth()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 576
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->getMaxCropWidth()F

    move-result v2

    sub-float/2addr v0, v2

    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 577
    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 578
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 580
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->getMaxCropHeight()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 581
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->getMaxCropHeight()F

    move-result v2

    sub-float/2addr v0, v2

    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 582
    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 583
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 585
    :cond_3
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->calculateBounds(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    .line 587
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    .line 588
    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    .line 589
    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    .line 590
    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    .line 591
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 593
    iget v5, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v0

    if-gez v5, :cond_4

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 594
    :cond_4
    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 595
    :cond_5
    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    iput v3, p1, Landroid/graphics/RectF;->right:F

    .line 596
    :cond_6
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_7

    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    :cond_7
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio:Z

    if-eqz v0, :cond_9

    .line 598
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v2, v4

    if-lez v0, :cond_9

    .line 599
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    .line 600
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 601
    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 602
    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 604
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    div-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 605
    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 606
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    :cond_9
    :goto_0
    return-void
.end method

.method private final initCropWindow()V
    .locals 10

    .line 495
    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 496
    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v2, v3}, Lcom/canhub/cropper/BitmapUtils;->getRectTop([F)F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 497
    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v2, v3}, Lcom/canhub/cropper/BitmapUtils;->getRectRight([F)F

    move-result v2

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 498
    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v3, v4}, Lcom/canhub/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v3

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpg-float v4, v2, v0

    if-lez v4, :cond_4

    cmpg-float v4, v3, v1

    if-gtz v4, :cond_0

    goto/16 :goto_1

    .line 500
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    iget v5, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowPaddingRatio:F

    sub-float v6, v2, v0

    mul-float v7, v5, v6

    sub-float v8, v3, v1

    mul-float/2addr v5, v8

    iget-object v9, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    .line 505
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lez v9, :cond_1

    iget-object v9, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v9, :cond_1

    iget-object v5, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    .line 508
    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v6}, Lcom/canhub/cropper/CropWindowHandler;->getScaleFactorWidth()F

    move-result v6

    div-float/2addr v5, v6

    add-float/2addr v5, v0

    .line 507
    iput v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    .line 510
    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v6}, Lcom/canhub/cropper/CropWindowHandler;->getScaleFactorHeight()F

    move-result v6

    div-float/2addr v5, v6

    add-float/2addr v5, v1

    .line 509
    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 512
    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v7}, Lcom/canhub/cropper/CropWindowHandler;->getScaleFactorWidth()F

    move-result v7

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 511
    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 514
    iget v5, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v7}, Lcom/canhub/cropper/CropWindowHandler;->getScaleFactorHeight()F

    move-result v7

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 513
    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 517
    iget v5, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->left:F

    .line 518
    iget v0, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->top:F

    .line 519
    iget v0, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->right:F

    .line 520
    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    :cond_1
    iget-boolean v9, p0, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio:Z

    if-eqz v9, :cond_3

    cmpl-float v9, v2, v0

    if-lez v9, :cond_3

    cmpl-float v9, v3, v1

    if-lez v9, :cond_3

    div-float/2addr v6, v8

    iget v8, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    cmpl-float v6, v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    if-lez v6, :cond_2

    add-float/2addr v1, v5

    .line 526
    iput v1, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v5

    .line 527
    iput v3, v4, Landroid/graphics/RectF;->bottom:F

    .line 528
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioY:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 533
    invoke-virtual {v1}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result v1

    .line 534
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v8

    sub-float v2, v0, v1

    .line 537
    iput v2, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    .line 538
    iput v0, v4, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_2
    add-float/2addr v0, v7

    .line 540
    iput v0, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v7

    .line 541
    iput v2, v4, Landroid/graphics/RectF;->right:F

    .line 542
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 545
    invoke-virtual {v1}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result v1

    .line 546
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v8

    sub-float v2, v0, v1

    .line 549
    iput v2, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    .line 550
    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_3
    add-float/2addr v0, v7

    .line 554
    iput v0, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v5

    .line 555
    iput v1, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v7

    .line 556
    iput v2, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v5

    .line 557
    iput v3, v4, Landroid/graphics/RectF;->bottom:F

    .line 559
    :goto_0
    invoke-direct {p0, v4}, Lcom/canhub/cropper/CropOverlayView;->fixCropWindowRectByRules(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 560
    invoke-virtual {v0, v4}, Lcom/canhub/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private final isNonStraightAngleRotated()Z
    .locals 5

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v1, 0x0

    .line 1179
    aget v2, v0, v1

    const/4 v3, 0x6

    aget v3, v0, v3

    cmpg-float v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v4, 0x7

    aget v0, v0, v4

    cmpg-float v0, v3, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method private final onActionDown(FF)V
    .locals 6

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->mTouchRadius:F

    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    .line 1041
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v5, p0, Lcom/canhub/cropper/CropOverlayView;->mCenterMoveEnabled:Z

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/canhub/cropper/CropWindowHandler;->getMoveHandler(FFFLcom/canhub/cropper/CropImageView$CropShape;Z)Lcom/canhub/cropper/CropWindowMoveHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

    if-eqz p1, :cond_0

    .line 1043
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method private final onActionMove(FF)V
    .locals 12

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mSnapRadius:F

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 1062
    invoke-virtual {v1}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 1063
    invoke-direct {p0, v1}, Lcom/canhub/cropper/CropOverlayView;->calculateBounds(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    move v9, v0

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

    .line 1066
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v7, p0, Lcom/canhub/cropper/CropOverlayView;->mViewWidth:I

    iget v8, p0, Lcom/canhub/cropper/CropOverlayView;->mViewHeight:I

    iget-boolean v10, p0, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio:Z

    iget v11, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    move-object v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v2 .. v11}, Lcom/canhub/cropper/CropWindowMoveHandler;->move(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIFZF)V

    iget-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 1077
    invoke-virtual {p1, v1}, Lcom/canhub/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    const/4 p1, 0x1

    .line 1078
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->callOnCropWindowChanged(Z)V

    .line 1079
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    :cond_1
    return-void
.end method

.method private final onActionUp()V
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

    const/4 v0, 0x0

    .line 1050
    invoke-direct {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->callOnCropWindowChanged(Z)V

    .line 1051
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final fixCurrentCropWindowRect()V
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 211
    invoke-direct {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->fixCropWindowRectByRules(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 212
    invoke-virtual {v1, v0}, Lcom/canhub/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final getAspectRatioX()I
    .locals 1

    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioX:I

    return v0
.end method

.method public final getAspectRatioY()I
    .locals 1

    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioY:I

    return v0
.end method

.method public final getCornerShape()Lcom/canhub/cropper/CropImageView$CropCornerShape;
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    return-object v0
.end method

.method public final getCropShape()Lcom/canhub/cropper/CropImageView$CropShape;
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    return-object v0
.end method

.method public final getCropWindowRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 203
    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public final getGuidelines()Lcom/canhub/cropper/CropImageView$Guidelines;
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    return-object v0
.end method

.method public final getInitialCropWindowRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final isFixAspectRatio()Z
    .locals 1

    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 618
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->drawBackground(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 619
    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowHandler;->showGuidelines()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    .line 621
    sget-object v1, Lcom/canhub/cropper/CropImageView$Guidelines;->ON:Lcom/canhub/cropper/CropImageView$Guidelines;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->drawGuidelines(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    .line 622
    sget-object v1, Lcom/canhub/cropper/CropImageView$Guidelines;->ON_TOUCH:Lcom/canhub/cropper/CropImageView$Guidelines;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->drawGuidelines(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/canhub/cropper/CropOverlayView;->Companion:Lcom/canhub/cropper/CropOverlayView$Companion;

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mOptions:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v1, :cond_2

    .line 627
    iget v1, v1, Lcom/canhub/cropper/CropImageOptions;->borderCornerThickness:F

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mOptions:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v2, :cond_3

    iget v2, v2, Lcom/canhub/cropper/CropImageOptions;->borderCornerColor:I

    goto :goto_2

    :cond_3
    const/4 v2, -0x1

    :goto_2
    invoke-static {v0, v1, v2}, Lcom/canhub/cropper/CropOverlayView$Companion;->access$getNewPaintOrNull(Lcom/canhub/cropper/CropOverlayView$Companion;FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 628
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->drawCropLabelText(Landroid/graphics/Canvas;)V

    .line 629
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->drawBorders(Landroid/graphics/Canvas;)V

    .line 630
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->drawCorners(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_0

    .line 1013
    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1015
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_1

    .line 1026
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/canhub/cropper/CropOverlayView;->onActionMove(FF)V

    .line 1027
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 1021
    :cond_2
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1022
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->onActionUp()V

    goto :goto_0

    .line 1017
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/canhub/cropper/CropOverlayView;->onActionDown(FF)V

    :goto_0
    move v1, v2

    :cond_4
    :goto_1
    return v1
.end method

.method public final resetCropOverlayView()V
    .locals 1

    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_0

    .line 238
    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v0}, Lcom/canhub/cropper/BitmapUtils;->getEMPTY_RECT_F()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 239
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    .line 240
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final resetCropWindowRect()V
    .locals 1

    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    .line 451
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    const/4 v0, 0x0

    .line 452
    invoke-direct {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->callOnCropWindowChanged(Z)V

    :cond_0
    return-void
.end method

.method public final setAspectRatioX(I)V
    .locals 1

    if-lez p1, :cond_1

    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioX:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float p1, p1

    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioY:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    iget-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    .line 344
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void

    .line 338
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setAspectRatioY(I)V
    .locals 1

    if-lez p1, :cond_1

    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioY:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioY:I

    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    iget-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_0

    .line 362
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    .line 363
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void

    .line 357
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setBounds([FII)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    .line 224
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    .line 225
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    .line 226
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iput p2, p0, Lcom/canhub/cropper/CropOverlayView;->mViewWidth:I

    iput p3, p0, Lcom/canhub/cropper/CropOverlayView;->mViewHeight:I

    iget-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 230
    invoke-virtual {p1}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object p1

    .line 231
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    cmpg-float p2, p2, v0

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpg-float p1, p1, v0

    if-nez p1, :cond_3

    :goto_1
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    :cond_3
    return-void
.end method

.method public final setCenterMoveEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCenterMoveEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->mCenterMoveEnabled:Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setCropCornerRadius(F)V
    .locals 0

    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropCornerRadius:F

    return-void
.end method

.method public final setCropCornerShape(Lcom/canhub/cropper/CropImageView$CropCornerShape;)V
    .locals 1

    const-string v0, "cropCornerShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    .line 273
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setCropLabelText(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelText:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final setCropLabelTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelTextColor:I

    .line 305
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    return-void
.end method

.method public final setCropLabelTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelTextSize:F

    .line 298
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    return-void
.end method

.method public final setCropShape(Lcom/canhub/cropper/CropImageView$CropShape;)V
    .locals 2

    const-string v0, "cropShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    if-eq v0, p1, :cond_4

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    .line 248
    sget-object p1, Lcom/canhub/cropper/common/CommonVersionCheck;->INSTANCE:Lcom/canhub/cropper/common/CommonVersionCheck;

    invoke-virtual {p1}, Lcom/canhub/cropper/common/CommonVersionCheck;->isAtLeastJ18()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    .line 249
    sget-object v0, Lcom/canhub/cropper/CropImageView$CropShape;->OVAL:Lcom/canhub/cropper/CropImageView$CropShape;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getLayerType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v0, :cond_1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/canhub/cropper/CropOverlayView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 259
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/canhub/cropper/CropOverlayView;->setLayerType(ILandroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    .line 263
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    :cond_4
    return-void
.end method

.method public final setCropWindowChangeListener(Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowChangeListener:Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;

    return-void
.end method

.method public final setCropWindowLimits(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 432
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/canhub/cropper/CropWindowHandler;->setCropWindowLimits(FFFF)V

    return-void
.end method

.method public final setCropWindowRect(Landroid/graphics/RectF;)V
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 205
    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final setCropperTextLabelVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->isCropLabelEnabled:Z

    .line 281
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    return-void
.end method

.method public final setFixedAspectRatio(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio:Z

    iget-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    .line 329
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setGuidelines(Lcom/canhub/cropper/CropImageView$Guidelines;)V
    .locals 1

    const-string v0, "guidelines"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    iget-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setInitialAttributeValues(Lcom/canhub/cropper/CropImageOptions;)V
    .locals 3

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mOptions:Lcom/canhub/cropper/CropImageOptions;

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 462
    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropWindowHandler;->setInitialAttributeValues(Lcom/canhub/cropper/CropImageOptions;)V

    .line 463
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextColor:I

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setCropLabelTextColor(I)V

    .line 464
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextSize:F

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setCropLabelTextSize(F)V

    .line 465
    iget-object v0, p1, Lcom/canhub/cropper/CropImageOptions;->cropperLabelText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setCropLabelText(Ljava/lang/String;)V

    .line 466
    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->showCropLabel:Z

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setCropperTextLabelVisibility(Z)V

    .line 467
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->cropCornerRadius:F

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setCropCornerRadius(F)V

    .line 468
    iget-object v0, p1, Lcom/canhub/cropper/CropImageOptions;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setCropCornerShape(Lcom/canhub/cropper/CropImageView$CropCornerShape;)V

    .line 469
    iget-object v0, p1, Lcom/canhub/cropper/CropImageOptions;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setCropShape(Lcom/canhub/cropper/CropImageView$CropShape;)V

    .line 470
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->snapRadius:F

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setSnapRadius(F)V

    .line 471
    iget-object v0, p1, Lcom/canhub/cropper/CropImageOptions;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setGuidelines(Lcom/canhub/cropper/CropImageView$Guidelines;)V

    .line 472
    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->fixAspectRatio:Z

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setFixedAspectRatio(Z)V

    .line 473
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->aspectRatioX:I

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setAspectRatioX(I)V

    .line 474
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->aspectRatioY:I

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setAspectRatioY(I)V

    .line 475
    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->multiTouchEnabled:Z

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setMultiTouchEnabled(Z)Z

    .line 476
    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->centerMoveEnabled:Z

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setCenterMoveEnabled(Z)Z

    .line 477
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->touchRadius:F

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->mTouchRadius:F

    .line 478
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowPaddingRatio:F

    sget-object v0, Lcom/canhub/cropper/CropOverlayView;->Companion:Lcom/canhub/cropper/CropOverlayView$Companion;

    .line 479
    iget v1, p1, Lcom/canhub/cropper/CropImageOptions;->borderLineThickness:F

    iget v2, p1, Lcom/canhub/cropper/CropImageOptions;->borderLineColor:I

    invoke-static {v0, v1, v2}, Lcom/canhub/cropper/CropOverlayView$Companion;->access$getNewPaintOrNull(Lcom/canhub/cropper/CropOverlayView$Companion;FI)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    .line 480
    iget v1, p1, Lcom/canhub/cropper/CropImageOptions;->borderCornerOffset:F

    iput v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerOffset:F

    .line 481
    iget v1, p1, Lcom/canhub/cropper/CropImageOptions;->borderCornerLength:F

    iput v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    .line 482
    iget v1, p1, Lcom/canhub/cropper/CropImageOptions;->circleCornerFillColorHexValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mCircleCornerFillColor:Ljava/lang/Integer;

    .line 484
    iget v1, p1, Lcom/canhub/cropper/CropImageOptions;->borderCornerThickness:F

    iget v2, p1, Lcom/canhub/cropper/CropImageOptions;->borderCornerColor:I

    invoke-static {v0, v1, v2}, Lcom/canhub/cropper/CropOverlayView$Companion;->access$getNewPaintOrNull(Lcom/canhub/cropper/CropOverlayView$Companion;FI)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 485
    iget v1, p1, Lcom/canhub/cropper/CropImageOptions;->guidelinesThickness:F

    iget v2, p1, Lcom/canhub/cropper/CropImageOptions;->guidelinesColor:I

    invoke-static {v0, v1, v2}, Lcom/canhub/cropper/CropOverlayView$Companion;->access$getNewPaintOrNull(Lcom/canhub/cropper/CropOverlayView$Companion;FI)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    .line 486
    iget v1, p1, Lcom/canhub/cropper/CropImageOptions;->backgroundColor:I

    invoke-static {v0, v1}, Lcom/canhub/cropper/CropOverlayView$Companion;->access$getNewPaint(Lcom/canhub/cropper/CropOverlayView$Companion;I)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 487
    invoke-static {v0, p1}, Lcom/canhub/cropper/CropOverlayView$Companion;->access$getTextPaint(Lcom/canhub/cropper/CropOverlayView$Companion;Lcom/canhub/cropper/CropImageOptions;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->textLabelPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public final setInitialCropWindowRect(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    .line 439
    sget-object p1, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapUtils;->getEMPTY_RECT()Landroid/graphics/Rect;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_1

    .line 441
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    .line 442
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    const/4 p1, 0x0

    .line 443
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->callOnCropWindowChanged(Z)V

    :cond_1
    return-void
.end method

.method public final setMaxCropResultSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 418
    invoke-virtual {v0, p1, p2}, Lcom/canhub/cropper/CropWindowHandler;->setMaxCropResultSize(II)V

    return-void
.end method

.method public final setMinCropResultSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 410
    invoke-virtual {v0, p1, p2}, Lcom/canhub/cropper/CropWindowHandler;->setMinCropResultSize(II)V

    return-void
.end method

.method public final setMultiTouchEnabled(Z)Z
    .locals 2

    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez p1, :cond_0

    .line 389
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/canhub/cropper/CropOverlayView$ScaleListener;

    invoke-direct {v1, p0}, Lcom/canhub/cropper/CropOverlayView$ScaleListener;-><init>(Lcom/canhub/cropper/CropOverlayView;)V

    check-cast v1, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {p1, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final setSnapRadius(F)V
    .locals 0

    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->mSnapRadius:F

    return-void
.end method
