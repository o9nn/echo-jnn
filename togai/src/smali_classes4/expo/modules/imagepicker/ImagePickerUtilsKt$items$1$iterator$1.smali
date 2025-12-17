.class public final Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1$iterator$1;
.super Ljava/lang/Object;
.source "ImagePickerUtils.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1;->iterator()Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1$iterator$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/content/ClipData$Item;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\t\u0010\u000b\u001a\u00020\u000cH\u0096\u0002J\t\u0010\r\u001a\u00020\u0002H\u0096\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "expo/modules/imagepicker/ImagePickerUtilsKt$items$1$iterator$1",
        "",
        "Landroid/content/ClipData$Item;",
        "count",
        "",
        "getCount",
        "()I",
        "index",
        "getIndex",
        "setIndex",
        "(I)V",
        "hasNext",
        "",
        "next",
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

.field private final count:I

.field private index:I


# direct methods
.method constructor <init>(Landroid/content/ClipData;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1$iterator$1;->$this_items:Landroid/content/ClipData;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p1

    iput p1, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1$iterator$1;->count:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget v0, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1$iterator$1;->count:I

    return v0
.end method

.method public final getIndex()I
    .locals 1

    iget v0, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1$iterator$1;->index:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1$iterator$1;->index:I

    iget v1, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1$iterator$1;->count:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Landroid/content/ClipData$Item;
    .locals 3

    iget-object v0, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1$iterator$1;->$this_items:Landroid/content/ClipData;

    iget v1, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1$iterator$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1$iterator$1;->index:I

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    const-string v1, "getItemAt(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 113
    invoke-virtual {p0}, Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1$iterator$1;->next()Landroid/content/ClipData$Item;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1$iterator$1;->index:I

    return-void
.end method
