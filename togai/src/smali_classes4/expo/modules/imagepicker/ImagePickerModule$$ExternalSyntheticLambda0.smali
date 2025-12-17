.class public final synthetic Lexpo/modules/imagepicker/ImagePickerModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lexpo/modules/interfaces/permissions/PermissionsResponseListener;


# instance fields
.field public final synthetic f$0:Lexpo/modules/kotlin/Promise;

.field public final synthetic f$1:Ljava/lang/ref/WeakReference;

.field public final synthetic f$2:Lexpo/modules/imagepicker/ImagePickerModule;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/kotlin/Promise;Ljava/lang/ref/WeakReference;Lexpo/modules/imagepicker/ImagePickerModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/kotlin/Promise;

    iput-object p2, p0, Lexpo/modules/imagepicker/ImagePickerModule$$ExternalSyntheticLambda0;->f$1:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lexpo/modules/imagepicker/ImagePickerModule$$ExternalSyntheticLambda0;->f$2:Lexpo/modules/imagepicker/ImagePickerModule;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lexpo/modules/imagepicker/ImagePickerModule$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/kotlin/Promise;

    iget-object v1, p0, Lexpo/modules/imagepicker/ImagePickerModule$$ExternalSyntheticLambda0;->f$1:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lexpo/modules/imagepicker/ImagePickerModule$$ExternalSyntheticLambda0;->f$2:Lexpo/modules/imagepicker/ImagePickerModule;

    invoke-static {v0, v1, v2, p1}, Lexpo/modules/imagepicker/ImagePickerModule;->$r8$lambda$7a4CIXmh11P_dMNUpxvyXS7ypjE(Lexpo/modules/kotlin/Promise;Ljava/lang/ref/WeakReference;Lexpo/modules/imagepicker/ImagePickerModule;Ljava/util/Map;)V

    return-void
.end method
