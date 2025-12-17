.class public final Lexpo/modules/imagepicker/PendingMediaPickingResult;
.super Ljava/lang/Object;
.source "ImagePickerModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0018\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u001b\u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00040\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0008H\u00c6\u0003J/\u0010\u0010\u001a\u00020\u00002\u001a\u0008\u0002\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00040\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R#\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/imagepicker/PendingMediaPickingResult;",
        "",
        "data",
        "",
        "Lkotlin/Pair;",
        "Lexpo/modules/imagepicker/MediaType;",
        "Landroid/net/Uri;",
        "options",
        "Lexpo/modules/imagepicker/ImagePickerOptions;",
        "(Ljava/util/List;Lexpo/modules/imagepicker/ImagePickerOptions;)V",
        "getData",
        "()Ljava/util/List;",
        "getOptions",
        "()Lexpo/modules/imagepicker/ImagePickerOptions;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lexpo/modules/imagepicker/MediaType;",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private final options:Lexpo/modules/imagepicker/ImagePickerOptions;


# direct methods
.method public constructor <init>(Ljava/util/List;Lexpo/modules/imagepicker/ImagePickerOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lexpo/modules/imagepicker/MediaType;",
            "+",
            "Landroid/net/Uri;",
            ">;>;",
            "Lexpo/modules/imagepicker/ImagePickerOptions;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/imagepicker/PendingMediaPickingResult;->data:Ljava/util/List;

    iput-object p2, p0, Lexpo/modules/imagepicker/PendingMediaPickingResult;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/imagepicker/PendingMediaPickingResult;Ljava/util/List;Lexpo/modules/imagepicker/ImagePickerOptions;ILjava/lang/Object;)Lexpo/modules/imagepicker/PendingMediaPickingResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lexpo/modules/imagepicker/PendingMediaPickingResult;->data:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lexpo/modules/imagepicker/PendingMediaPickingResult;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/imagepicker/PendingMediaPickingResult;->copy(Ljava/util/List;Lexpo/modules/imagepicker/ImagePickerOptions;)Lexpo/modules/imagepicker/PendingMediaPickingResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lexpo/modules/imagepicker/MediaType;",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/imagepicker/PendingMediaPickingResult;->data:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Lexpo/modules/imagepicker/ImagePickerOptions;
    .locals 1

    iget-object v0, p0, Lexpo/modules/imagepicker/PendingMediaPickingResult;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Lexpo/modules/imagepicker/ImagePickerOptions;)Lexpo/modules/imagepicker/PendingMediaPickingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lexpo/modules/imagepicker/MediaType;",
            "+",
            "Landroid/net/Uri;",
            ">;>;",
            "Lexpo/modules/imagepicker/ImagePickerOptions;",
            ")",
            "Lexpo/modules/imagepicker/PendingMediaPickingResult;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/imagepicker/PendingMediaPickingResult;

    invoke-direct {v0, p1, p2}, Lexpo/modules/imagepicker/PendingMediaPickingResult;-><init>(Ljava/util/List;Lexpo/modules/imagepicker/ImagePickerOptions;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/imagepicker/PendingMediaPickingResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/imagepicker/PendingMediaPickingResult;

    iget-object v1, p0, Lexpo/modules/imagepicker/PendingMediaPickingResult;->data:Ljava/util/List;

    iget-object v3, p1, Lexpo/modules/imagepicker/PendingMediaPickingResult;->data:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/imagepicker/PendingMediaPickingResult;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    iget-object p1, p1, Lexpo/modules/imagepicker/PendingMediaPickingResult;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lexpo/modules/imagepicker/MediaType;",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/imagepicker/PendingMediaPickingResult;->data:Ljava/util/List;

    return-object v0
.end method

.method public final getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;
    .locals 1

    iget-object v0, p0, Lexpo/modules/imagepicker/PendingMediaPickingResult;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lexpo/modules/imagepicker/PendingMediaPickingResult;->data:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/imagepicker/PendingMediaPickingResult;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    invoke-virtual {v1}, Lexpo/modules/imagepicker/ImagePickerOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lexpo/modules/imagepicker/PendingMediaPickingResult;->data:Ljava/util/List;

    iget-object v1, p0, Lexpo/modules/imagepicker/PendingMediaPickingResult;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PendingMediaPickingResult(data="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", options="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
