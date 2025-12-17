.class final Lexpo/modules/clipboard/ClipboardImageKt$ensureExists$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ClipboardImage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/clipboard/ClipboardImageKt;->ensureExists(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
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
.field final synthetic $this_ensureExists:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/clipboard/ClipboardImageKt$ensureExists$2;->$this_ensureExists:Ljava/io/File;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lexpo/modules/clipboard/ClipboardImageKt$ensureExists$2;->$this_ensureExists:Ljava/io/File;

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    iget-object v0, p0, Lexpo/modules/clipboard/ClipboardImageKt$ensureExists$2;->$this_ensureExists:Ljava/io/File;

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 159
    invoke-virtual {p0}, Lexpo/modules/clipboard/ClipboardImageKt$ensureExists$2;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
