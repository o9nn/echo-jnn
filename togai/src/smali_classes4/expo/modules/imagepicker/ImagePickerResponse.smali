.class public final Lexpo/modules/imagepicker/ImagePickerResponse;
.super Ljava/lang/Object;
.source "ImagePickerResponse.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001B!\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007R$\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\t\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lexpo/modules/imagepicker/ImagePickerResponse;",
        "Lexpo/modules/kotlin/records/Record;",
        "canceled",
        "",
        "assets",
        "",
        "Lexpo/modules/imagepicker/ImagePickerAsset;",
        "(ZLjava/util/List;)V",
        "getAssets$annotations",
        "()V",
        "getAssets",
        "()Ljava/util/List;",
        "getCanceled$annotations",
        "getCanceled",
        "()Z",
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
.field private final assets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/imagepicker/ImagePickerAsset;",
            ">;"
        }
    .end annotation
.end field

.field private final canceled:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v0}, Lexpo/modules/imagepicker/ImagePickerResponse;-><init>(ZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lexpo/modules/imagepicker/ImagePickerAsset;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lexpo/modules/imagepicker/ImagePickerResponse;->canceled:Z

    iput-object p2, p0, Lexpo/modules/imagepicker/ImagePickerResponse;->assets:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 23
    :cond_1
    invoke-direct {p0, p1, p2}, Lexpo/modules/imagepicker/ImagePickerResponse;-><init>(ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic getAssets$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getCanceled$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getAssets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/imagepicker/ImagePickerAsset;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/imagepicker/ImagePickerResponse;->assets:Ljava/util/List;

    return-object v0
.end method

.method public final getCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/imagepicker/ImagePickerResponse;->canceled:Z

    return v0
.end method
