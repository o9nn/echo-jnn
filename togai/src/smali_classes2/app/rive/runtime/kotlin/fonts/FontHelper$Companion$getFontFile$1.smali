.class final Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion$getFontFile$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FontHelpers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;->getFontFile(Lapp/rive/runtime/kotlin/fonts/Fonts$Font;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Ljava/io/File;",
        "basePath",
        "",
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
.field final synthetic $font:Lapp/rive/runtime/kotlin/fonts/Fonts$Font;


# direct methods
.method constructor <init>(Lapp/rive/runtime/kotlin/fonts/Fonts$Font;)V
    .locals 0

    iput-object p1, p0, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion$getFontFile$1;->$font:Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const-string v0, "basePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion$getFontFile$1;->$font:Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 169
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion$getFontFile$1;->invoke(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
