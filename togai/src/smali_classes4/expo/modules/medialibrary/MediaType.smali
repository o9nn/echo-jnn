.class public final enum Lexpo/modules/medialibrary/MediaType;
.super Ljava/lang/Enum;
.source "MediaLibraryEnums.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/medialibrary/MediaType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/medialibrary/MediaType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0011B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/medialibrary/MediaType;",
        "",
        "apiName",
        "",
        "mediaColumn",
        "",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V",
        "getApiName",
        "()Ljava/lang/String;",
        "getMediaColumn",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "AUDIO",
        "PHOTO",
        "VIDEO",
        "UNKNOWN",
        "ALL",
        "Companion",
        "expo-media-library_release"
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

.field private static final synthetic $VALUES:[Lexpo/modules/medialibrary/MediaType;

.field public static final enum ALL:Lexpo/modules/medialibrary/MediaType;

.field public static final enum AUDIO:Lexpo/modules/medialibrary/MediaType;

.field public static final Companion:Lexpo/modules/medialibrary/MediaType$Companion;

.field public static final enum PHOTO:Lexpo/modules/medialibrary/MediaType;

.field public static final enum UNKNOWN:Lexpo/modules/medialibrary/MediaType;

.field public static final enum VIDEO:Lexpo/modules/medialibrary/MediaType;


# instance fields
.field private final apiName:Ljava/lang/String;

.field private final mediaColumn:Ljava/lang/Integer;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/medialibrary/MediaType;
    .locals 5

    sget-object v0, Lexpo/modules/medialibrary/MediaType;->AUDIO:Lexpo/modules/medialibrary/MediaType;

    sget-object v1, Lexpo/modules/medialibrary/MediaType;->PHOTO:Lexpo/modules/medialibrary/MediaType;

    sget-object v2, Lexpo/modules/medialibrary/MediaType;->VIDEO:Lexpo/modules/medialibrary/MediaType;

    sget-object v3, Lexpo/modules/medialibrary/MediaType;->UNKNOWN:Lexpo/modules/medialibrary/MediaType;

    sget-object v4, Lexpo/modules/medialibrary/MediaType;->ALL:Lexpo/modules/medialibrary/MediaType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lexpo/modules/medialibrary/MediaType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 31
    new-instance v0, Lexpo/modules/medialibrary/MediaType;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AUDIO"

    const/4 v4, 0x0

    const-string v5, "audio"

    invoke-direct {v0, v3, v4, v5, v2}, Lexpo/modules/medialibrary/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lexpo/modules/medialibrary/MediaType;->AUDIO:Lexpo/modules/medialibrary/MediaType;

    .line 32
    new-instance v0, Lexpo/modules/medialibrary/MediaType;

    const-string v2, "photo"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "PHOTO"

    invoke-direct {v0, v6, v3, v2, v5}, Lexpo/modules/medialibrary/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lexpo/modules/medialibrary/MediaType;->PHOTO:Lexpo/modules/medialibrary/MediaType;

    .line 33
    new-instance v0, Lexpo/modules/medialibrary/MediaType;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "VIDEO"

    const-string v6, "video"

    invoke-direct {v0, v5, v1, v6, v3}, Lexpo/modules/medialibrary/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lexpo/modules/medialibrary/MediaType;->VIDEO:Lexpo/modules/medialibrary/MediaType;

    .line 34
    new-instance v0, Lexpo/modules/medialibrary/MediaType;

    const-string v1, "unknown"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "UNKNOWN"

    invoke-direct {v0, v4, v2, v1, v3}, Lexpo/modules/medialibrary/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lexpo/modules/medialibrary/MediaType;->UNKNOWN:Lexpo/modules/medialibrary/MediaType;

    .line 35
    new-instance v0, Lexpo/modules/medialibrary/MediaType;

    const-string v1, "ALL"

    const/4 v2, 0x4

    const-string v3, "all"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lexpo/modules/medialibrary/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lexpo/modules/medialibrary/MediaType;->ALL:Lexpo/modules/medialibrary/MediaType;

    invoke-static {}, Lexpo/modules/medialibrary/MediaType;->$values()[Lexpo/modules/medialibrary/MediaType;

    move-result-object v0

    sput-object v0, Lexpo/modules/medialibrary/MediaType;->$VALUES:[Lexpo/modules/medialibrary/MediaType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/medialibrary/MediaType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lexpo/modules/medialibrary/MediaType$Companion;

    invoke-direct {v0, v4}, Lexpo/modules/medialibrary/MediaType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/medialibrary/MediaType;->Companion:Lexpo/modules/medialibrary/MediaType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/medialibrary/MediaType;->apiName:Ljava/lang/String;

    iput-object p4, p0, Lexpo/modules/medialibrary/MediaType;->mediaColumn:Ljava/lang/Integer;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/medialibrary/MediaType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/medialibrary/MediaType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/medialibrary/MediaType;
    .locals 1

    const-class v0, Lexpo/modules/medialibrary/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lexpo/modules/medialibrary/MediaType;

    return-object p0
.end method

.method public static values()[Lexpo/modules/medialibrary/MediaType;
    .locals 1

    sget-object v0, Lexpo/modules/medialibrary/MediaType;->$VALUES:[Lexpo/modules/medialibrary/MediaType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lexpo/modules/medialibrary/MediaType;

    return-object v0
.end method


# virtual methods
.method public final getApiName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaType;->apiName:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaColumn()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaType;->mediaColumn:Ljava/lang/Integer;

    return-object v0
.end method
