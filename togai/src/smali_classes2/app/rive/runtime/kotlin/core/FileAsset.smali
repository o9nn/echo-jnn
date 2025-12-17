.class public abstract Lapp/rive/runtime/kotlin/core/FileAsset;
.super Lapp/rive/runtime/kotlin/core/NativeObject;
.source "FileAsset.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001B\u0017\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0003H\u0082 J!\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0010\u001a\u00020\u0005H\u0082 J\u0011\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0003H\u0082 J\u0011\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0003H\u0082 J\u000e\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aR\u001b\u0010\u0007\u001a\u00020\u00088FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\r\u001a\u00020\u00088FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u000c\u001a\u0004\u0008\u000e\u0010\nR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0012\u001a\u00020\u00088FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u000c\u001a\u0004\u0008\u0013\u0010\n\u0082\u0001\u0003\u001e\u001f \u00a8\u0006!"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/FileAsset;",
        "Lapp/rive/runtime/kotlin/core/NativeObject;",
        "address",
        "",
        "rendererTypeIdx",
        "",
        "(JI)V",
        "cdnUrl",
        "",
        "getCdnUrl",
        "()Ljava/lang/String;",
        "cdnUrl$delegate",
        "Lkotlin/Lazy;",
        "name",
        "getName",
        "name$delegate",
        "rendererType",
        "Lapp/rive/runtime/kotlin/core/RendererType;",
        "uniqueFilename",
        "getUniqueFilename",
        "uniqueFilename$delegate",
        "cppCDNUrl",
        "cppPointer",
        "cppDecode",
        "",
        "bytes",
        "",
        "cppName",
        "cppUniqueFilename",
        "decode",
        "Lapp/rive/runtime/kotlin/core/AudioAsset;",
        "Lapp/rive/runtime/kotlin/core/FontAsset;",
        "Lapp/rive/runtime/kotlin/core/ImageAsset;",
        "kotlin_release"
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
.field private final cdnUrl$delegate:Lkotlin/Lazy;

.field private final name$delegate:Lkotlin/Lazy;

.field private final rendererType:Lapp/rive/runtime/kotlin/core/RendererType;

.field private final uniqueFilename$delegate:Lkotlin/Lazy;


# direct methods
.method private constructor <init>(JI)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lapp/rive/runtime/kotlin/core/NativeObject;-><init>(J)V

    .line 6
    sget-object p1, Lapp/rive/runtime/kotlin/core/RendererType;->Companion:Lapp/rive/runtime/kotlin/core/RendererType$Companion;

    invoke-virtual {p1, p3}, Lapp/rive/runtime/kotlin/core/RendererType$Companion;->fromIndex(I)Lapp/rive/runtime/kotlin/core/RendererType;

    move-result-object p1

    iput-object p1, p0, Lapp/rive/runtime/kotlin/core/FileAsset;->rendererType:Lapp/rive/runtime/kotlin/core/RendererType;

    .line 12
    new-instance p1, Lapp/rive/runtime/kotlin/core/FileAsset$name$2;

    invoke-direct {p1, p0}, Lapp/rive/runtime/kotlin/core/FileAsset$name$2;-><init>(Lapp/rive/runtime/kotlin/core/FileAsset;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lapp/rive/runtime/kotlin/core/FileAsset;->name$delegate:Lkotlin/Lazy;

    .line 13
    new-instance p1, Lapp/rive/runtime/kotlin/core/FileAsset$uniqueFilename$2;

    invoke-direct {p1, p0}, Lapp/rive/runtime/kotlin/core/FileAsset$uniqueFilename$2;-><init>(Lapp/rive/runtime/kotlin/core/FileAsset;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lapp/rive/runtime/kotlin/core/FileAsset;->uniqueFilename$delegate:Lkotlin/Lazy;

    .line 14
    new-instance p1, Lapp/rive/runtime/kotlin/core/FileAsset$cdnUrl$2;

    invoke-direct {p1, p0}, Lapp/rive/runtime/kotlin/core/FileAsset$cdnUrl$2;-><init>(Lapp/rive/runtime/kotlin/core/FileAsset;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lapp/rive/runtime/kotlin/core/FileAsset;->cdnUrl$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lapp/rive/runtime/kotlin/core/FileAsset;-><init>(JI)V

    return-void
.end method

.method public static final synthetic access$cppCDNUrl(Lapp/rive/runtime/kotlin/core/FileAsset;J)Ljava/lang/String;
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lapp/rive/runtime/kotlin/core/FileAsset;->cppCDNUrl(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$cppName(Lapp/rive/runtime/kotlin/core/FileAsset;J)Ljava/lang/String;
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lapp/rive/runtime/kotlin/core/FileAsset;->cppName(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$cppUniqueFilename(Lapp/rive/runtime/kotlin/core/FileAsset;J)Ljava/lang/String;
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lapp/rive/runtime/kotlin/core/FileAsset;->cppUniqueFilename(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final native cppCDNUrl(J)Ljava/lang/String;
.end method

.method private final native cppDecode(J[BI)Z
.end method

.method private final native cppName(J)Ljava/lang/String;
.end method

.method private final native cppUniqueFilename(J)Ljava/lang/String;
.end method


# virtual methods
.method public final decode([B)Z
    .locals 3

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/FileAsset;->getCppPointer()J

    move-result-wide v0

    iget-object v2, p0, Lapp/rive/runtime/kotlin/core/FileAsset;->rendererType:Lapp/rive/runtime/kotlin/core/RendererType;

    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/core/RendererType;->getValue()I

    move-result v2

    invoke-direct {p0, v0, v1, p1, v2}, Lapp/rive/runtime/kotlin/core/FileAsset;->cppDecode(J[BI)Z

    move-result p1

    return p1
.end method

.method public final getCdnUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/core/FileAsset;->cdnUrl$delegate:Lkotlin/Lazy;

    .line 14
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/core/FileAsset;->name$delegate:Lkotlin/Lazy;

    .line 12
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getUniqueFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/core/FileAsset;->uniqueFilename$delegate:Lkotlin/Lazy;

    .line 13
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
