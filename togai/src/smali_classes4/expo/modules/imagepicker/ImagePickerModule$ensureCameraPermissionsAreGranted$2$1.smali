.class final Lexpo/modules/imagepicker/ImagePickerModule$ensureCameraPermissionsAreGranted$2$1;
.super Ljava/lang/Object;
.source "ImagePickerModule.kt"

# interfaces
.implements Lexpo/modules/interfaces/permissions/PermissionsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/ImagePickerModule;->ensureCameraPermissionsAreGranted(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0000\u0010\u0000\u001a\u00020\u00012F\u0010\u0002\u001aB\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00060\u0006 \u0005* \u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00060\u0006\u0018\u00010\u00070\u0003H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "permissionsResponse",
        "",
        "",
        "kotlin.jvm.PlatformType",
        "Lexpo/modules/interfaces/permissions/PermissionsResponse;",
        "",
        "onResult"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule$ensureCameraPermissionsAreGranted$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/interfaces/permissions/PermissionsResponse;",
            ">;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "android.permission.CAMERA"

    const/4 v3, 0x0

    if-lt v0, v1, :cond_2

    .line 275
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/interfaces/permissions/PermissionsResponse;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lexpo/modules/interfaces/permissions/PermissionsResponse;->getStatus()Lexpo/modules/interfaces/permissions/PermissionsStatus;

    move-result-object v3

    :cond_0
    sget-object p1, Lexpo/modules/interfaces/permissions/PermissionsStatus;->GRANTED:Lexpo/modules/interfaces/permissions/PermissionsStatus;

    if-ne v3, p1, :cond_1

    iget-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule$ensureCameraPermissionsAreGranted$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 276
    check-cast p1, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule$ensureCameraPermissionsAreGranted$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 278
    check-cast p1, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Lexpo/modules/imagepicker/UserRejectedPermissionsException;

    invoke-direct {v0}, Lexpo/modules/imagepicker/UserRejectedPermissionsException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 281
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/interfaces/permissions/PermissionsResponse;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lexpo/modules/interfaces/permissions/PermissionsResponse;->getStatus()Lexpo/modules/interfaces/permissions/PermissionsStatus;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v3

    :goto_0
    sget-object v1, Lexpo/modules/interfaces/permissions/PermissionsStatus;->GRANTED:Lexpo/modules/interfaces/permissions/PermissionsStatus;

    if-ne v0, v1, :cond_5

    .line 282
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/interfaces/permissions/PermissionsResponse;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lexpo/modules/interfaces/permissions/PermissionsResponse;->getStatus()Lexpo/modules/interfaces/permissions/PermissionsStatus;

    move-result-object v3

    :cond_4
    sget-object p1, Lexpo/modules/interfaces/permissions/PermissionsStatus;->GRANTED:Lexpo/modules/interfaces/permissions/PermissionsStatus;

    if-ne v3, p1, :cond_5

    iget-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule$ensureCameraPermissionsAreGranted$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 284
    check-cast p1, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule$ensureCameraPermissionsAreGranted$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 286
    check-cast p1, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Lexpo/modules/imagepicker/UserRejectedPermissionsException;

    invoke-direct {v0}, Lexpo/modules/imagepicker/UserRejectedPermissionsException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
