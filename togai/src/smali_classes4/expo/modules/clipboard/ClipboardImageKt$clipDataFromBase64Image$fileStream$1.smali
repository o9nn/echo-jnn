.class final Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$fileStream$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ClipboardImage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/clipboard/ClipboardImageKt;->clipDataFromBase64Image(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/io/FileOutputStream;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/io/FileOutputStream;",
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
.field final synthetic $file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$fileStream$1;->$file:Ljava/io/File;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/io/FileOutputStream;
    .locals 3

    .line 106
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$fileStream$1;->$file:Ljava/io/File;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$fileStream$1;->invoke()Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method
