.class public final Lexpo/modules/imagepicker/contracts/CameraContractOptions;
.super Ljava/lang/Object;
.source "CameraContract.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lexpo/modules/imagepicker/contracts/CameraContractOptions;",
        "Ljava/io/Serializable;",
        "uri",
        "",
        "options",
        "Lexpo/modules/imagepicker/ImagePickerOptions;",
        "(Ljava/lang/String;Lexpo/modules/imagepicker/ImagePickerOptions;)V",
        "getOptions",
        "()Lexpo/modules/imagepicker/ImagePickerOptions;",
        "getUri",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field private final options:Lexpo/modules/imagepicker/ImagePickerOptions;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lexpo/modules/imagepicker/ImagePickerOptions;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->uri:Ljava/lang/String;

    iput-object p2, p0, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/imagepicker/contracts/CameraContractOptions;Ljava/lang/String;Lexpo/modules/imagepicker/ImagePickerOptions;ILjava/lang/Object;)Lexpo/modules/imagepicker/contracts/CameraContractOptions;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->uri:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->copy(Ljava/lang/String;Lexpo/modules/imagepicker/ImagePickerOptions;)Lexpo/modules/imagepicker/contracts/CameraContractOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lexpo/modules/imagepicker/ImagePickerOptions;
    .locals 1

    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lexpo/modules/imagepicker/ImagePickerOptions;)Lexpo/modules/imagepicker/contracts/CameraContractOptions;
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/imagepicker/contracts/CameraContractOptions;

    invoke-direct {v0, p1, p2}, Lexpo/modules/imagepicker/contracts/CameraContractOptions;-><init>(Ljava/lang/String;Lexpo/modules/imagepicker/ImagePickerOptions;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/imagepicker/contracts/CameraContractOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/imagepicker/contracts/CameraContractOptions;

    iget-object v1, p0, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->uri:Ljava/lang/String;

    iget-object v3, p1, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->uri:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    iget-object p1, p1, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;
    .locals 1

    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    invoke-virtual {v1}, Lexpo/modules/imagepicker/ImagePickerOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->uri:Ljava/lang/String;

    iget-object v1, p0, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CameraContractOptions(uri="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
