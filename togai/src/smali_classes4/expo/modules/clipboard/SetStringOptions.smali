.class public final Lexpo/modules/clipboard/SetStringOptions;
.super Ljava/lang/Object;
.source "ClipboardOptions.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lexpo/modules/clipboard/SetStringOptions;",
        "Lexpo/modules/kotlin/records/Record;",
        "()V",
        "inputFormat",
        "Lexpo/modules/clipboard/StringFormat;",
        "getInputFormat$annotations",
        "getInputFormat",
        "()Lexpo/modules/clipboard/StringFormat;",
        "setInputFormat",
        "(Lexpo/modules/clipboard/StringFormat;)V",
        "expo-clipboard_release"
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
.field private inputFormat:Lexpo/modules/clipboard/StringFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lexpo/modules/clipboard/StringFormat;->PLAIN:Lexpo/modules/clipboard/StringFormat;

    iput-object v0, p0, Lexpo/modules/clipboard/SetStringOptions;->inputFormat:Lexpo/modules/clipboard/StringFormat;

    return-void
.end method

.method public static synthetic getInputFormat$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getInputFormat()Lexpo/modules/clipboard/StringFormat;
    .locals 1

    iget-object v0, p0, Lexpo/modules/clipboard/SetStringOptions;->inputFormat:Lexpo/modules/clipboard/StringFormat;

    return-object v0
.end method

.method public final setInputFormat(Lexpo/modules/clipboard/StringFormat;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lexpo/modules/clipboard/SetStringOptions;->inputFormat:Lexpo/modules/clipboard/StringFormat;

    return-void
.end method
