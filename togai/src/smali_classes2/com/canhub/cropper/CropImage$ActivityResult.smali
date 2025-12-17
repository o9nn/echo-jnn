.class public Lcom/canhub/cropper/CropImage$ActivityResult;
.super Lcom/canhub/cropper/CropImageView$CropResult;
.source "CropImage.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/canhub/cropper/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropImage$ActivityResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u001a2\u00020\u00012\u00020\u0002:\u0001\u001aBY\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0006\u001a\n\u0018\u00010\u0007j\u0004\u0018\u0001`\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u0011B\u000f\u0008\u0014\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0002\u0010\u0014J\u0008\u0010\u0015\u001a\u00020\u000eH\u0016J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u000eH\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/canhub/cropper/CropImage$ActivityResult;",
        "Lcom/canhub/cropper/CropImageView$CropResult;",
        "Landroid/os/Parcelable;",
        "originalUri",
        "Landroid/net/Uri;",
        "uriContent",
        "error",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "cropPoints",
        "",
        "cropRect",
        "Landroid/graphics/Rect;",
        "rotation",
        "",
        "wholeImageRect",
        "sampleSize",
        "(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;ILandroid/graphics/Rect;I)V",
        "in",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "describeContents",
        "writeToParcel",
        "",
        "dest",
        "flags",
        "Companion",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/canhub/cropper/CropImage$ActivityResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/canhub/cropper/CropImage$ActivityResult$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/canhub/cropper/CropImage$ActivityResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/canhub/cropper/CropImage$ActivityResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/canhub/cropper/CropImage$ActivityResult;->Companion:Lcom/canhub/cropper/CropImage$ActivityResult$Companion;

    .line 243
    new-instance v0, Lcom/canhub/cropper/CropImage$ActivityResult$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/canhub/cropper/CropImage$ActivityResult$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/canhub/cropper/CropImage$ActivityResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;ILandroid/graphics/Rect;I)V
    .locals 11

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 206
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    move/from16 v9, p6

    move/from16 v10, p8

    .line 200
    invoke-direct/range {v0 .. v10}, Lcom/canhub/cropper/CropImageView$CropResult;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 12

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 215
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    const/4 v4, 0x0

    .line 217
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/Uri;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Exception;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 220
    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/graphics/Rect;

    .line 221
    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/graphics/Rect;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object v1, p0

    .line 213
    invoke-direct/range {v1 .. v11}, Lcom/canhub/cropper/CropImageView$CropResult;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImage$ActivityResult;->getOriginalUri()Landroid/net/Uri;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 228
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImage$ActivityResult;->getUriContent()Landroid/net/Uri;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 229
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImage$ActivityResult;->getError()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 230
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImage$ActivityResult;->getCropPoints()[F

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 231
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImage$ActivityResult;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 232
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImage$ActivityResult;->getWholeImageRect()Landroid/graphics/Rect;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 233
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImage$ActivityResult;->getRotation()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImage$ActivityResult;->getSampleSize()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
