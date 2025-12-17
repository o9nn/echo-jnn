.class public final Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1;
.super Ljava/lang/Object;
.source "ImagePickerUtils.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/ImagePickerUtilsKt;->getItems(Landroid/content/ClipData;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/content/ClipData$Item;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003*\u0002\u0000\u0004\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u000e\u0010\u0003\u001a\u00020\u0004H\u0096\u0002\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "expo/modules/imagepicker/ImagePickerUtilsKt$items$1",
        "",
        "Landroid/content/ClipData$Item;",
        "iterator",
        "expo/modules/imagepicker/ImagePickerUtilsKt$items$1$iterator$1",
        "()Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1$iterator$1;",
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
.field final synthetic $this_items:Landroid/content/ClipData;


# direct methods
.method constructor <init>(Landroid/content/ClipData;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1;->$this_items:Landroid/content/ClipData;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1$iterator$1;
    .locals 2

    .line 113
    new-instance v0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1$iterator$1;

    iget-object v1, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1;->$this_items:Landroid/content/ClipData;

    invoke-direct {v0, v1}, Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1$iterator$1;-><init>(Landroid/content/ClipData;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1;->iterator()Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1$iterator$1;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
