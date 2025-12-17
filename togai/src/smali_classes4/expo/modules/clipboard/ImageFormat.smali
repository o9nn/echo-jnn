.class public final enum Lexpo/modules/clipboard/ImageFormat;
.super Ljava/lang/Enum;
.source "ClipboardOptions.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/clipboard/ImageFormat$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/clipboard/ImageFormat;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/clipboard/ImageFormat;",
        "",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "jsName",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "compressFormat",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "getCompressFormat",
        "()Landroid/graphics/Bitmap$CompressFormat;",
        "getJsName",
        "()Ljava/lang/String;",
        "mimeType",
        "getMimeType",
        "JPG",
        "PNG",
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

.field private static final synthetic $VALUES:[Lexpo/modules/clipboard/ImageFormat;

.field public static final enum JPG:Lexpo/modules/clipboard/ImageFormat;

.field public static final enum PNG:Lexpo/modules/clipboard/ImageFormat;


# instance fields
.field private final jsName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/clipboard/ImageFormat;
    .locals 2

    sget-object v0, Lexpo/modules/clipboard/ImageFormat;->JPG:Lexpo/modules/clipboard/ImageFormat;

    sget-object v1, Lexpo/modules/clipboard/ImageFormat;->PNG:Lexpo/modules/clipboard/ImageFormat;

    filled-new-array {v0, v1}, [Lexpo/modules/clipboard/ImageFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Lexpo/modules/clipboard/ImageFormat;

    const/4 v1, 0x0

    const-string v2, "jpeg"

    const-string v3, "JPG"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/clipboard/ImageFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/clipboard/ImageFormat;->JPG:Lexpo/modules/clipboard/ImageFormat;

    .line 28
    new-instance v0, Lexpo/modules/clipboard/ImageFormat;

    const/4 v1, 0x1

    const-string v2, "png"

    const-string v3, "PNG"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/clipboard/ImageFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/clipboard/ImageFormat;->PNG:Lexpo/modules/clipboard/ImageFormat;

    invoke-static {}, Lexpo/modules/clipboard/ImageFormat;->$values()[Lexpo/modules/clipboard/ImageFormat;

    move-result-object v0

    sput-object v0, Lexpo/modules/clipboard/ImageFormat;->$VALUES:[Lexpo/modules/clipboard/ImageFormat;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/clipboard/ImageFormat;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/clipboard/ImageFormat;->jsName:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/clipboard/ImageFormat;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/clipboard/ImageFormat;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/clipboard/ImageFormat;
    .locals 1

    const-class v0, Lexpo/modules/clipboard/ImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lexpo/modules/clipboard/ImageFormat;

    return-object p0
.end method

.method public static values()[Lexpo/modules/clipboard/ImageFormat;
    .locals 1

    sget-object v0, Lexpo/modules/clipboard/ImageFormat;->$VALUES:[Lexpo/modules/clipboard/ImageFormat;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lexpo/modules/clipboard/ImageFormat;

    return-object v0
.end method


# virtual methods
.method public final getCompressFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 2

    .line 31
    sget-object v0, Lexpo/modules/clipboard/ImageFormat$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lexpo/modules/clipboard/ImageFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 33
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 32
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0
.end method

.method public final getJsName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/clipboard/ImageFormat;->jsName:Ljava/lang/String;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 2

    .line 37
    sget-object v0, Lexpo/modules/clipboard/ImageFormat$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lexpo/modules/clipboard/ImageFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "image/png"

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    const-string v0, "image/jpeg"

    :goto_0
    return-object v0
.end method
