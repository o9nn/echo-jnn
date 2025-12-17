.class public final Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;
.super Ljava/lang/Object;
.source "ImageLibraryContract.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;",
        "Ljava/io/Serializable;",
        "options",
        "Lexpo/modules/imagepicker/ImagePickerOptions;",
        "(Lexpo/modules/imagepicker/ImagePickerOptions;)V",
        "getOptions",
        "()Lexpo/modules/imagepicker/ImagePickerOptions;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
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
.field private final options:Lexpo/modules/imagepicker/ImagePickerOptions;


# direct methods
.method public constructor <init>(Lexpo/modules/imagepicker/ImagePickerOptions;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;Lexpo/modules/imagepicker/ImagePickerOptions;ILjava/lang/Object;)Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    :cond_0
    invoke-virtual {p0, p1}, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;->copy(Lexpo/modules/imagepicker/ImagePickerOptions;)Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lexpo/modules/imagepicker/ImagePickerOptions;
    .locals 1

    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    return-object v0
.end method

.method public final copy(Lexpo/modules/imagepicker/ImagePickerOptions;)Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;

    invoke-direct {v0, p1}, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;-><init>(Lexpo/modules/imagepicker/ImagePickerOptions;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;

    iget-object v1, p0, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    iget-object p1, p1, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;
    .locals 1

    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    invoke-virtual {v0}, Lexpo/modules/imagepicker/ImagePickerOptions;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ImageLibraryContractOptions(options="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
