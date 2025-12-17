.class public final Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunctionWithPromise$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/ImagePickerModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "[",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/Promise;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 ImagePickerModule.kt\nexpo/modules/imagepicker/ImagePickerModule\n*L\n1#1,505:1\n8#2,4:506\n50#3,4:510\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10\n*L\n246#1:506,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u00012\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "<name for destructuring parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10"
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
.field final synthetic this$0:Lexpo/modules/imagepicker/ImagePickerModule;


# direct methods
.method public constructor <init>(Lexpo/modules/imagepicker/ImagePickerModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 248
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunctionWithPromise$2;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 2

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 245
    aget-object p1, p1, v0

    .line 247
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    .line 510
    invoke-virtual {v0}, Lexpo/modules/imagepicker/ImagePickerModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getPermissions()Lexpo/modules/interfaces/permissions/Permissions;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    .line 511
    invoke-static {v1, p1}, Lexpo/modules/imagepicker/ImagePickerModule;->access$getMediaLibraryPermissions(Lexpo/modules/imagepicker/ImagePickerModule;Z)[Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$lambda$7$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    .line 512
    invoke-static {v1, p2}, Lexpo/modules/imagepicker/ImagePickerModule;->access$createPermissionsDecorator(Lexpo/modules/imagepicker/ImagePickerModule;Lexpo/modules/kotlin/Promise;)Lexpo/modules/interfaces/permissions/PermissionsResponseListener;

    move-result-object p2

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-interface {v0, p2, p1}, Lexpo/modules/interfaces/permissions/Permissions;->askForPermissions(Lexpo/modules/interfaces/permissions/PermissionsResponseListener;[Ljava/lang/String;)V

    return-void

    .line 510
    :cond_0
    new-instance p1, Lexpo/modules/kotlin/exception/Exceptions$PermissionsModuleNotFound;

    invoke-direct {p1}, Lexpo/modules/kotlin/exception/Exceptions$PermissionsModuleNotFound;-><init>()V

    throw p1
.end method
