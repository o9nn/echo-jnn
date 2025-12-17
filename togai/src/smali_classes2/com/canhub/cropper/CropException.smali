.class public abstract Lcom/canhub/cropper/CropException;
.super Ljava/lang/Exception;
.source "CropException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropException$Cancellation;,
        Lcom/canhub/cropper/CropException$FailedToLoadBitmap;,
        Lcom/canhub/cropper/CropException$FailedToDecodeImage;,
        Lcom/canhub/cropper/CropException$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u00072\u00060\u0001j\u0002`\u0002:\u0004\u0006\u0007\u0008\tB\u000f\u0008\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005\u0082\u0001\u0003\n\u000b\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/canhub/cropper/CropException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "message",
        "",
        "(Ljava/lang/String;)V",
        "Cancellation",
        "Companion",
        "FailedToDecodeImage",
        "FailedToLoadBitmap",
        "Lcom/canhub/cropper/CropException$Cancellation;",
        "Lcom/canhub/cropper/CropException$FailedToDecodeImage;",
        "Lcom/canhub/cropper/CropException$FailedToLoadBitmap;",
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
.field public static final Companion:Lcom/canhub/cropper/CropException$Companion;

.field public static final EXCEPTION_PREFIX:Ljava/lang/String; = "crop:"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/canhub/cropper/CropException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/canhub/cropper/CropException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/canhub/cropper/CropException;->Companion:Lcom/canhub/cropper/CropException$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropException;-><init>(Ljava/lang/String;)V

    return-void
.end method
