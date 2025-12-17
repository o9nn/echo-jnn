.class public final Lexpo/modules/clipboard/ClipboardModuleKt;
.super Ljava/lang/Object;
.source "ClipboardModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\u0001H\u0002\u001a\u0014\u0010\r\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0003\u001a\n \u0004*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0018\u0010\u0006\u001a\u00020\u0007*\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "CLIPBOARD_CHANGED_EVENT_NAME",
        "",
        "CLIPBOARD_DIRECTORY_NAME",
        "TAG",
        "kotlin.jvm.PlatformType",
        "moduleName",
        "hasTextContent",
        "",
        "Landroid/content/ClipDescription;",
        "getHasTextContent",
        "(Landroid/content/ClipDescription;)Z",
        "plainTextFromHtml",
        "htmlContent",
        "coerceToPlainText",
        "Landroid/content/ClipData$Item;",
        "context",
        "Landroid/content/Context;",
        "expo-clipboard_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CLIPBOARD_CHANGED_EVENT_NAME:Ljava/lang/String; = "onClipboardChanged"

.field public static final CLIPBOARD_DIRECTORY_NAME:Ljava/lang/String; = ".clipboard"

.field private static final TAG:Ljava/lang/String;

.field private static final moduleName:Ljava/lang/String; = "ExpoClipboard"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lexpo/modules/clipboard/ClipboardModule;

    const-string v0, "ClipboardModule"

    sput-object v0, Lexpo/modules/clipboard/ClipboardModuleKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$coerceToPlainText(Landroid/content/ClipData$Item;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lexpo/modules/clipboard/ClipboardModuleKt;->coerceToPlainText(Landroid/content/ClipData$Item;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHasTextContent(Landroid/content/ClipDescription;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lexpo/modules/clipboard/ClipboardModuleKt;->getHasTextContent(Landroid/content/ClipDescription;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lexpo/modules/clipboard/ClipboardModuleKt;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$plainTextFromHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lexpo/modules/clipboard/ClipboardModuleKt;->plainTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final coerceToPlainText(Landroid/content/ClipData$Item;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 247
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getHtmlText(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lexpo/modules/clipboard/ClipboardModuleKt;->plainTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final getHasTextContent(Landroid/content/ClipDescription;)Z
    .locals 1

    const-string v0, "text/plain"

    .line 257
    invoke-virtual {p0, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "text/html"

    .line 258
    invoke-virtual {p0, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static final plainTextFromHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 222
    invoke-static {p0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    .line 221
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 227
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    new-array v1, v1, [C

    .line 228
    move-object v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result p0

    invoke-static {v2, v0, p0, v1, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 229
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method
