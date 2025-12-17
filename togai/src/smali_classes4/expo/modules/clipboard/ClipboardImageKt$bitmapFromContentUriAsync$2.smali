.class final Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ClipboardImage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/clipboard/ClipboardImageKt;->bitmapFromContentUriAsync(Landroid/content/Context;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Bitmap;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $imageUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$2;->$imageUri:Landroid/net/Uri;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$2;->$context:Landroid/content/Context;

    .line 131
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$2;->$imageUri:Landroid/net/Uri;

    .line 139
    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    const-string v1, "createSource(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-static {v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$2;->invoke()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
