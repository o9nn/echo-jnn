.class public final enum Lexpo/modules/clipboard/StringFormat;
.super Ljava/lang/Enum;
.source "ClipboardOptions.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/clipboard/StringFormat;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lexpo/modules/clipboard/StringFormat;",
        "",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "jsValue",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getJsValue",
        "()Ljava/lang/String;",
        "PLAIN",
        "HTML",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lexpo/modules/clipboard/StringFormat;

.field public static final enum HTML:Lexpo/modules/clipboard/StringFormat;

.field public static final enum PLAIN:Lexpo/modules/clipboard/StringFormat;


# instance fields
.field private final jsValue:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/clipboard/StringFormat;
    .locals 2

    sget-object v0, Lexpo/modules/clipboard/StringFormat;->PLAIN:Lexpo/modules/clipboard/StringFormat;

    sget-object v1, Lexpo/modules/clipboard/StringFormat;->HTML:Lexpo/modules/clipboard/StringFormat;

    filled-new-array {v0, v1}, [Lexpo/modules/clipboard/StringFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 44
    new-instance v0, Lexpo/modules/clipboard/StringFormat;

    const/4 v1, 0x0

    const-string v2, "plainText"

    const-string v3, "PLAIN"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/clipboard/StringFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/clipboard/StringFormat;->PLAIN:Lexpo/modules/clipboard/StringFormat;

    .line 45
    new-instance v0, Lexpo/modules/clipboard/StringFormat;

    const/4 v1, 0x1

    const-string v2, "html"

    const-string v3, "HTML"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/clipboard/StringFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/clipboard/StringFormat;->HTML:Lexpo/modules/clipboard/StringFormat;

    invoke-static {}, Lexpo/modules/clipboard/StringFormat;->$values()[Lexpo/modules/clipboard/StringFormat;

    move-result-object v0

    sput-object v0, Lexpo/modules/clipboard/StringFormat;->$VALUES:[Lexpo/modules/clipboard/StringFormat;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/clipboard/StringFormat;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/clipboard/StringFormat;->jsValue:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/clipboard/StringFormat;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/clipboard/StringFormat;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/clipboard/StringFormat;
    .locals 1

    const-class v0, Lexpo/modules/clipboard/StringFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lexpo/modules/clipboard/StringFormat;

    return-object p0
.end method

.method public static values()[Lexpo/modules/clipboard/StringFormat;
    .locals 1

    sget-object v0, Lexpo/modules/clipboard/StringFormat;->$VALUES:[Lexpo/modules/clipboard/StringFormat;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lexpo/modules/clipboard/StringFormat;

    return-object v0
.end method


# virtual methods
.method public final getJsValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/clipboard/StringFormat;->jsValue:Ljava/lang/String;

    return-object v0
.end method
