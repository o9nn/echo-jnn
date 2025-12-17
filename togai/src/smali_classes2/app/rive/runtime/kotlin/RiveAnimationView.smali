.class public Lapp/rive/runtime/kotlin/RiveAnimationView;
.super Lapp/rive/runtime/kotlin/RiveTextureView;
.source "RiveAnimationView.kt"

# interfaces
.implements Lapp/rive/runtime/kotlin/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;,
        Lapp/rive/runtime/kotlin/RiveAnimationView$Companion;,
        Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lapp/rive/runtime/kotlin/RiveTextureView;",
        "Lapp/rive/runtime/kotlin/Observable<",
        "Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRiveAnimationView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RiveAnimationView.kt\napp/rive/runtime/kotlin/RiveAnimationView\n+ 2 RiveTextureView.kt\napp/rive/runtime/kotlin/RiveTextureView\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1144:1\n30#2,8:1145\n1#3:1153\n*S KotlinDebug\n*F\n+ 1 RiveAnimationView.kt\napp/rive/runtime/kotlin/RiveAnimationView\n*L\n170#1:1145,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u000f\u0008\u0016\u0018\u0000 \u00ae\u00012\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002:\u0006\u00ad\u0001\u00ae\u0001\u00af\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0019\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bJ\u000e\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020_J\u0008\u0010`\u001a\u00020aH\u0014J\u0008\u0010b\u001a\u00020cH\u0014J\u0016\u0010d\u001a\u00020]2\u0006\u0010e\u001a\u00020\u00192\u0006\u0010f\u001a\u00020\u0019J\u0016\u0010g\u001a\u00020]2\u0006\u0010f\u001a\u00020\u00192\u0006\u0010h\u001a\u00020\u0019J\u0010\u0010i\u001a\u0004\u0018\u00010\u00192\u0006\u0010j\u001a\u00020\u0019J\u0018\u0010i\u001a\u0004\u0018\u00010\u00192\u0006\u0010j\u001a\u00020\u00192\u0006\u0010h\u001a\u00020\u0019J\r\u0010k\u001a\u0004\u0018\u00010@\u00a2\u0006\u0002\u0010CJ\u001c\u0010l\u001a\u00020]2\u0012\u0010m\u001a\u000e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020]0nH\u0002J$\u0010o\u001a\u00020]2\u0006\u0010p\u001a\u00020\u00192\u0012\u0010m\u001a\u000e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020]0nH\u0002J\u0008\u0010q\u001a\u00020]H\u0014J\u0008\u0010r\u001a\u00020]H\u0014J\u0018\u0010s\u001a\u00020]2\u0006\u0010t\u001a\u00020u2\u0006\u0010v\u001a\u00020uH\u0014J \u0010w\u001a\u00020]2\u0006\u0010x\u001a\u00020y2\u0006\u0010z\u001a\u00020u2\u0006\u0010{\u001a\u00020uH\u0016J \u0010|\u001a\u00020]2\u0006\u0010}\u001a\u00020y2\u0006\u0010z\u001a\u00020u2\u0006\u0010{\u001a\u00020uH\u0016J\u0011\u0010~\u001a\u00020#2\u0007\u0010\u007f\u001a\u00030\u0080\u0001H\u0016J\u0007\u0010\u0081\u0001\u001a\u00020]J\u001b\u0010\u0081\u0001\u001a\u00020]2\u0007\u0010\u0082\u0001\u001a\u00020\u00192\t\u0008\u0002\u0010\u0083\u0001\u001a\u00020#J!\u0010\u0081\u0001\u001a\u00020]2\r\u0010\u0084\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00142\t\u0008\u0002\u0010\u0085\u0001\u001a\u00020#J*\u0010\u0086\u0001\u001a\u00020]2\n\u0008\u0002\u0010\u0087\u0001\u001a\u00030\u0088\u00012\n\u0008\u0002\u0010\u0089\u0001\u001a\u00030\u008a\u00012\t\u0008\u0002\u0010\u008b\u0001\u001a\u00020#J>\u0010\u0086\u0001\u001a\u00020]2\u0007\u0010\u0082\u0001\u001a\u00020\u00192\n\u0008\u0002\u0010\u0087\u0001\u001a\u00030\u0088\u00012\n\u0008\u0002\u0010\u0089\u0001\u001a\u00030\u008a\u00012\t\u0008\u0002\u0010\u0083\u0001\u001a\u00020#2\t\u0008\u0002\u0010\u008b\u0001\u001a\u00020#JD\u0010\u0086\u0001\u001a\u00020]2\r\u0010\u0084\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00142\n\u0008\u0002\u0010\u0087\u0001\u001a\u00030\u0088\u00012\n\u0008\u0002\u0010\u0089\u0001\u001a\u00030\u008a\u00012\t\u0008\u0002\u0010\u0085\u0001\u001a\u00020#2\t\u0008\u0002\u0010\u008b\u0001\u001a\u00020#J\u0011\u0010\u008c\u0001\u001a\u00020]2\u0006\u0010^\u001a\u00020\u0003H\u0016J\u000f\u0010\u008d\u0001\u001a\u00020]2\u0006\u0010^\u001a\u00020_J\u0007\u0010\u008e\u0001\u001a\u00020]J\u0013\u0010\u008f\u0001\u001a\u00020]2\u0008\u0010\u0090\u0001\u001a\u00030\u0091\u0001H\u0007J\u000c\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0091\u0001H\u0007J\u0013\u0010\u0093\u0001\u001a\u00020]2\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u0001J\u001f\u0010\u0096\u0001\u001a\u00020]2\u0006\u0010e\u001a\u00020\u00192\u0006\u0010f\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020#J\u001f\u0010\u0097\u0001\u001a\u00020]2\u0006\u0010f\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020#2\u0006\u0010h\u001a\u00020\u0019J%\u0010\u0098\u0001\u001a\u00020]2\u0016\u0010\u0099\u0001\u001a\u000c\u0012\u0007\u0008\u0001\u0012\u00030\u009b\u00010\u009a\u0001\"\u00030\u009b\u0001\u00a2\u0006\u0003\u0010\u009c\u0001J\u001f\u0010\u009d\u0001\u001a\u00020]2\u0006\u0010e\u001a\u00020\u00192\u0006\u0010f\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020@J\u001f\u0010\u009e\u0001\u001a\u00020]2\u0006\u0010f\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020@2\u0006\u0010h\u001a\u00020\u0019J`\u0010\u009f\u0001\u001a\u00020]2\u0008\u0010\u00a0\u0001\u001a\u00030\u00a1\u00012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u000b\u0008\u0002\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010e\u001a\u0004\u0018\u00010\u00192\u0008\u0008\u0002\u0010$\u001a\u00020#2\u0008\u0008\u0002\u00108\u001a\u0002072\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\n\u0008\u0002\u0010\u0087\u0001\u001a\u00030\u0088\u0001J^\u0010\u00a2\u0001\u001a\u00020]2\u0006\u00103\u001a\u0002042\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u000b\u0008\u0002\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010e\u001a\u0004\u0018\u00010\u00192\u0008\u0008\u0002\u0010$\u001a\u00020#2\u0008\u0008\u0002\u00108\u001a\u0002072\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\n\u0008\u0002\u0010\u0087\u0001\u001a\u00030\u0088\u0001Ja\u0010\u00a3\u0001\u001a\u00020]2\t\u0008\u0001\u0010\u00a4\u0001\u001a\u00020u2\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u000b\u0008\u0002\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010e\u001a\u0004\u0018\u00010\u00192\u0008\u0008\u0002\u0010$\u001a\u00020#2\u0008\u0008\u0002\u00108\u001a\u0002072\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\n\u0008\u0002\u0010\u0087\u0001\u001a\u00030\u0088\u0001J\u0018\u0010\u00a5\u0001\u001a\u00020]2\u0006\u0010j\u001a\u00020\u00192\u0007\u0010\u00a6\u0001\u001a\u00020\u0019J \u0010\u00a5\u0001\u001a\u00020]2\u0006\u0010j\u001a\u00020\u00192\u0007\u0010\u00a6\u0001\u001a\u00020\u00192\u0006\u0010h\u001a\u00020\u0019J\u000f\u0010\u00a7\u0001\u001a\u00020]2\u0006\u0010\u000c\u001a\u00020@J\t\u0010\u00a8\u0001\u001a\u00020]H\u0003J\u0007\u0010\u00a9\u0001\u001a\u00020]J\u001b\u0010\u00a9\u0001\u001a\u00020]2\u0007\u0010\u0082\u0001\u001a\u00020\u00192\t\u0008\u0002\u0010\u0083\u0001\u001a\u00020#J!\u0010\u00a9\u0001\u001a\u00020]2\r\u0010\u0084\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00142\t\u0008\u0002\u0010\u0085\u0001\u001a\u00020#J\t\u0010\u00aa\u0001\u001a\u00020]H\u0003J\u0011\u0010\u00ab\u0001\u001a\u00020]2\u0006\u0010^\u001a\u00020\u0003H\u0016J\t\u0010\u00ac\u0001\u001a\u00020]H\u0002R$\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R(\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00198F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0013\u0010\u001f\u001a\u0004\u0018\u00010 8F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R$\u0010$\u001a\u00020#2\u0006\u0010\u000c\u001a\u00020#8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u000e\u0010)\u001a\u00020*X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010+\u001a\u00020,X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u0014\u00101\u001a\u00020#X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010&R\u0013\u00103\u001a\u0004\u0018\u0001048F\u00a2\u0006\u0006\u001a\u0004\u00085\u00106R$\u00108\u001a\u0002072\u0006\u0010\u000c\u001a\u0002078F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\u0010\u0010=\u001a\u0004\u0018\u00010>X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010?\u001a\u00020#8F\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010&R(\u0010A\u001a\u0004\u0018\u00010@2\u0008\u0010\u000c\u001a\u0004\u0018\u00010@8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER$\u0010F\u001a\u00020@2\u0006\u0010\u000c\u001a\u00020@8F@@X\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR\u0010\u0010K\u001a\u0004\u0018\u00010LX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u00150N8F\u00a2\u0006\u0006\u001a\u0004\u0008O\u0010PR\u0017\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020R0N8F\u00a2\u0006\u0006\u001a\u0004\u0008S\u0010PR\u001c\u0010T\u001a\u00020U8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008V\u0010W\u001a\u0004\u0008X\u0010YR\u0017\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020R0\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008[\u0010\u0017\u00a8\u0006\u00b0\u0001"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/RiveAnimationView;",
        "Lapp/rive/runtime/kotlin/RiveTextureView;",
        "Lapp/rive/runtime/kotlin/Observable;",
        "Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;",
        "builder",
        "Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;",
        "(Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;)V",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "value",
        "Lapp/rive/runtime/kotlin/core/Alignment;",
        "alignment",
        "getAlignment",
        "()Lapp/rive/runtime/kotlin/core/Alignment;",
        "setAlignment",
        "(Lapp/rive/runtime/kotlin/core/Alignment;)V",
        "animations",
        "",
        "Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;",
        "getAnimations",
        "()Ljava/util/List;",
        "name",
        "",
        "artboardName",
        "getArtboardName",
        "()Ljava/lang/String;",
        "setArtboardName",
        "(Ljava/lang/String;)V",
        "artboardRenderer",
        "Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;",
        "getArtboardRenderer",
        "()Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;",
        "",
        "autoplay",
        "getAutoplay",
        "()Z",
        "setAutoplay",
        "(Z)V",
        "bounds",
        "Landroid/graphics/RectF;",
        "controller",
        "Lapp/rive/runtime/kotlin/controllers/RiveFileController;",
        "getController",
        "()Lapp/rive/runtime/kotlin/controllers/RiveFileController;",
        "setController",
        "(Lapp/rive/runtime/kotlin/controllers/RiveFileController;)V",
        "defaultAutoplay",
        "getDefaultAutoplay",
        "file",
        "Lapp/rive/runtime/kotlin/core/File;",
        "getFile",
        "()Lapp/rive/runtime/kotlin/core/File;",
        "Lapp/rive/runtime/kotlin/core/Fit;",
        "fit",
        "getFit",
        "()Lapp/rive/runtime/kotlin/core/Fit;",
        "setFit",
        "(Lapp/rive/runtime/kotlin/core/Fit;)V",
        "frameMetricsListener",
        "Landroid/view/Window$OnFrameMetricsAvailableListener;",
        "isPlaying",
        "",
        "layoutScaleFactor",
        "getLayoutScaleFactor",
        "()Ljava/lang/Float;",
        "setLayoutScaleFactor",
        "(Ljava/lang/Float;)V",
        "layoutScaleFactorAutomatic",
        "getLayoutScaleFactorAutomatic",
        "()F",
        "setLayoutScaleFactorAutomatic$kotlin_release",
        "(F)V",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "playingAnimations",
        "Ljava/util/HashSet;",
        "getPlayingAnimations",
        "()Ljava/util/HashSet;",
        "playingStateMachines",
        "Lapp/rive/runtime/kotlin/core/StateMachineInstance;",
        "getPlayingStateMachines",
        "rendererAttributes",
        "Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;",
        "getRendererAttributes$annotations",
        "()V",
        "getRendererAttributes",
        "()Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;",
        "stateMachines",
        "getStateMachines",
        "addEventListener",
        "",
        "listener",
        "Lapp/rive/runtime/kotlin/controllers/RiveFileController$RiveEventListener;",
        "createObserver",
        "Landroidx/lifecycle/LifecycleObserver;",
        "createRenderer",
        "Lapp/rive/runtime/kotlin/renderers/Renderer;",
        "fireState",
        "stateMachineName",
        "inputName",
        "fireStateAtPath",
        "path",
        "getTextRunValue",
        "textRunName",
        "getVolume",
        "loadFileFromResource",
        "onComplete",
        "Lkotlin/Function1;",
        "loadFromNetwork",
        "url",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "onMeasure",
        "widthMeasureSpec",
        "",
        "heightMeasureSpec",
        "onSurfaceTextureAvailable",
        "surfaceTexture",
        "Landroid/graphics/SurfaceTexture;",
        "width",
        "height",
        "onSurfaceTextureSizeChanged",
        "surface",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "pause",
        "animationName",
        "isStateMachine",
        "animationNames",
        "areStateMachines",
        "play",
        "loop",
        "Lapp/rive/runtime/kotlin/core/Loop;",
        "direction",
        "Lapp/rive/runtime/kotlin/core/Direction;",
        "settleInitialState",
        "registerListener",
        "removeEventListener",
        "reset",
        "restoreControllerState",
        "state",
        "Lapp/rive/runtime/kotlin/controllers/ControllerState;",
        "saveControllerState",
        "setAssetLoader",
        "assetLoader",
        "Lapp/rive/runtime/kotlin/core/FileAssetLoader;",
        "setBooleanState",
        "setBooleanStateAtPath",
        "setMultipleStates",
        "inputs",
        "",
        "Lapp/rive/runtime/kotlin/ChangedInput;",
        "([Lapp/rive/runtime/kotlin/ChangedInput;)V",
        "setNumberState",
        "setNumberStateAtPath",
        "setRiveBytes",
        "bytes",
        "",
        "setRiveFile",
        "setRiveResource",
        "resId",
        "setTextRunValue",
        "textValue",
        "setVolume",
        "startFrameMetrics",
        "stop",
        "stopFrameMetrics",
        "unregisterListener",
        "validateLifecycleOwner",
        "Builder",
        "Companion",
        "RendererAttributes",
        "kotlin_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lapp/rive/runtime/kotlin/RiveAnimationView$Companion;

.field public static final TAG:Ljava/lang/String; = "RiveAnimationView"

.field private static final alignmentIndexDefault:I

.field private static final fitIndexDefault:I

.field private static final loopIndexDefault:I

.field private static final rendererIndexDefault:I

.field public static final shouldLoadCDNAssetsDefault:Z = true

.field public static final traceAnimationsDefault:Z = false


# instance fields
.field private final bounds:Landroid/graphics/RectF;

.field private controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

.field private final defaultAutoplay:Z

.field private frameMetricsListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

.field private lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private final rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;


# direct methods
.method public static synthetic $r8$lambda$CHtzbdorgDF9tBhDJUP7yyH7VMw(Ljava/lang/String;Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-static {p0, p1}, Lapp/rive/runtime/kotlin/RiveAnimationView;->loadFromNetwork$lambda$5(Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jjLxd0R58NXN6eG11Is8IIICteQ(Lkotlin/jvm/functions/Function1;Lapp/rive/runtime/kotlin/core/File;)V
    .locals 0

    invoke-static {p0, p1}, Lapp/rive/runtime/kotlin/RiveAnimationView;->loadFromNetwork$lambda$4(Lkotlin/jvm/functions/Function1;Lapp/rive/runtime/kotlin/core/File;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lapp/rive/runtime/kotlin/RiveAnimationView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lapp/rive/runtime/kotlin/RiveAnimationView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lapp/rive/runtime/kotlin/RiveAnimationView;->Companion:Lapp/rive/runtime/kotlin/RiveAnimationView$Companion;

    .line 62
    sget-object v0, Lapp/rive/runtime/kotlin/core/Alignment;->CENTER:Lapp/rive/runtime/kotlin/core/Alignment;

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/Alignment;->ordinal()I

    move-result v0

    sput v0, Lapp/rive/runtime/kotlin/RiveAnimationView;->alignmentIndexDefault:I

    .line 63
    sget-object v0, Lapp/rive/runtime/kotlin/core/Fit;->CONTAIN:Lapp/rive/runtime/kotlin/core/Fit;

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/Fit;->ordinal()I

    move-result v0

    sput v0, Lapp/rive/runtime/kotlin/RiveAnimationView;->fitIndexDefault:I

    .line 64
    sget-object v0, Lapp/rive/runtime/kotlin/core/Loop;->AUTO:Lapp/rive/runtime/kotlin/core/Loop;

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/Loop;->ordinal()I

    move-result v0

    sput v0, Lapp/rive/runtime/kotlin/RiveAnimationView;->loopIndexDefault:I

    .line 67
    sget-object v0, Lapp/rive/runtime/kotlin/core/Rive;->INSTANCE:Lapp/rive/runtime/kotlin/core/Rive;

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/Rive;->getDefaultRendererType()Lapp/rive/runtime/kotlin/core/RendererType;

    move-result-object v0

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/RendererType;->getValue()I

    move-result v0

    sput v0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererIndexDefault:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 29

    move-object/from16 v1, p0

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct/range {p0 .. p2}, Lapp/rive/runtime/kotlin/RiveTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lapp/rive/runtime/kotlin/RiveAnimationView;->defaultAutoplay:Z

    .line 134
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v1, Lapp/rive/runtime/kotlin/RiveAnimationView;->bounds:Landroid/graphics/RectF;

    .line 170
    move-object v3, v1

    check-cast v3, Lapp/rive/runtime/kotlin/RiveTextureView;

    .line 1145
    invoke-virtual {v3}, Lapp/rive/runtime/kotlin/RiveTextureView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1146
    :goto_0
    instance-of v4, v3, Landroid/content/ContextWrapper;

    if-eqz v4, :cond_1

    .line 1147
    instance-of v4, v3, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1150
    :cond_0
    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1152
    :goto_1
    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    iput-object v3, v1, Lapp/rive/runtime/kotlin/RiveAnimationView;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 269
    sget-object v4, Lapp/rive/runtime/kotlin/R$styleable;->RiveAnimationView:[I

    const/4 v5, 0x0

    move-object/from16 v6, p2

    .line 268
    invoke-virtual {v3, v6, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 272
    :try_start_0
    sget v4, Lapp/rive/runtime/kotlin/R$styleable;->RiveAnimationView_riveResource:I

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 273
    sget v7, Lapp/rive/runtime/kotlin/R$styleable;->RiveAnimationView_riveUrl:I

    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 275
    sget-object v8, Lapp/rive/runtime/kotlin/ResourceType;->Companion:Lapp/rive/runtime/kotlin/ResourceType$Companion;

    if-ne v4, v6, :cond_2

    goto :goto_2

    .line 276
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 275
    :goto_2
    invoke-virtual {v8, v7}, Lapp/rive/runtime/kotlin/ResourceType$Companion;->makeMaybeResource(Ljava/lang/Object;)Lapp/rive/runtime/kotlin/ResourceType;

    move-result-object v4

    .line 279
    sget-object v6, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->Companion:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes$Companion;

    .line 280
    sget v7, Lapp/rive/runtime/kotlin/R$styleable;->RiveAnimationView_riveAssetLoaderClass:I

    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 281
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "getApplicationContext(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v6, v7, v8}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes$Companion;->assetLoaderFrom(Ljava/lang/String;Landroid/content/Context;)Lapp/rive/runtime/kotlin/core/FileAssetLoader;

    move-result-object v6

    .line 284
    sget v7, Lapp/rive/runtime/kotlin/R$styleable;->RiveAnimationView_riveShouldLoadCDNAssets:I

    .line 283
    invoke-virtual {v3, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 290
    sget v7, Lapp/rive/runtime/kotlin/R$styleable;->RiveAnimationView_riveAlignment:I

    sget v8, Lapp/rive/runtime/kotlin/RiveAnimationView;->alignmentIndexDefault:I

    .line 289
    invoke-virtual {v3, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    .line 292
    sget v7, Lapp/rive/runtime/kotlin/R$styleable;->RiveAnimationView_riveFit:I

    sget v8, Lapp/rive/runtime/kotlin/RiveAnimationView;->fitIndexDefault:I

    invoke-virtual {v3, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    .line 294
    sget v7, Lapp/rive/runtime/kotlin/R$styleable;->RiveAnimationView_riveLoop:I

    sget v8, Lapp/rive/runtime/kotlin/RiveAnimationView;->loopIndexDefault:I

    .line 293
    invoke-virtual {v3, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    .line 297
    sget v7, Lapp/rive/runtime/kotlin/R$styleable;->RiveAnimationView_riveAutoPlay:I

    .line 298
    invoke-virtual/range {p0 .. p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getDefaultAutoplay()Z

    move-result v8

    .line 296
    invoke-virtual {v3, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 301
    sget v7, Lapp/rive/runtime/kotlin/R$styleable;->RiveAnimationView_riveTraceAnimations:I

    .line 300
    invoke-virtual {v3, v7, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 303
    sget v5, Lapp/rive/runtime/kotlin/R$styleable;->RiveAnimationView_riveArtboard:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 304
    sget v5, Lapp/rive/runtime/kotlin/R$styleable;->RiveAnimationView_riveAnimation:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 305
    sget v5, Lapp/rive/runtime/kotlin/R$styleable;->RiveAnimationView_riveStateMachine:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 308
    sget v5, Lapp/rive/runtime/kotlin/R$styleable;->RiveAnimationView_riveRenderer:I

    sget v7, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererIndexDefault:I

    .line 307
    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v13

    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 310
    new-instance v5, Lapp/rive/runtime/kotlin/core/FallbackAssetLoader;

    .line 311
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 310
    invoke-direct {v5, v2, v0, v6}, Lapp/rive/runtime/kotlin/core/FallbackAssetLoader;-><init>(Landroid/content/Context;ZLapp/rive/runtime/kotlin/core/FileAssetLoader;)V

    .line 288
    new-instance v0, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    .line 310
    move-object/from16 v20, v5

    check-cast v20, Lapp/rive/runtime/kotlin/core/FileAssetLoader;

    move-object v9, v0

    move-object/from16 v19, v4

    .line 288
    invoke-direct/range {v9 .. v20}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;-><init>(IIIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lapp/rive/runtime/kotlin/ResourceType;Lapp/rive/runtime/kotlin/core/FileAssetLoader;)V

    iput-object v0, v1, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    .line 317
    new-instance v2, Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 318
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getLoop()Lapp/rive/runtime/kotlin/core/Loop;

    move-result-object v22

    .line 319
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getAutoplay()Z

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1c

    const/16 v28, 0x0

    move-object/from16 v21, v2

    .line 317
    invoke-direct/range {v21 .. v28}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;-><init>(Lapp/rive/runtime/kotlin/core/Loop;ZLapp/rive/runtime/kotlin/core/File;Lapp/rive/runtime/kotlin/core/Artboard;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v1, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    iget-object v0, v1, Lapp/rive/runtime/kotlin/RiveAnimationView;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_3

    .line 328
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getLifecycleObserver()Landroidx/lifecycle/LifecycleObserver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_3
    if-eqz v4, :cond_4

    .line 334
    new-instance v0, Lapp/rive/runtime/kotlin/RiveAnimationView$1$1$1;

    invoke-direct {v0, v1}, Lapp/rive/runtime/kotlin/RiveAnimationView$1$1$1;-><init>(Lapp/rive/runtime/kotlin/RiveAnimationView;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->loadFileFromResource(Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :cond_4
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 56
    :cond_0
    invoke-direct {p0, p1, p2}, Lapp/rive/runtime/kotlin/RiveAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;)V
    .locals 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->getContext$kotlin_release()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lapp/rive/runtime/kotlin/RiveAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 347
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getArtboardRenderer()Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    .line 349
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->getRendererType$kotlin_release()Lapp/rive/runtime/kotlin/core/RendererType;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lapp/rive/runtime/kotlin/core/RendererType;->Companion:Lapp/rive/runtime/kotlin/core/RendererType$Companion;

    sget v2, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererIndexDefault:I

    invoke-virtual {v1, v2}, Lapp/rive/runtime/kotlin/core/RendererType$Companion;->fromIndex(I)Lapp/rive/runtime/kotlin/core/RendererType;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setRendererType(Lapp/rive/runtime/kotlin/core/RendererType;)V

    .line 350
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->getAutoplay$kotlin_release()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getDefaultAutoplay()Z

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setAutoplay(Z)V

    .line 351
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->getTraceAnimations$kotlin_release()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setRiveTraceAnimations(Z)V

    .line 352
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->getArtboardName$kotlin_release()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setArtboardName(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->getAnimationName$kotlin_release()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setAnimationName(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->getStateMachineName$kotlin_release()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setStateMachineName(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->getResourceType$kotlin_release()Lapp/rive/runtime/kotlin/ResourceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setResource(Lapp/rive/runtime/kotlin/ResourceType;)V

    .line 357
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getAssetLoader()Lapp/rive/runtime/kotlin/core/FileAssetLoader;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type app.rive.runtime.kotlin.core.FallbackAssetLoader"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lapp/rive/runtime/kotlin/core/FallbackAssetLoader;

    invoke-virtual {v1, p1}, Lapp/rive/runtime/kotlin/core/FallbackAssetLoader;->resetWith$kotlin_release(Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;)V

    .line 358
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->getAlignment$kotlin_release()Lapp/rive/runtime/kotlin/core/Alignment;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getAlignment()Lapp/rive/runtime/kotlin/core/Alignment;

    move-result-object v1

    :cond_3
    invoke-virtual {v0, v1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setAlignment(Lapp/rive/runtime/kotlin/core/Alignment;)V

    .line 359
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->getFit$kotlin_release()Lapp/rive/runtime/kotlin/core/Fit;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getFit()Lapp/rive/runtime/kotlin/core/Fit;

    move-result-object v1

    :cond_4
    invoke-virtual {v0, v1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setFit(Lapp/rive/runtime/kotlin/core/Fit;)V

    .line 360
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$Builder;->getLoop$kotlin_release()Lapp/rive/runtime/kotlin/core/Loop;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getLoop()Lapp/rive/runtime/kotlin/core/Loop;

    move-result-object p1

    :cond_5
    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setLoop(Lapp/rive/runtime/kotlin/core/Loop;)V

    return-void

    .line 347
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$getAlignmentIndexDefault$cp()I
    .locals 1

    sget v0, Lapp/rive/runtime/kotlin/RiveAnimationView;->alignmentIndexDefault:I

    return v0
.end method

.method public static final synthetic access$getFitIndexDefault$cp()I
    .locals 1

    sget v0, Lapp/rive/runtime/kotlin/RiveAnimationView;->fitIndexDefault:I

    return v0
.end method

.method public static final synthetic access$getLoopIndexDefault$cp()I
    .locals 1

    sget v0, Lapp/rive/runtime/kotlin/RiveAnimationView;->loopIndexDefault:I

    return v0
.end method

.method public static final synthetic access$getRendererIndexDefault$cp()I
    .locals 1

    sget v0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererIndexDefault:I

    return v0
.end method

.method public static synthetic getRendererAttributes$annotations()V
    .locals 0

    return-void
.end method

.method private final loadFileFromResource(Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lapp/rive/runtime/kotlin/core/File;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    .line 377
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getResource()Lapp/rive/runtime/kotlin/ResourceType;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "RiveAnimationView"

    const-string v0, "loadResource: no resource to load"

    .line 378
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 380
    :cond_0
    instance-of v1, v0, Lapp/rive/runtime/kotlin/ResourceType$ResourceRiveFile;

    if-eqz v1, :cond_1

    check-cast v0, Lapp/rive/runtime/kotlin/ResourceType$ResourceRiveFile;

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/ResourceType$ResourceRiveFile;->getFile()Lapp/rive/runtime/kotlin/core/File;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 382
    :cond_1
    instance-of v1, v0, Lapp/rive/runtime/kotlin/ResourceType$ResourceUrl;

    if-eqz v1, :cond_2

    check-cast v0, Lapp/rive/runtime/kotlin/ResourceType$ResourceUrl;

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/ResourceType$ResourceUrl;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lapp/rive/runtime/kotlin/RiveAnimationView;->loadFromNetwork(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 383
    :cond_2
    instance-of v1, v0, Lapp/rive/runtime/kotlin/ResourceType$ResourceBytes;

    if-eqz v1, :cond_3

    .line 384
    new-instance v1, Lapp/rive/runtime/kotlin/core/File;

    .line 385
    check-cast v0, Lapp/rive/runtime/kotlin/ResourceType$ResourceBytes;

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/ResourceType$ResourceBytes;->getBytes()[B

    move-result-object v0

    iget-object v2, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    .line 386
    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getRendererType()Lapp/rive/runtime/kotlin/core/RendererType;

    move-result-object v2

    iget-object v3, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    .line 387
    invoke-virtual {v3}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getAssetLoader()Lapp/rive/runtime/kotlin/core/FileAssetLoader;

    move-result-object v3

    .line 384
    invoke-direct {v1, v0, v2, v3}, Lapp/rive/runtime/kotlin/core/File;-><init>([BLapp/rive/runtime/kotlin/core/RendererType;Lapp/rive/runtime/kotlin/core/FileAssetLoader;)V

    .line 389
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/core/File;->release()I

    goto :goto_0

    .line 394
    :cond_3
    instance-of v1, v0, Lapp/rive/runtime/kotlin/ResourceType$ResourceId;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    check-cast v0, Lapp/rive/runtime/kotlin/ResourceType$ResourceId;

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/ResourceType$ResourceId;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;

    .line 395
    new-instance v2, Lapp/rive/runtime/kotlin/core/File;

    .line 396
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    iget-object v3, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    .line 397
    invoke-virtual {v3}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getRendererType()Lapp/rive/runtime/kotlin/core/RendererType;

    move-result-object v3

    iget-object v4, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    .line 398
    invoke-virtual {v4}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getAssetLoader()Lapp/rive/runtime/kotlin/core/FileAssetLoader;

    move-result-object v4

    .line 395
    invoke-direct {v2, v1, v3, v4}, Lapp/rive/runtime/kotlin/core/File;-><init>([BLapp/rive/runtime/kotlin/core/RendererType;Lapp/rive/runtime/kotlin/core/FileAssetLoader;)V

    .line 400
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/core/File;->release()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 394
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :goto_0
    return-void
.end method

.method private final loadFromNetwork(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lapp/rive/runtime/kotlin/core/File;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    const-string v1, "newRequestQueue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    new-instance v1, Lapp/rive/runtime/kotlin/RiveFileRequest;

    iget-object v2, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    .line 411
    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getRendererType()Lapp/rive/runtime/kotlin/core/RendererType;

    move-result-object v4

    .line 409
    new-instance v5, Lapp/rive/runtime/kotlin/RiveAnimationView$$ExternalSyntheticLambda0;

    invoke-direct {v5, p2}, Lapp/rive/runtime/kotlin/RiveAnimationView$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v6, Lapp/rive/runtime/kotlin/RiveAnimationView$$ExternalSyntheticLambda1;

    invoke-direct {v6, p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    .line 417
    invoke-virtual {p2}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getAssetLoader()Lapp/rive/runtime/kotlin/core/FileAssetLoader;

    move-result-object v7

    move-object v2, v1

    move-object v3, p1

    .line 409
    invoke-direct/range {v2 .. v7}, Lapp/rive/runtime/kotlin/RiveFileRequest;-><init>(Ljava/lang/String;Lapp/rive/runtime/kotlin/core/RendererType;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lapp/rive/runtime/kotlin/core/FileAssetLoader;)V

    .line 419
    check-cast v1, Lcom/android/volley/Request;

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private static final loadFromNetwork$lambda$4(Lkotlin/jvm/functions/Function1;Lapp/rive/runtime/kotlin/core/File;)V
    .locals 1

    const-string v0, "$onComplete"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/File;->release()I

    return-void
.end method

.method private static final loadFromNetwork$lambda$5(Ljava/lang/String;Lcom/android/volley/VolleyError;)V
    .locals 2

    const-string p1, "$url"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to download Rive file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic pause$default(Lapp/rive/runtime/kotlin/RiveAnimationView;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 447
    :cond_0
    invoke-virtual {p0, p1, p2}, Lapp/rive/runtime/kotlin/RiveAnimationView;->pause(Ljava/lang/String;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: pause"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic pause$default(Lapp/rive/runtime/kotlin/RiveAnimationView;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 436
    :cond_0
    invoke-virtual {p0, p1, p2}, Lapp/rive/runtime/kotlin/RiveAnimationView;->pause(Ljava/util/List;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: pause"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic play$default(Lapp/rive/runtime/kotlin/RiveAnimationView;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_3

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 506
    sget-object p1, Lapp/rive/runtime/kotlin/core/Loop;->AUTO:Lapp/rive/runtime/kotlin/core/Loop;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 507
    sget-object p2, Lapp/rive/runtime/kotlin/core/Direction;->AUTO:Lapp/rive/runtime/kotlin/core/Direction;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x1

    .line 505
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lapp/rive/runtime/kotlin/RiveAnimationView;->play(Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;Z)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: play"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic play$default(Lapp/rive/runtime/kotlin/RiveAnimationView;Ljava/lang/String;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_4

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 548
    sget-object p2, Lapp/rive/runtime/kotlin/core/Loop;->AUTO:Lapp/rive/runtime/kotlin/core/Loop;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 549
    sget-object p3, Lapp/rive/runtime/kotlin/core/Direction;->AUTO:Lapp/rive/runtime/kotlin/core/Direction;

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const/4 p4, 0x0

    :cond_2
    move v4, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 p5, 0x1

    :cond_3
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    .line 546
    invoke-virtual/range {v0 .. v5}, Lapp/rive/runtime/kotlin/RiveAnimationView;->play(Ljava/lang/String;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZ)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: play"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic play$default(Lapp/rive/runtime/kotlin/RiveAnimationView;Ljava/util/List;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_4

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 524
    sget-object p2, Lapp/rive/runtime/kotlin/core/Loop;->AUTO:Lapp/rive/runtime/kotlin/core/Loop;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 525
    sget-object p3, Lapp/rive/runtime/kotlin/core/Direction;->AUTO:Lapp/rive/runtime/kotlin/core/Direction;

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const/4 p4, 0x0

    :cond_2
    move v4, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 p5, 0x1

    :cond_3
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    .line 522
    invoke-virtual/range {v0 .. v5}, Lapp/rive/runtime/kotlin/RiveAnimationView;->play(Ljava/util/List;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZ)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: play"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic setRiveBytes$default(Lapp/rive/runtime/kotlin/RiveAnimationView;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Lapp/rive/runtime/kotlin/core/Loop;ILjava/lang/Object;)V
    .locals 9

    move/from16 v0, p9

    if-nez p10, :cond_7

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_3

    move-object v4, p0

    .line 751
    iget-object v5, v4, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    invoke-virtual {v5}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getAutoplay()Z

    move-result v5

    goto :goto_3

    :cond_3
    move-object v4, p0

    move v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    .line 752
    sget-object v6, Lapp/rive/runtime/kotlin/core/Fit;->Companion:Lapp/rive/runtime/kotlin/core/Fit$Companion;

    sget v7, Lapp/rive/runtime/kotlin/RiveAnimationView;->fitIndexDefault:I

    invoke-virtual {v6, v7}, Lapp/rive/runtime/kotlin/core/Fit$Companion;->fromIndex(I)Lapp/rive/runtime/kotlin/core/Fit;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    .line 753
    sget-object v7, Lapp/rive/runtime/kotlin/core/Alignment;->Companion:Lapp/rive/runtime/kotlin/core/Alignment$Companion;

    sget v8, Lapp/rive/runtime/kotlin/RiveAnimationView;->alignmentIndexDefault:I

    invoke-virtual {v7, v8}, Lapp/rive/runtime/kotlin/core/Alignment$Companion;->fromIndex(I)Lapp/rive/runtime/kotlin/core/Alignment;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    .line 754
    sget-object v0, Lapp/rive/runtime/kotlin/core/Loop;->Companion:Lapp/rive/runtime/kotlin/core/Loop$Companion;

    sget v8, Lapp/rive/runtime/kotlin/RiveAnimationView;->loopIndexDefault:I

    invoke-virtual {v0, v8}, Lapp/rive/runtime/kotlin/core/Loop$Companion;->fromIndex(I)Lapp/rive/runtime/kotlin/core/Loop;

    move-result-object v0

    goto :goto_6

    :cond_6
    move-object/from16 v0, p8

    :goto_6
    move-object p2, p0

    move-object p3, p1

    move-object p4, v1

    move-object p5, v3

    move-object p6, v2

    move/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v0

    .line 746
    invoke-virtual/range {p2 .. p10}, Lapp/rive/runtime/kotlin/RiveAnimationView;->setRiveBytes([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Lapp/rive/runtime/kotlin/core/Loop;)V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: setRiveBytes"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic setRiveFile$default(Lapp/rive/runtime/kotlin/RiveAnimationView;Lapp/rive/runtime/kotlin/core/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Lapp/rive/runtime/kotlin/core/Loop;ILjava/lang/Object;)V
    .locals 9

    move/from16 v0, p9

    if-nez p10, :cond_7

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_3

    move-object v4, p0

    .line 787
    iget-object v5, v4, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    invoke-virtual {v5}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getAutoplay()Z

    move-result v5

    goto :goto_3

    :cond_3
    move-object v4, p0

    move v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    .line 788
    sget-object v6, Lapp/rive/runtime/kotlin/core/Fit;->Companion:Lapp/rive/runtime/kotlin/core/Fit$Companion;

    sget v7, Lapp/rive/runtime/kotlin/RiveAnimationView;->fitIndexDefault:I

    invoke-virtual {v6, v7}, Lapp/rive/runtime/kotlin/core/Fit$Companion;->fromIndex(I)Lapp/rive/runtime/kotlin/core/Fit;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    .line 789
    sget-object v7, Lapp/rive/runtime/kotlin/core/Alignment;->Companion:Lapp/rive/runtime/kotlin/core/Alignment$Companion;

    sget v8, Lapp/rive/runtime/kotlin/RiveAnimationView;->alignmentIndexDefault:I

    invoke-virtual {v7, v8}, Lapp/rive/runtime/kotlin/core/Alignment$Companion;->fromIndex(I)Lapp/rive/runtime/kotlin/core/Alignment;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    .line 790
    sget-object v0, Lapp/rive/runtime/kotlin/core/Loop;->Companion:Lapp/rive/runtime/kotlin/core/Loop$Companion;

    sget v8, Lapp/rive/runtime/kotlin/RiveAnimationView;->loopIndexDefault:I

    invoke-virtual {v0, v8}, Lapp/rive/runtime/kotlin/core/Loop$Companion;->fromIndex(I)Lapp/rive/runtime/kotlin/core/Loop;

    move-result-object v0

    goto :goto_6

    :cond_6
    move-object/from16 v0, p8

    :goto_6
    move-object p2, p0

    move-object p3, p1

    move-object p4, v1

    move-object p5, v3

    move-object p6, v2

    move/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v0

    .line 782
    invoke-virtual/range {p2 .. p10}, Lapp/rive/runtime/kotlin/RiveAnimationView;->setRiveFile(Lapp/rive/runtime/kotlin/core/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Lapp/rive/runtime/kotlin/core/Loop;)V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: setRiveFile"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic setRiveResource$default(Lapp/rive/runtime/kotlin/RiveAnimationView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Lapp/rive/runtime/kotlin/core/Loop;ILjava/lang/Object;)V
    .locals 9

    move/from16 v0, p9

    if-nez p10, :cond_7

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_3

    move-object v4, p0

    .line 716
    iget-object v5, v4, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    invoke-virtual {v5}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getAutoplay()Z

    move-result v5

    goto :goto_3

    :cond_3
    move-object v4, p0

    move v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    .line 717
    sget-object v6, Lapp/rive/runtime/kotlin/core/Fit;->Companion:Lapp/rive/runtime/kotlin/core/Fit$Companion;

    sget v7, Lapp/rive/runtime/kotlin/RiveAnimationView;->fitIndexDefault:I

    invoke-virtual {v6, v7}, Lapp/rive/runtime/kotlin/core/Fit$Companion;->fromIndex(I)Lapp/rive/runtime/kotlin/core/Fit;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    .line 718
    sget-object v7, Lapp/rive/runtime/kotlin/core/Alignment;->Companion:Lapp/rive/runtime/kotlin/core/Alignment$Companion;

    sget v8, Lapp/rive/runtime/kotlin/RiveAnimationView;->alignmentIndexDefault:I

    invoke-virtual {v7, v8}, Lapp/rive/runtime/kotlin/core/Alignment$Companion;->fromIndex(I)Lapp/rive/runtime/kotlin/core/Alignment;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    .line 719
    sget-object v0, Lapp/rive/runtime/kotlin/core/Loop;->Companion:Lapp/rive/runtime/kotlin/core/Loop$Companion;

    sget v8, Lapp/rive/runtime/kotlin/RiveAnimationView;->loopIndexDefault:I

    invoke-virtual {v0, v8}, Lapp/rive/runtime/kotlin/core/Loop$Companion;->fromIndex(I)Lapp/rive/runtime/kotlin/core/Loop;

    move-result-object v0

    goto :goto_6

    :cond_6
    move-object/from16 v0, p8

    :goto_6
    move-object p2, p0

    move p3, p1

    move-object p4, v1

    move-object p5, v3

    move-object p6, v2

    move/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v0

    .line 711
    invoke-virtual/range {p2 .. p10}, Lapp/rive/runtime/kotlin/RiveAnimationView;->setRiveResource(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Lapp/rive/runtime/kotlin/core/Loop;)V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: setRiveResource"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final startFrameMetrics()V
    .locals 4

    .line 915
    new-instance v0, Lapp/rive/runtime/kotlin/renderers/RendererMetrics;

    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lapp/rive/runtime/kotlin/renderers/RendererMetrics;-><init>(Landroid/app/Activity;)V

    .line 916
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 917
    check-cast v0, Landroid/view/Window$OnFrameMetricsAvailableListener;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 916
    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->frameMetricsListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    return-void
.end method

.method public static synthetic stop$default(Lapp/rive/runtime/kotlin/RiveAnimationView;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 485
    :cond_0
    invoke-virtual {p0, p1, p2}, Lapp/rive/runtime/kotlin/RiveAnimationView;->stop(Ljava/lang/String;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: stop"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic stop$default(Lapp/rive/runtime/kotlin/RiveAnimationView;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 471
    :cond_0
    invoke-virtual {p0, p1, p2}, Lapp/rive/runtime/kotlin/RiveAnimationView;->stop(Ljava/util/List;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: stop"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final stopFrameMetrics()V
    .locals 2

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->frameMetricsListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    if-eqz v0, :cond_0

    .line 929
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    :cond_0
    return-void
.end method

.method private final validateLifecycleOwner()V
    .locals 3

    .line 863
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 865
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v1, :cond_0

    .line 866
    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getLifecycleObserver()Landroidx/lifecycle/LifecycleObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    iput-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_1

    .line 868
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getLifecycleObserver()Landroidx/lifecycle/LifecycleObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final addEventListener(Lapp/rive/runtime/kotlin/controllers/RiveFileController$RiveEventListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 997
    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->addEventListener(Lapp/rive/runtime/kotlin/controllers/RiveFileController$RiveEventListener;)V

    return-void
.end method

.method protected createObserver()Landroidx/lifecycle/LifecycleObserver;
    .locals 4

    .line 848
    new-instance v0, Lapp/rive/runtime/kotlin/RiveViewLifecycleObserver;

    const/4 v1, 0x2

    new-array v1, v1, [Lapp/rive/runtime/kotlin/core/RefCount;

    const/4 v2, 0x0

    iget-object v3, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 849
    aput-object v3, v1, v2

    iget-object v2, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getAssetLoader()Lapp/rive/runtime/kotlin/core/FileAssetLoader;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 848
    invoke-direct {v0, v1}, Lapp/rive/runtime/kotlin/RiveViewLifecycleObserver;-><init>(Ljava/util/List;)V

    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    return-object v0
.end method

.method protected createRenderer()Lapp/rive/runtime/kotlin/renderers/Renderer;
    .locals 4

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    .line 841
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getRiveTraceAnimations()Z

    move-result v0

    iget-object v1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    iget-object v2, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    .line 843
    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getRendererType()Lapp/rive/runtime/kotlin/core/RendererType;

    move-result-object v2

    .line 840
    new-instance v3, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;

    invoke-direct {v3, v0, v2, v1}, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;-><init>(ZLapp/rive/runtime/kotlin/core/RendererType;Lapp/rive/runtime/kotlin/controllers/RiveFileController;)V

    check-cast v3, Lapp/rive/runtime/kotlin/renderers/Renderer;

    return-object v3
.end method

.method public final fireState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "stateMachineName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    .line 583
    invoke-static/range {v1 .. v6}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->fireState$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final fireStateAtPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "inputName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 619
    invoke-virtual {v0, p1, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->fireStateAtPath(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getAlignment()Lapp/rive/runtime/kotlin/core/Alignment;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 98
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getAlignment()Lapp/rive/runtime/kotlin/core/Alignment;

    move-result-object v0

    return-object v0
.end method

.method public final getAnimations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 155
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getAnimations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getArtboardName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 141
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getActiveArtboard()Lapp/rive/runtime/kotlin/core/Artboard;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/Artboard;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getArtboardRenderer()Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;
    .locals 3

    .line 76
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getRenderer()Lapp/rive/runtime/kotlin/renderers/Renderer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, v0, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;

    if-eqz v0, :cond_1

    .line 77
    :goto_0
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getRenderer()Lapp/rive/runtime/kotlin/renderers/Renderer;

    move-result-object v0

    check-cast v0, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;

    return-object v0

    .line 80
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected RiveArtboardRenderer but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getRenderer()Lapp/rive/runtime/kotlin/renderers/Renderer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    const-string v2, "NULL"

    .line 81
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAutoplay()Z
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 148
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getAutoplay()Z

    move-result v0

    return v0
.end method

.method public final getController()Lapp/rive/runtime/kotlin/controllers/RiveFileController;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    return-object v0
.end method

.method public getDefaultAutoplay()Z
    .locals 1

    iget-boolean v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->defaultAutoplay:Z

    return v0
.end method

.method public final getFile()Lapp/rive/runtime/kotlin/core/File;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 130
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getFile()Lapp/rive/runtime/kotlin/core/File;

    move-result-object v0

    return-object v0
.end method

.method public final getFit()Lapp/rive/runtime/kotlin/core/Fit;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 91
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getFit()Lapp/rive/runtime/kotlin/core/Fit;

    move-result-object v0

    return-object v0
.end method

.method public final getLayoutScaleFactor()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 111
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getLayoutScaleFactor()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final getLayoutScaleFactorAutomatic()F
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 122
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getLayoutScaleFactorAutomatic()F

    move-result v0

    return v0
.end method

.method public final getPlayingAnimations()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 163
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getPlayingAnimations()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public final getPlayingStateMachines()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lapp/rive/runtime/kotlin/core/StateMachineInstance;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 167
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getPlayingStateMachines()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public final getRendererAttributes()Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    return-object v0
.end method

.method public final getStateMachines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/StateMachineInstance;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 159
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getStateMachines()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getTextRunValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "textRunName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 653
    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getTextRunValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getTextRunValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "textRunName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 661
    invoke-virtual {v0, p1, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getTextRunValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getVolume()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 685
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getVolume()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final isPlaying()Z
    .locals 3

    .line 692
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getRenderer()Lapp/rive/runtime/kotlin/renderers/Renderer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->isPlaying()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 875
    invoke-super {p0}, Lapp/rive/runtime/kotlin/RiveTextureView;->onAttachedToWindow()V

    .line 876
    invoke-direct {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->validateLifecycleOwner()V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 878
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getFile()Lapp/rive/runtime/kotlin/core/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 879
    new-instance v0, Lapp/rive/runtime/kotlin/RiveAnimationView$onAttachedToWindow$1;

    invoke-direct {v0, p0}, Lapp/rive/runtime/kotlin/RiveAnimationView$onAttachedToWindow$1;-><init>(Lapp/rive/runtime/kotlin/RiveAnimationView;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->loadFileFromResource(Lkotlin/jvm/functions/Function1;)V

    .line 885
    :cond_0
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getRenderer()Lapp/rive/runtime/kotlin/renderers/Renderer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->getTrace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 886
    invoke-direct {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->startFrameMetrics()V

    :cond_1
    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    const/4 v1, 0x1

    .line 888
    invoke-virtual {v0, v1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setActive(Z)V

    .line 890
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getRenderer()Lapp/rive/runtime/kotlin/renderers/Renderer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->start()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    const/4 v1, 0x0

    .line 895
    invoke-virtual {v0, v1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setActive(Z)V

    .line 896
    invoke-direct {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->stopFrameMetrics()V

    .line 897
    invoke-super {p0}, Lapp/rive/runtime/kotlin/RiveTextureView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 935
    invoke-super {p0, p1, p2}, Lapp/rive/runtime/kotlin/RiveTextureView;->onMeasure(II)V

    .line 936
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getRenderer()Lapp/rive/runtime/kotlin/renderers/Renderer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "RiveAnimationView"

    const-string p2, "onMeasure(): Renderer not instantiated yet."

    .line 937
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 940
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 942
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getArtboardBounds()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    goto :goto_0

    .line 943
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 946
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v1, :cond_2

    iget-object p2, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 948
    invoke-virtual {p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getArtboardBounds()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-int p2, p2

    goto :goto_1

    .line 949
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    :goto_1
    iget-object v2, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 954
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setLayoutScaleFactorAutomatic$kotlin_release(F)V

    iget-object v2, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 955
    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getRequireArtboardResize$kotlin_release()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->bounds:Landroid/graphics/RectF;

    int-to-float v3, p1

    int-to-float v4, p2

    const/4 v5, 0x0

    .line 957
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 959
    sget-object v6, Lapp/rive/runtime/kotlin/core/Rive;->INSTANCE:Lapp/rive/runtime/kotlin/core/Rive;

    iget-object v2, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 960
    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getFit()Lapp/rive/runtime/kotlin/core/Fit;

    move-result-object v7

    iget-object v2, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 961
    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getAlignment()Lapp/rive/runtime/kotlin/core/Alignment;

    move-result-object v8

    iget-object v9, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->bounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 963
    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getArtboardBounds()Landroid/graphics/RectF;

    move-result-object v10

    iget-object v2, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 964
    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getLayoutScaleFactorActive$kotlin_release()F

    move-result v11

    .line 959
    invoke-virtual/range {v6 .. v11}, Lapp/rive/runtime/kotlin/core/Rive;->calculateRequiredBounds(Lapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Landroid/graphics/RectF;Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_4

    .line 971
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    goto :goto_2

    .line 970
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_4
    :goto_2
    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_6

    .line 977
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-int p2, p2

    goto :goto_3

    .line 976
    :cond_5
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 979
    :cond_6
    :goto_3
    invoke-virtual {p0, p1, p2}, Lapp/rive/runtime/kotlin/RiveAnimationView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string v0, "surfaceTexture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    invoke-super {p0, p1, p2, p3}, Lapp/rive/runtime/kotlin/RiveTextureView;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    iget-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 373
    new-instance v0, Landroid/graphics/RectF;

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setTargetBounds(Landroid/graphics/RectF;)V

    return-void
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    invoke-super {p0, p1, p2, p3}, Lapp/rive/runtime/kotlin/RiveTextureView;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    iget-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 366
    new-instance v0, Landroid/graphics/RectF;

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setTargetBounds(Landroid/graphics/RectF;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p1, "RiveAnimationView"

    const-string v0, "onTouchEvent(): Renderer not instantiated yet."

    .line 1027
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 1015
    sget-object v2, Lapp/rive/runtime/kotlin/renderers/PointerEvents;->POINTER_UP:Lapp/rive/runtime/kotlin/renderers/PointerEvents;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1014
    invoke-virtual {v0, v2, v3, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->pointerEvent(Lapp/rive/runtime/kotlin/renderers/PointerEvents;FF)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 1011
    sget-object v2, Lapp/rive/runtime/kotlin/renderers/PointerEvents;->POINTER_MOVE:Lapp/rive/runtime/kotlin/renderers/PointerEvents;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1010
    invoke-virtual {v0, v2, v3, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->pointerEvent(Lapp/rive/runtime/kotlin/renderers/PointerEvents;FF)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 1023
    sget-object v2, Lapp/rive/runtime/kotlin/renderers/PointerEvents;->POINTER_UP:Lapp/rive/runtime/kotlin/renderers/PointerEvents;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1022
    invoke-virtual {v0, v2, v3, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->pointerEvent(Lapp/rive/runtime/kotlin/renderers/PointerEvents;FF)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 1019
    sget-object v2, Lapp/rive/runtime/kotlin/renderers/PointerEvents;->POINTER_DOWN:Lapp/rive/runtime/kotlin/renderers/PointerEvents;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1018
    invoke-virtual {v0, v2, v3, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->pointerEvent(Lapp/rive/runtime/kotlin/renderers/PointerEvents;FF)V

    :goto_0
    return v1
.end method

.method public final pause()V
    .locals 1

    .line 424
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getArtboardRenderer()Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->stop()V

    :cond_0
    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 425
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->pause()V

    .line 426
    invoke-direct {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->stopFrameMetrics()V

    return-void
.end method

.method public final pause(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "animationName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 448
    invoke-virtual {v0, p1, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->pause(Ljava/lang/String;Z)V

    return-void
.end method

.method public final pause(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "animationNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 437
    invoke-virtual {v0, p1, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->pause(Ljava/util/List;Z)V

    return-void
.end method

.method public final play(Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;Z)V
    .locals 1

    const-string v0, "loop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    .line 511
    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setLoop(Lapp/rive/runtime/kotlin/core/Loop;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 513
    invoke-virtual {v0, p1, p2, p3}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play(Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;Z)V

    return-void
.end method

.method public final play(Ljava/lang/String;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZ)V
    .locals 8

    const-string v0, "animationName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loop"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 554
    :goto_0
    invoke-virtual {v0, v2}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setAnimationName(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    move-object v1, p1

    .line 555
    :cond_1
    invoke-virtual {v0, v1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setStateMachineName(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0, p2}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setLoop(Lapp/rive/runtime/kotlin/core/Loop;)V

    iget-object v2, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    .line 558
    invoke-virtual/range {v2 .. v7}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play(Ljava/lang/String;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZ)V

    return-void
.end method

.method public final play(Ljava/util/List;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lapp/rive/runtime/kotlin/core/Loop;",
            "Lapp/rive/runtime/kotlin/core/Direction;",
            "ZZ)V"
        }
    .end annotation

    const-string v0, "animationNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loop"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    .line 530
    invoke-virtual {v0, p2}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setLoop(Lapp/rive/runtime/kotlin/core/Loop;)V

    iget-object v1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 532
    invoke-virtual/range {v1 .. v6}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play(Ljava/util/List;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZ)V

    return-void
.end method

.method public registerListener(Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 983
    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->registerListener(Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;)V

    return-void
.end method

.method public bridge synthetic registerListener(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;

    invoke-virtual {p0, p1}, Lapp/rive/runtime/kotlin/RiveAnimationView;->registerListener(Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;)V

    return-void
.end method

.method public final removeEventListener(Lapp/rive/runtime/kotlin/controllers/RiveFileController$RiveEventListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 1002
    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->removeEventListener(Lapp/rive/runtime/kotlin/controllers/RiveFileController$RiveEventListener;)V

    return-void
.end method

.method public final reset()V
    .locals 1

    .line 573
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getArtboardRenderer()Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->reset()V

    :cond_0
    return-void
.end method

.method public final restoreControllerState(Lapp/rive/runtime/kotlin/controllers/ControllerState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 909
    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->restoreControllerState(Lapp/rive/runtime/kotlin/controllers/ControllerState;)V

    return-void
.end method

.method public final saveControllerState()Lapp/rive/runtime/kotlin/controllers/ControllerState;
    .locals 2

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    const/4 v1, 0x0

    .line 903
    invoke-virtual {v0, v1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setResource(Lapp/rive/runtime/kotlin/ResourceType;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 904
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->saveControllerState()Lapp/rive/runtime/kotlin/controllers/ControllerState;

    move-result-object v0

    return-object v0
.end method

.method public final setAlignment(Lapp/rive/runtime/kotlin/core/Alignment;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 101
    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setAlignment(Lapp/rive/runtime/kotlin/core/Alignment;)V

    return-void
.end method

.method public final setArtboardName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 143
    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->selectArtboard(Ljava/lang/String;)V

    return-void
.end method

.method public final setAssetLoader(Lapp/rive/runtime/kotlin/core/FileAssetLoader;)V
    .locals 3

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    .line 820
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getAssetLoader()Lapp/rive/runtime/kotlin/core/FileAssetLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    .line 824
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getAssetLoader()Lapp/rive/runtime/kotlin/core/FileAssetLoader;

    move-result-object v0

    iget-object v1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    .line 825
    invoke-virtual {v1, p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setAssetLoader(Lapp/rive/runtime/kotlin/core/FileAssetLoader;)V

    if-eqz v0, :cond_1

    .line 827
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/FileAssetLoader;->release()I

    :cond_1
    if-eqz p1, :cond_2

    .line 828
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/FileAssetLoader;->acquire()I

    .line 830
    :cond_2
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->getLifecycleObserver()Landroidx/lifecycle/LifecycleObserver;

    move-result-object v1

    instance-of v2, v1, Lapp/rive/runtime/kotlin/RiveViewLifecycleObserver;

    if-eqz v2, :cond_3

    check-cast v1, Lapp/rive/runtime/kotlin/RiveViewLifecycleObserver;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    .line 831
    check-cast v0, Lapp/rive/runtime/kotlin/core/RefCount;

    invoke-virtual {v1, v0}, Lapp/rive/runtime/kotlin/RiveViewLifecycleObserver;->remove(Lapp/rive/runtime/kotlin/core/RefCount;)Z

    :cond_4
    if-eqz p1, :cond_5

    .line 832
    check-cast p1, Lapp/rive/runtime/kotlin/core/RefCount;

    invoke-virtual {v1, p1}, Lapp/rive/runtime/kotlin/RiveViewLifecycleObserver;->insert(Lapp/rive/runtime/kotlin/core/RefCount;)V

    :cond_5
    return-void
.end method

.method public final setAutoplay(Z)V
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 150
    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setAutoplay(Z)V

    return-void
.end method

.method public final setBooleanState(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    const-string v0, "stateMachineName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 594
    invoke-static/range {v1 .. v7}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setBooleanState$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final setBooleanStateAtPath(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "inputName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 630
    invoke-virtual {v0, p1, p2, p3}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setBooleanStateAtPath(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public final setController(Lapp/rive/runtime/kotlin/controllers/RiveFileController;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    return-void
.end method

.method public final setFit(Lapp/rive/runtime/kotlin/core/Fit;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 94
    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setFit(Lapp/rive/runtime/kotlin/core/Fit;)V

    return-void
.end method

.method public final setLayoutScaleFactor(Ljava/lang/Float;)V
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 114
    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setLayoutScaleFactor(Ljava/lang/Float;)V

    return-void
.end method

.method public final setLayoutScaleFactorAutomatic$kotlin_release(F)V
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 125
    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setLayoutScaleFactorAutomatic$kotlin_release(F)V

    return-void
.end method

.method public final varargs setMultipleStates([Lapp/rive/runtime/kotlin/ChangedInput;)V
    .locals 2

    const-string v0, "inputs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 646
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lapp/rive/runtime/kotlin/ChangedInput;

    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->queueInputs$kotlin_release([Lapp/rive/runtime/kotlin/ChangedInput;)V

    return-void
.end method

.method public final setNumberState(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 8

    const-string v0, "stateMachineName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 607
    invoke-static/range {v1 .. v7}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setNumberState$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final setNumberStateAtPath(Ljava/lang/String;FLjava/lang/String;)V
    .locals 1

    const-string v0, "inputName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 641
    invoke-virtual {v0, p1, p2, p3}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setNumberStateAtPath(Ljava/lang/String;FLjava/lang/String;)V

    return-void
.end method

.method public final setRiveBytes([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Lapp/rive/runtime/kotlin/core/Loop;)V
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fit"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignment"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loop"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    .line 757
    invoke-virtual {v0, p2}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setArtboardName(Ljava/lang/String;)V

    .line 758
    invoke-virtual {v0, p3}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setAnimationName(Ljava/lang/String;)V

    .line 759
    invoke-virtual {v0, p4}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setStateMachineName(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v0, p5}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setAutoplay(Z)V

    .line 761
    invoke-virtual {v0, p6}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setFit(Lapp/rive/runtime/kotlin/core/Fit;)V

    .line 762
    invoke-virtual {v0, p7}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setAlignment(Lapp/rive/runtime/kotlin/core/Alignment;)V

    .line 763
    invoke-virtual {v0, p8}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setLoop(Lapp/rive/runtime/kotlin/core/Loop;)V

    .line 764
    sget-object p2, Lapp/rive/runtime/kotlin/ResourceType;->Companion:Lapp/rive/runtime/kotlin/ResourceType$Companion;

    invoke-virtual {p2, p1}, Lapp/rive/runtime/kotlin/ResourceType$Companion;->makeMaybeResource(Ljava/lang/Object;)Lapp/rive/runtime/kotlin/ResourceType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setResource(Lapp/rive/runtime/kotlin/ResourceType;)V

    .line 767
    new-instance p1, Lapp/rive/runtime/kotlin/RiveAnimationView$setRiveBytes$2;

    invoke-direct {p1, p0}, Lapp/rive/runtime/kotlin/RiveAnimationView$setRiveBytes$2;-><init>(Lapp/rive/runtime/kotlin/RiveAnimationView;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/RiveAnimationView;->loadFileFromResource(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setRiveFile(Lapp/rive/runtime/kotlin/core/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Lapp/rive/runtime/kotlin/core/Loop;)V
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fit"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignment"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loop"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 792
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/File;->getRendererType()Lapp/rive/runtime/kotlin/core/RendererType;

    move-result-object v0

    iget-object v1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getRendererType()Lapp/rive/runtime/kotlin/core/RendererType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    .line 798
    invoke-virtual {v0, p2}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setArtboardName(Ljava/lang/String;)V

    .line 799
    invoke-virtual {v0, p3}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setAnimationName(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v0, p4}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setStateMachineName(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v0, p5}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setAutoplay(Z)V

    .line 802
    invoke-virtual {v0, p6}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setFit(Lapp/rive/runtime/kotlin/core/Fit;)V

    .line 803
    invoke-virtual {v0, p7}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setAlignment(Lapp/rive/runtime/kotlin/core/Alignment;)V

    .line 804
    invoke-virtual {v0, p8}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setLoop(Lapp/rive/runtime/kotlin/core/Loop;)V

    .line 805
    sget-object p2, Lapp/rive/runtime/kotlin/ResourceType;->Companion:Lapp/rive/runtime/kotlin/ResourceType$Companion;

    invoke-virtual {p2, p1}, Lapp/rive/runtime/kotlin/ResourceType$Companion;->makeMaybeResource(Ljava/lang/Object;)Lapp/rive/runtime/kotlin/ResourceType;

    move-result-object p2

    invoke-virtual {v0, p2}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setResource(Lapp/rive/runtime/kotlin/ResourceType;)V

    iget-object p2, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 808
    invoke-virtual {p2, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setFile(Lapp/rive/runtime/kotlin/core/File;)V

    iget-object p1, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    iget-object p2, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    .line 809
    invoke-virtual {p1, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setupScene$kotlin_release(Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;)V

    return-void

    .line 793
    :cond_0
    new-instance p2, Lapp/rive/runtime/kotlin/core/errors/RiveException;

    .line 794
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Incompatible Renderer types: file initialized with "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/File;->getRendererType()Lapp/rive/runtime/kotlin/core/RendererType;

    move-result-object p1

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/RendererType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " but View is set up for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    invoke-virtual {p3}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getRendererType()Lapp/rive/runtime/kotlin/core/RendererType;

    move-result-object p3

    invoke-virtual {p3}, Lapp/rive/runtime/kotlin/core/RendererType;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 793
    invoke-direct {p2, p1}, Lapp/rive/runtime/kotlin/core/errors/RiveException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final setRiveResource(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Lapp/rive/runtime/kotlin/core/Loop;)V
    .locals 1

    const-string v0, "fit"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignment"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loop"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->rendererAttributes:Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    .line 722
    invoke-virtual {v0, p2}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setArtboardName(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v0, p3}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setAnimationName(Ljava/lang/String;)V

    .line 724
    invoke-virtual {v0, p4}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setStateMachineName(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v0, p5}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setAutoplay(Z)V

    .line 726
    invoke-virtual {v0, p6}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setFit(Lapp/rive/runtime/kotlin/core/Fit;)V

    .line 727
    invoke-virtual {v0, p7}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setAlignment(Lapp/rive/runtime/kotlin/core/Alignment;)V

    .line 728
    invoke-virtual {v0, p8}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setLoop(Lapp/rive/runtime/kotlin/core/Loop;)V

    .line 729
    sget-object p2, Lapp/rive/runtime/kotlin/ResourceType;->Companion:Lapp/rive/runtime/kotlin/ResourceType$Companion;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lapp/rive/runtime/kotlin/ResourceType$Companion;->makeMaybeResource(Ljava/lang/Object;)Lapp/rive/runtime/kotlin/ResourceType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->setResource(Lapp/rive/runtime/kotlin/ResourceType;)V

    .line 732
    new-instance p1, Lapp/rive/runtime/kotlin/RiveAnimationView$setRiveResource$2;

    invoke-direct {p1, p0}, Lapp/rive/runtime/kotlin/RiveAnimationView$setRiveResource$2;-><init>(Lapp/rive/runtime/kotlin/RiveAnimationView;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/RiveAnimationView;->loadFileFromResource(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setTextRunValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "textRunName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "textValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 671
    invoke-virtual {v0, p1, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setTextRunValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setTextRunValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "textRunName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "textValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 681
    invoke-virtual {v0, p1, p2, p3}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setTextRunValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setVolume(F)V
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 688
    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setVolume(F)V

    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 458
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stopAnimations()V

    .line 459
    invoke-direct {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView;->stopFrameMetrics()V

    return-void
.end method

.method public final stop(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "animationName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 486
    invoke-virtual {v0, p1, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stopAnimations(Ljava/lang/String;Z)V

    return-void
.end method

.method public final stop(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "animationNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 472
    invoke-virtual {v0, p1, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stopAnimations(Ljava/util/List;Z)V

    return-void
.end method

.method public unregisterListener(Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/RiveAnimationView;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 987
    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->unregisterListener(Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;)V

    return-void
.end method

.method public bridge synthetic unregisterListener(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;

    invoke-virtual {p0, p1}, Lapp/rive/runtime/kotlin/RiveAnimationView;->unregisterListener(Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;)V

    return-void
.end method
