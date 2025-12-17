.class public final Lexpo/modules/imagepicker/ImagePickerModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "ImagePickerModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImagePickerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagePickerModule.kt\nexpo/modules/imagepicker/ImagePickerModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 7 AsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/AsyncFunctionComponentKt\n+ 8 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 9 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilderKt\n+ 10 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder\n+ 11 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 12 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 13 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 14 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 15 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,306:1\n70#2:307\n14#3:308\n25#3:309\n27#4,3:310\n31#4:552\n245#5:313\n248#5,3:337\n245#5:340\n248#5,3:364\n216#5,8:367\n224#5,2:427\n216#5,8:429\n224#5,2:489\n60#6,5:314\n56#6:319\n47#6,17:320\n60#6,5:341\n56#6:346\n47#6,17:347\n60#6,5:375\n56#6:380\n47#6,17:381\n60#6,5:437\n56#6:442\n47#6,17:443\n60#6,5:493\n56#6:498\n47#6,17:499\n60#6,5:521\n56#6:526\n47#6,17:527\n15#7,6:398\n21#7,19:408\n15#7,6:460\n21#7,19:470\n8#8,4:404\n8#8,4:466\n257#9:491\n257#9:519\n256#9:547\n23#10:492\n26#10,3:516\n23#10:520\n26#10,3:544\n17#10:548\n18#10,2:550\n26#11:549\n26#11:554\n1#12:553\n37#13,2:555\n37#13,2:566\n314#14,9:557\n323#14,2:568\n167#15,3:570\n167#15,3:573\n167#15,3:576\n*S KotlinDebug\n*F\n+ 1 ImagePickerModule.kt\nexpo/modules/imagepicker/ImagePickerModule\n*L\n44#1:307\n44#1:308\n44#1:309\n44#1:310,3\n44#1:552\n49#1:313\n49#1:337,3\n55#1:340\n55#1:364,3\n61#1:367,8\n61#1:427,2\n65#1:429,8\n65#1:489,2\n49#1:314,5\n49#1:319\n49#1:320,17\n55#1:341,5\n55#1:346\n55#1:347,17\n61#1:375,5\n61#1:380\n61#1:381,17\n65#1:437,5\n65#1:442\n65#1:443,17\n69#1:493,5\n69#1:498\n69#1:499,17\n80#1:521,5\n80#1:526\n80#1:527,17\n61#1:398,6\n61#1:408,19\n65#1:460,6\n65#1:470,19\n61#1:404,4\n65#1:466,4\n69#1:491\n80#1:519\n85#1:547\n69#1:492\n69#1:516,3\n80#1:520\n80#1:544,3\n85#1:548\n85#1:550,2\n85#1:549\n254#1:554\n259#1:555,2\n292#1:566,2\n269#1:557,9\n269#1:568,2\n139#1:570,3\n140#1:573,3\n141#1:576,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0008\u0010!\u001a\u00020\"H\u0016J\u000e\u0010#\u001a\u00020$H\u0082@\u00a2\u0006\u0002\u0010%J\u0010\u0010&\u001a\u00020$2\u0006\u0010\'\u001a\u00020(H\u0002J\u001b\u0010)\u001a\u0008\u0012\u0004\u0012\u00020+0*2\u0006\u0010,\u001a\u00020\u0018H\u0002\u00a2\u0006\u0002\u0010-J\u0018\u0010.\u001a\u00020$2\u0006\u0010/\u001a\u00020\n2\u0006\u0010\'\u001a\u00020(H\u0002J4\u00100\u001a\u0002012\u001c\u00102\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n04\u0012\u0006\u0012\u0004\u0018\u000101032\u0006\u0010\'\u001a\u00020(H\u0082@\u00a2\u0006\u0002\u00105J,\u00106\u001a\u0002072\u001c\u00102\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n04\u0012\u0006\u0012\u0004\u0018\u00010103H\u0082@\u00a2\u0006\u0002\u00108R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\n0\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\n0\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00069"
    }
    d2 = {
        "Lexpo/modules/imagepicker/ImagePickerModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "cacheDirectory",
        "Ljava/io/File;",
        "getCacheDirectory",
        "()Ljava/io/File;",
        "cameraLauncher",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;",
        "Lexpo/modules/imagepicker/contracts/CameraContractOptions;",
        "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "cropImageLauncher",
        "Lexpo/modules/imagepicker/contracts/CropImageContractOptions;",
        "currentActivity",
        "Landroid/app/Activity;",
        "getCurrentActivity",
        "()Landroid/app/Activity;",
        "imageLibraryLauncher",
        "Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;",
        "isPickerOpen",
        "",
        "mediaHandler",
        "Lexpo/modules/imagepicker/MediaHandler;",
        "pendingMediaPickingResult",
        "Lexpo/modules/imagepicker/PendingMediaPickingResult;",
        "createPermissionsDecorator",
        "Lexpo/modules/interfaces/permissions/PermissionsResponseListener;",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "ensureCameraPermissionsAreGranted",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ensureTargetActivityIsAvailable",
        "options",
        "Lexpo/modules/imagepicker/ImagePickerOptions;",
        "getMediaLibraryPermissions",
        "",
        "",
        "writeOnly",
        "(Z)[Ljava/lang/String;",
        "handleResultUponActivityDestruction",
        "result",
        "launchContract",
        "",
        "pickerLauncher",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "(Lkotlin/jvm/functions/Function1;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "launchPicker",
        "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "expo-image-picker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private cameraLauncher:Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher<",
            "Lexpo/modules/imagepicker/contracts/CameraContractOptions;",
            "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;",
            ">;"
        }
    .end annotation
.end field

.field private cropImageLauncher:Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher<",
            "Lexpo/modules/imagepicker/contracts/CropImageContractOptions;",
            "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;",
            ">;"
        }
    .end annotation
.end field

.field private imageLibraryLauncher:Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher<",
            "Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;",
            "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;",
            ">;"
        }
    .end annotation
.end field

.field private isPickerOpen:Z

.field private final mediaHandler:Lexpo/modules/imagepicker/MediaHandler;

.field private pendingMediaPickingResult:Lexpo/modules/imagepicker/PendingMediaPickingResult;


# direct methods
.method public static synthetic $r8$lambda$7a4CIXmh11P_dMNUpxvyXS7ypjE(Lexpo/modules/kotlin/Promise;Ljava/lang/ref/WeakReference;Lexpo/modules/imagepicker/ImagePickerModule;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lexpo/modules/imagepicker/ImagePickerModule;->createPermissionsDecorator$lambda$14(Lexpo/modules/kotlin/Promise;Ljava/lang/ref/WeakReference;Lexpo/modules/imagepicker/ImagePickerModule;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 117
    new-instance v0, Lexpo/modules/imagepicker/MediaHandler;

    move-object v1, p0

    check-cast v1, Lexpo/modules/kotlin/providers/AppContextProvider;

    invoke-direct {v0, v1}, Lexpo/modules/imagepicker/MediaHandler;-><init>(Lexpo/modules/kotlin/providers/AppContextProvider;)V

    iput-object v0, p0, Lexpo/modules/imagepicker/ImagePickerModule;->mediaHandler:Lexpo/modules/imagepicker/MediaHandler;

    return-void
.end method

.method public static final synthetic access$createPermissionsDecorator(Lexpo/modules/imagepicker/ImagePickerModule;Lexpo/modules/kotlin/Promise;)Lexpo/modules/interfaces/permissions/PermissionsResponseListener;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lexpo/modules/imagepicker/ImagePickerModule;->createPermissionsDecorator(Lexpo/modules/kotlin/Promise;)Lexpo/modules/interfaces/permissions/PermissionsResponseListener;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ensureCameraPermissionsAreGranted(Lexpo/modules/imagepicker/ImagePickerModule;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lexpo/modules/imagepicker/ImagePickerModule;->ensureCameraPermissionsAreGranted(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ensureTargetActivityIsAvailable(Lexpo/modules/imagepicker/ImagePickerModule;Lexpo/modules/imagepicker/ImagePickerOptions;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lexpo/modules/imagepicker/ImagePickerModule;->ensureTargetActivityIsAvailable(Lexpo/modules/imagepicker/ImagePickerOptions;)V

    return-void
.end method

.method public static final synthetic access$getCacheDirectory(Lexpo/modules/imagepicker/ImagePickerModule;)Ljava/io/File;
    .locals 0

    .line 43
    invoke-direct {p0}, Lexpo/modules/imagepicker/ImagePickerModule;->getCacheDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCameraLauncher$p(Lexpo/modules/imagepicker/ImagePickerModule;)Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;
    .locals 0

    .line 43
    iget-object p0, p0, Lexpo/modules/imagepicker/ImagePickerModule;->cameraLauncher:Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;

    return-object p0
.end method

.method public static final synthetic access$getCropImageLauncher$p(Lexpo/modules/imagepicker/ImagePickerModule;)Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;
    .locals 0

    .line 43
    iget-object p0, p0, Lexpo/modules/imagepicker/ImagePickerModule;->cropImageLauncher:Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;

    return-object p0
.end method

.method public static final synthetic access$getImageLibraryLauncher$p(Lexpo/modules/imagepicker/ImagePickerModule;)Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;
    .locals 0

    .line 43
    iget-object p0, p0, Lexpo/modules/imagepicker/ImagePickerModule;->imageLibraryLauncher:Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;

    return-object p0
.end method

.method public static final synthetic access$getMediaHandler$p(Lexpo/modules/imagepicker/ImagePickerModule;)Lexpo/modules/imagepicker/MediaHandler;
    .locals 0

    .line 43
    iget-object p0, p0, Lexpo/modules/imagepicker/ImagePickerModule;->mediaHandler:Lexpo/modules/imagepicker/MediaHandler;

    return-object p0
.end method

.method public static final synthetic access$getMediaLibraryPermissions(Lexpo/modules/imagepicker/ImagePickerModule;Z)[Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lexpo/modules/imagepicker/ImagePickerModule;->getMediaLibraryPermissions(Z)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPendingMediaPickingResult$p(Lexpo/modules/imagepicker/ImagePickerModule;)Lexpo/modules/imagepicker/PendingMediaPickingResult;
    .locals 0

    .line 43
    iget-object p0, p0, Lexpo/modules/imagepicker/ImagePickerModule;->pendingMediaPickingResult:Lexpo/modules/imagepicker/PendingMediaPickingResult;

    return-object p0
.end method

.method public static final synthetic access$handleResultUponActivityDestruction(Lexpo/modules/imagepicker/ImagePickerModule;Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;Lexpo/modules/imagepicker/ImagePickerOptions;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lexpo/modules/imagepicker/ImagePickerModule;->handleResultUponActivityDestruction(Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;Lexpo/modules/imagepicker/ImagePickerOptions;)V

    return-void
.end method

.method public static final synthetic access$launchContract(Lexpo/modules/imagepicker/ImagePickerModule;Lkotlin/jvm/functions/Function1;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/imagepicker/ImagePickerModule;->launchContract(Lkotlin/jvm/functions/Function1;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$launchPicker(Lexpo/modules/imagepicker/ImagePickerModule;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lexpo/modules/imagepicker/ImagePickerModule;->launchPicker(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCameraLauncher$p(Lexpo/modules/imagepicker/ImagePickerModule;Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule;->cameraLauncher:Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$setCropImageLauncher$p(Lexpo/modules/imagepicker/ImagePickerModule;Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule;->cropImageLauncher:Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$setImageLibraryLauncher$p(Lexpo/modules/imagepicker/ImagePickerModule;Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule;->imageLibraryLauncher:Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$setPendingMediaPickingResult$p(Lexpo/modules/imagepicker/ImagePickerModule;Lexpo/modules/imagepicker/PendingMediaPickingResult;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule;->pendingMediaPickingResult:Lexpo/modules/imagepicker/PendingMediaPickingResult;

    return-void
.end method

.method private final createPermissionsDecorator(Lexpo/modules/kotlin/Promise;)Lexpo/modules/interfaces/permissions/PermissionsResponseListener;
    .locals 2

    .line 137
    invoke-virtual {p0}, Lexpo/modules/imagepicker/ImagePickerModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lexpo/modules/kotlin/UtilsKt;->weak(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 138
    new-instance v1, Lexpo/modules/imagepicker/ImagePickerModule$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0, p0}, Lexpo/modules/imagepicker/ImagePickerModule$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/Promise;Ljava/lang/ref/WeakReference;Lexpo/modules/imagepicker/ImagePickerModule;)V

    return-object v1
.end method

.method private static final createPermissionsDecorator$lambda$14(Lexpo/modules/kotlin/Promise;Ljava/lang/ref/WeakReference;Lexpo/modules/imagepicker/ImagePickerModule;Ljava/util/Map;)V
    .locals 7

    const-string v0, "$promise"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$weakContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 570
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    :cond_0
    move p2, v1

    goto :goto_1

    .line 571
    :cond_1
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/interfaces/permissions/PermissionsResponse;

    invoke-virtual {v2}, Lexpo/modules/interfaces/permissions/PermissionsResponse;->getStatus()Lexpo/modules/interfaces/permissions/PermissionsStatus;

    move-result-object v2

    sget-object v3, Lexpo/modules/interfaces/permissions/PermissionsStatus;->GRANTED:Lexpo/modules/interfaces/permissions/PermissionsStatus;

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    move p2, v0

    .line 140
    :goto_1
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_5

    .line 573
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    .line 574
    :cond_3
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 140
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/interfaces/permissions/PermissionsResponse;

    invoke-virtual {v3}, Lexpo/modules/interfaces/permissions/PermissionsResponse;->getStatus()Lexpo/modules/interfaces/permissions/PermissionsStatus;

    move-result-object v3

    sget-object v4, Lexpo/modules/interfaces/permissions/PermissionsStatus;->DENIED:Lexpo/modules/interfaces/permissions/PermissionsStatus;

    if-ne v3, v4, :cond_5

    goto :goto_2

    :cond_4
    :goto_3
    move v2, v1

    goto :goto_4

    :cond_5
    move v2, v0

    .line 576
    :goto_4
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move v0, v1

    goto :goto_5

    .line 577
    :cond_7
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/interfaces/permissions/PermissionsResponse;

    invoke-virtual {v3}, Lexpo/modules/interfaces/permissions/PermissionsResponse;->getCanAskAgain()Z

    move-result v3

    if-nez v3, :cond_8

    .line 144
    :goto_5
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v3, "expires"

    const-string v4, "never"

    .line 145
    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_9

    .line 149
    sget-object v2, Lexpo/modules/interfaces/permissions/PermissionsStatus;->GRANTED:Lexpo/modules/interfaces/permissions/PermissionsStatus;

    invoke-virtual {v2}, Lexpo/modules/interfaces/permissions/PermissionsStatus;->getStatus()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_9
    if-eqz v2, :cond_a

    .line 150
    sget-object v2, Lexpo/modules/interfaces/permissions/PermissionsStatus;->DENIED:Lexpo/modules/interfaces/permissions/PermissionsStatus;

    invoke-virtual {v2}, Lexpo/modules/interfaces/permissions/PermissionsStatus;->getStatus()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 151
    :cond_a
    sget-object v2, Lexpo/modules/interfaces/permissions/PermissionsStatus;->UNDETERMINED:Lexpo/modules/interfaces/permissions/PermissionsStatus;

    invoke-virtual {v2}, Lexpo/modules/interfaces/permissions/PermissionsStatus;->getStatus()Ljava/lang/String;

    move-result-object v2

    :goto_6
    const-string v3, "status"

    .line 146
    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "canAskAgain"

    .line 154
    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "granted"

    .line 155
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "accessPrivileges"

    if-eqz p2, :cond_b

    const-string p1, "all"

    .line 159
    invoke-virtual {p3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-interface {p0, p3}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    :cond_b
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x22

    const-string v6, "none"

    if-ge p2, v5, :cond_c

    .line 166
    invoke-virtual {p3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-interface {p0, p3}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 172
    :cond_c
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_d

    .line 173
    new-instance p1, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;

    invoke-direct {p1}, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {p0, p1}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    return-void

    :cond_d
    const-string p2, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 179
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_e

    .line 181
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 182
    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    sget-object p1, Lexpo/modules/interfaces/permissions/PermissionsStatus;->GRANTED:Lexpo/modules/interfaces/permissions/PermissionsStatus;

    invoke-virtual {p1}, Lexpo/modules/interfaces/permissions/PermissionsStatus;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "limited"

    .line 184
    invoke-virtual {p3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 186
    :cond_e
    invoke-virtual {p3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_7
    invoke-interface {p0, p3}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method private final ensureCameraPermissionsAreGranted(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 558
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 564
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 565
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 270
    invoke-virtual {p0}, Lexpo/modules/imagepicker/ImagePickerModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/kotlin/AppContext;->getPermissions()Lexpo/modules/interfaces/permissions/Permissions;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 272
    new-instance v4, Lexpo/modules/imagepicker/ImagePickerModule$ensureCameraPermissionsAreGranted$2$1;

    invoke-direct {v4, v1}, Lexpo/modules/imagepicker/ImagePickerModule$ensureCameraPermissionsAreGranted$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v4, Lexpo/modules/interfaces/permissions/PermissionsResponseListener;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    if-ge v5, v6, :cond_0

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    aput-object v5, v1, v6

    const-string v5, "android.permission.CAMERA"

    aput-object v5, v1, v2

    .line 289
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    new-array v2, v6, [Ljava/lang/String;

    .line 567
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 292
    check-cast v1, [Ljava/lang/String;

    .line 289
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 272
    invoke-interface {v3, v4, v1}, Lexpo/modules/interfaces/permissions/Permissions;->askForPermissions(Lexpo/modules/interfaces/permissions/PermissionsResponseListener;[Ljava/lang/String;)V

    .line 568
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 557
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_2

    return-object v0

    .line 569
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 270
    :cond_3
    new-instance p1, Lexpo/modules/core/errors/ModuleNotFoundException;

    const-string v0, "Permissions"

    invoke-direct {p1, v0}, Lexpo/modules/core/errors/ModuleNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final ensureTargetActivityIsAvailable(Lexpo/modules/imagepicker/ImagePickerOptions;)V
    .locals 1

    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lexpo/modules/imagepicker/ImagePickerOptions;->getMediaTypes()Lexpo/modules/imagepicker/MediaTypes;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/imagepicker/MediaTypes;->toCameraIntentAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lexpo/modules/imagepicker/ImagePickerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 265
    :cond_0
    new-instance p1, Lexpo/modules/imagepicker/MissingActivityToHandleIntent;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lexpo/modules/imagepicker/MissingActivityToHandleIntent;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getCacheDirectory()Ljava/io/File;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lexpo/modules/imagepicker/ImagePickerModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private final getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lexpo/modules/imagepicker/ImagePickerModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getActivityProvider()Lexpo/modules/core/interfaces/ActivityProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/core/interfaces/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lexpo/modules/imagepicker/MissingCurrentActivityException;

    invoke-direct {v0}, Lexpo/modules/imagepicker/MissingCurrentActivityException;-><init>()V

    throw v0
.end method

.method private final getMediaLibraryPermissions(Z)[Ljava/lang/String;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    new-array p1, v2, [Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_1

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    aput-object p1, v0, v1

    .line 256
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    new-array v0, v2, [Ljava/lang/String;

    .line 556
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_1
    return-object p1
.end method

.method private final handleResultUponActivityDestruction(Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;Lexpo/modules/imagepicker/ImagePickerOptions;)V
    .locals 1

    .line 230
    instance-of v0, p1, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Lexpo/modules/imagepicker/PendingMediaPickingResult;

    check-cast p1, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;

    invoke-virtual {p1}, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;->getData()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lexpo/modules/imagepicker/PendingMediaPickingResult;-><init>(Ljava/util/List;Lexpo/modules/imagepicker/ImagePickerOptions;)V

    iput-object v0, p0, Lexpo/modules/imagepicker/ImagePickerModule;->pendingMediaPickingResult:Lexpo/modules/imagepicker/PendingMediaPickingResult;

    :cond_0
    return-void
.end method

.method private final launchContract(Lkotlin/jvm/functions/Function1;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lexpo/modules/imagepicker/ImagePickerOptions;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;

    iget v1, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;

    invoke-direct {v0, p0, p3}, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;-><init>(Lexpo/modules/imagepicker/ImagePickerModule;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 196
    iget v2, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lexpo/modules/imagepicker/ImagePickerModule;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p2

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lexpo/modules/imagepicker/ImagePickerOptions;

    iget-object v8, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lexpo/modules/imagepicker/ImagePickerModule;

    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_2

    :cond_3
    iget-object p1, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lexpo/modules/imagepicker/ImagePickerOptions;

    iget-object v8, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lexpo/modules/imagepicker/ImagePickerModule;

    :try_start_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object p1, v8

    goto/16 :goto_5

    :catch_0
    move-object p1, v8

    goto/16 :goto_4

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_3
    iget-boolean p3, p0, Lexpo/modules/imagepicker/ImagePickerModule;->isPickerOpen:Z

    if-eqz p3, :cond_5

    .line 202
    new-instance p1, Lexpo/modules/imagepicker/ImagePickerResponse;

    invoke-direct {p1, v6, v7, v4, v7}, Lexpo/modules/imagepicker/ImagePickerResponse;-><init>(ZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_3
    .catch Landroid/os/OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iput-boolean v5, p0, Lexpo/modules/imagepicker/ImagePickerModule;->isPickerOpen:Z

    return-object p1

    :cond_5
    :try_start_4
    iput-boolean v6, p0, Lexpo/modules/imagepicker/ImagePickerModule;->isPickerOpen:Z

    .line 206
    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p0, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->L$3:Ljava/lang/Object;

    iput v6, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->label:I

    invoke-direct {p0, p1, v0}, Lexpo/modules/imagepicker/ImagePickerModule;->launchPicker(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Landroid/os/OperationCanceledException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v8, p0

    move-object v2, p2

    move-object p2, p3

    move-object p3, p1

    move-object p1, p2

    .line 196
    :goto_1
    :try_start_5
    iput-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 208
    invoke-virtual {v2}, Lexpo/modules/imagepicker/ImagePickerOptions;->getAllowsMultipleSelection()Z

    move-result p1

    if-nez p1, :cond_8

    .line 209
    invoke-virtual {v2}, Lexpo/modules/imagepicker/ImagePickerOptions;->getAllowsEditing()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 210
    iget-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;

    invoke-virtual {p1}, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v6, :cond_8

    .line 211
    iget-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;

    invoke-virtual {p1}, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Lexpo/modules/imagepicker/MediaType;->IMAGE:Lexpo/modules/imagepicker/MediaType;

    if-ne p1, p3, :cond_8

    .line 213
    new-instance p1, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;

    invoke-direct {p1, v8, p2, v2, v7}, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$2;-><init>(Lexpo/modules/imagepicker/ImagePickerModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object v8, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->L$2:Ljava/lang/Object;

    iput-object p2, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->label:I

    invoke-direct {v8, p1, v0}, Lexpo/modules/imagepicker/ImagePickerModule;->launchPicker(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    return-object v1

    :cond_7
    move-object p1, p2

    .line 196
    :goto_2
    iput-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_5
    .catch Landroid/os/OperationCanceledException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_8
    move-object p1, v8

    .line 217
    :try_start_6
    iget-object p3, p1, Lexpo/modules/imagepicker/ImagePickerModule;->mediaHandler:Lexpo/modules/imagepicker/MediaHandler;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;

    invoke-virtual {p2}, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;->getData()Ljava/util/List;

    move-result-object p2

    iput-object p1, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lexpo/modules/imagepicker/ImagePickerModule$launchContract$1;->label:I

    invoke-virtual {p3, p2, v2, v0}, Lexpo/modules/imagepicker/MediaHandler;->readExtras$expo_image_picker_release(Ljava/util/List;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_9

    return-object v1

    .line 221
    :cond_9
    :goto_3
    check-cast p3, Lexpo/modules/imagepicker/ImagePickerResponse;
    :try_end_6
    .catch Landroid/os/OperationCanceledException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iput-boolean v5, p1, Lexpo/modules/imagepicker/ImagePickerModule;->isPickerOpen:Z

    return-object p3

    :catchall_2
    move-exception p2

    move-object p1, p0

    goto :goto_5

    :catch_1
    move-object p1, p0

    .line 219
    :catch_2
    :goto_4
    :try_start_7
    new-instance p2, Lexpo/modules/imagepicker/ImagePickerResponse;

    invoke-direct {p2, v6, v7, v4, v7}, Lexpo/modules/imagepicker/ImagePickerResponse;-><init>(ZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 221
    iput-boolean v5, p1, Lexpo/modules/imagepicker/ImagePickerModule;->isPickerOpen:Z

    return-object p2

    :goto_5
    iput-boolean v5, p1, Lexpo/modules/imagepicker/ImagePickerModule;->isPickerOpen:Z

    throw p2
.end method

.method private final launchPicker(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 240
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lexpo/modules/imagepicker/ImagePickerModule$launchPicker$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lexpo/modules/imagepicker/ImagePickerModule$launchPicker$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 11

    .line 44
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 307
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ModuleDefinition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 307
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    const-string v0, "ExponentImagePicker"

    .line 45
    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 49
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "requestMediaLibraryPermissionsAsync"

    .line 313
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    .line 315
    const-class v4, Ljava/lang/Boolean;

    const/4 v4, 0x1

    new-array v5, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 319
    sget-object v6, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunctionWithPromise$1;->INSTANCE:Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunctionWithPromise$1;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 320
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 321
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/Boolean;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 320
    invoke-direct {v7, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    aput-object v7, v5, v10

    .line 337
    new-instance v6, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunctionWithPromise$2;

    invoke-direct {v6, p0}, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunctionWithPromise$2;-><init>(Lexpo/modules/imagepicker/ImagePickerModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 313
    invoke-direct {v3, v2, v5, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 338
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 55
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getMediaLibraryPermissionsAsync"

    .line 340
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    .line 342
    const-class v5, Ljava/lang/Boolean;

    new-array v5, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 346
    sget-object v6, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunctionWithPromise$3;->INSTANCE:Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunctionWithPromise$3;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 347
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 348
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/Boolean;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v9, v10, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 347
    invoke-direct {v7, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    aput-object v7, v5, v10

    .line 364
    new-instance v6, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunctionWithPromise$4;

    invoke-direct {v6, p0}, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunctionWithPromise$4;-><init>(Lexpo/modules/imagepicker/ImagePickerModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 340
    invoke-direct {v3, v2, v5, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 365
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 61
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "requestCameraPermissionsAsync"

    .line 367
    const-class v3, Lexpo/modules/kotlin/Promise;

    const-class v5, Lexpo/modules/kotlin/Promise;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v5, v10, [Lexpo/modules/kotlin/types/AnyType;

    .line 374
    new-instance v6, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunction$1;

    invoke-direct {v6, p0}, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/imagepicker/ImagePickerModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 368
    invoke-direct {v3, v2, v5, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto/16 :goto_1

    .line 376
    :cond_0
    const-class v3, Lexpo/modules/kotlin/Promise;

    new-array v3, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 380
    sget-object v5, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunction$2;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 381
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 382
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v8, Lexpo/modules/kotlin/Promise;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-direct {v7, v8, v10, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 381
    invoke-direct {v6, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    aput-object v6, v3, v10

    .line 370
    new-instance v5, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunction$3;

    invoke-direct {v5, p0}, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/imagepicker/ImagePickerModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 398
    const-class v6, Lkotlin/Unit;

    .line 402
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 408
    new-instance v6, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v5}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunction;

    :goto_0
    move-object v3, v6

    goto :goto_1

    .line 410
    :cond_1
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 412
    new-instance v6, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v5}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 414
    :cond_2
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 416
    new-instance v6, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v5}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 418
    :cond_3
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 420
    new-instance v6, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v5}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 422
    :cond_4
    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 424
    new-instance v6, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v5}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 426
    :cond_5
    new-instance v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v5}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 427
    :goto_1
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getCameraPermissionsAsync"

    .line 429
    const-class v3, Lexpo/modules/kotlin/Promise;

    const-class v5, Lexpo/modules/kotlin/Promise;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 430
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v5, v10, [Lexpo/modules/kotlin/types/AnyType;

    .line 436
    new-instance v6, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunction$4;

    invoke-direct {v6, p0}, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunction$4;-><init>(Lexpo/modules/imagepicker/ImagePickerModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 430
    invoke-direct {v3, v2, v5, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto/16 :goto_3

    .line 438
    :cond_6
    const-class v3, Lexpo/modules/kotlin/Promise;

    new-array v3, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 442
    sget-object v5, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunction$5;->INSTANCE:Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunction$5;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 443
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 444
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v8, Lexpo/modules/kotlin/Promise;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-direct {v7, v8, v10, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 443
    invoke-direct {v6, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    aput-object v6, v3, v10

    .line 432
    new-instance v5, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunction$6;

    invoke-direct {v5, p0}, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunction$6;-><init>(Lexpo/modules/imagepicker/ImagePickerModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 460
    const-class v6, Lkotlin/Unit;

    .line 464
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 470
    new-instance v6, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v5}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunction;

    :goto_2
    move-object v3, v6

    goto :goto_3

    .line 472
    :cond_7
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 474
    new-instance v6, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v5}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 476
    :cond_8
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 478
    new-instance v6, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v5}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 480
    :cond_9
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 482
    new-instance v6, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v5}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 484
    :cond_a
    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 486
    new-instance v6, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v5}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 488
    :cond_b
    new-instance v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v5}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 489
    :goto_3
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "launchCameraAsync"

    .line 69
    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->AsyncFunction(Ljava/lang/String;)Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;

    move-result-object v0

    .line 492
    new-instance v2, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getName()Ljava/lang/String;

    move-result-object v3

    .line 494
    const-class v5, Lexpo/modules/imagepicker/ImagePickerOptions;

    new-array v5, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 498
    sget-object v6, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$1;->INSTANCE:Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$1;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 499
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 500
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Lexpo/modules/imagepicker/ImagePickerOptions;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v9, v10, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 499
    invoke-direct {v7, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    aput-object v7, v5, v10

    .line 516
    new-instance v6, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;

    const/4 v7, 0x0

    invoke-direct {v6, v7, p0}, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$2;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/imagepicker/ImagePickerModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function3;

    .line 492
    invoke-direct {v2, v3, v5, v6}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function3;)V

    .line 517
    check-cast v2, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    invoke-virtual {v0, v2}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->setAsyncFunctionComponent(Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;)V

    const-string v0, "launchImageLibraryAsync"

    .line 80
    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->AsyncFunction(Ljava/lang/String;)Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;

    move-result-object v0

    .line 520
    new-instance v2, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getName()Ljava/lang/String;

    move-result-object v3

    .line 522
    const-class v5, Lexpo/modules/imagepicker/ImagePickerOptions;

    new-array v4, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 526
    sget-object v5, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$3;->INSTANCE:Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$3;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 527
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 528
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Lexpo/modules/imagepicker/ImagePickerOptions;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v9, v10, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 527
    invoke-direct {v6, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    aput-object v6, v4, v10

    .line 544
    new-instance v5, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$4;

    invoke-direct {v5, v7, p0}, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$4;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/imagepicker/ImagePickerModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function3;

    .line 520
    invoke-direct {v2, v3, v4, v5}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function3;)V

    .line 545
    check-cast v2, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    invoke-virtual {v0, v2}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->setAsyncFunctionComponent(Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;)V

    const-string v0, "getPendingResultAsync"

    .line 85
    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->AsyncFunction(Ljava/lang/String;)Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;

    move-result-object v0

    .line 548
    new-instance v2, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v10, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v5, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$5;

    invoke-direct {v5, v7, p0}, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$Coroutine$5;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/imagepicker/ImagePickerModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function3;

    invoke-direct {v2, v3, v4, v5}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function3;)V

    .line 550
    move-object v3, v2

    check-cast v3, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    invoke-virtual {v0, v3}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->setAsyncFunctionComponent(Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;)V

    .line 548
    check-cast v2, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    .line 95
    new-instance v0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;

    invoke-direct {v0, p0, v7}, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;-><init>(Lexpo/modules/imagepicker/ImagePickerModule;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->RegisterActivityContracts(Lkotlin/jvm/functions/Function2;)V

    .line 307
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 2

    .line 112
    invoke-virtual {p0}, Lexpo/modules/imagepicker/ImagePickerModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "React Application Context is null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
