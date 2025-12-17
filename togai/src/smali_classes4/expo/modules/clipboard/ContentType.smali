.class final enum Lexpo/modules/clipboard/ContentType;
.super Ljava/lang/Enum;
.source "ClipboardModule.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/clipboard/ContentType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0082\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lexpo/modules/clipboard/ContentType;",
        "",
        "jsName",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getJsName",
        "()Ljava/lang/String;",
        "PLAIN_TEXT",
        "HTML",
        "IMAGE",
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

.field private static final synthetic $VALUES:[Lexpo/modules/clipboard/ContentType;

.field public static final enum HTML:Lexpo/modules/clipboard/ContentType;

.field public static final enum IMAGE:Lexpo/modules/clipboard/ContentType;

.field public static final enum PLAIN_TEXT:Lexpo/modules/clipboard/ContentType;


# instance fields
.field private final jsName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/clipboard/ContentType;
    .locals 3

    sget-object v0, Lexpo/modules/clipboard/ContentType;->PLAIN_TEXT:Lexpo/modules/clipboard/ContentType;

    sget-object v1, Lexpo/modules/clipboard/ContentType;->HTML:Lexpo/modules/clipboard/ContentType;

    sget-object v2, Lexpo/modules/clipboard/ContentType;->IMAGE:Lexpo/modules/clipboard/ContentType;

    filled-new-array {v0, v1, v2}, [Lexpo/modules/clipboard/ContentType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 30
    new-instance v0, Lexpo/modules/clipboard/ContentType;

    const/4 v1, 0x0

    const-string v2, "plain-text"

    const-string v3, "PLAIN_TEXT"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/clipboard/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/clipboard/ContentType;->PLAIN_TEXT:Lexpo/modules/clipboard/ContentType;

    .line 31
    new-instance v0, Lexpo/modules/clipboard/ContentType;

    const/4 v1, 0x1

    const-string v2, "html"

    const-string v3, "HTML"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/clipboard/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/clipboard/ContentType;->HTML:Lexpo/modules/clipboard/ContentType;

    .line 32
    new-instance v0, Lexpo/modules/clipboard/ContentType;

    const/4 v1, 0x2

    const-string v2, "image"

    const-string v3, "IMAGE"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/clipboard/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/clipboard/ContentType;->IMAGE:Lexpo/modules/clipboard/ContentType;

    invoke-static {}, Lexpo/modules/clipboard/ContentType;->$values()[Lexpo/modules/clipboard/ContentType;

    move-result-object v0

    sput-object v0, Lexpo/modules/clipboard/ContentType;->$VALUES:[Lexpo/modules/clipboard/ContentType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/clipboard/ContentType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/clipboard/ContentType;->jsName:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/clipboard/ContentType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/clipboard/ContentType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/clipboard/ContentType;
    .locals 1

    const-class v0, Lexpo/modules/clipboard/ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lexpo/modules/clipboard/ContentType;

    return-object p0
.end method

.method public static values()[Lexpo/modules/clipboard/ContentType;
    .locals 1

    sget-object v0, Lexpo/modules/clipboard/ContentType;->$VALUES:[Lexpo/modules/clipboard/ContentType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lexpo/modules/clipboard/ContentType;

    return-object v0
.end method


# virtual methods
.method public final getJsName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/clipboard/ContentType;->jsName:Ljava/lang/String;

    return-object v0
.end method
