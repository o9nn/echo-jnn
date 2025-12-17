.class public final Lcom/reactnativeimagecolors/Config;
.super Ljava/lang/Object;
.source "ImageColorsModule.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007R*\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\n\u0010\u0002\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u00020\u000e8\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u0002\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/reactnativeimagecolors/Config;",
        "Lexpo/modules/kotlin/records/Record;",
        "()V",
        "fallback",
        "",
        "getFallback$annotations",
        "getFallback",
        "()Ljava/lang/String;",
        "headers",
        "",
        "getHeaders$annotations",
        "getHeaders",
        "()Ljava/util/Map;",
        "pixelSpacing",
        "",
        "getPixelSpacing$annotations",
        "getPixelSpacing",
        "()I",
        "react-native-image-colors_release"
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
.field private final fallback:Ljava/lang/String;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pixelSpacing:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#000000"

    iput-object v0, p0, Lcom/reactnativeimagecolors/Config;->fallback:Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, p0, Lcom/reactnativeimagecolors/Config;->pixelSpacing:I

    return-void
.end method

.method public static synthetic getFallback$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getHeaders$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getPixelSpacing$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getFallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/reactnativeimagecolors/Config;->fallback:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/reactnativeimagecolors/Config;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getPixelSpacing()I
    .locals 1

    iget v0, p0, Lcom/reactnativeimagecolors/Config;->pixelSpacing:I

    return v0
.end method
