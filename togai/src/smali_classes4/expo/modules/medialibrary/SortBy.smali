.class public final enum Lexpo/modules/medialibrary/SortBy;
.super Ljava/lang/Enum;
.source "MediaLibraryEnums.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/medialibrary/SortBy$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/medialibrary/SortBy;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0086\u0081\u0002\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lexpo/modules/medialibrary/SortBy;",
        "",
        "keyName",
        "",
        "mediaColumnName",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "getKeyName",
        "()Ljava/lang/String;",
        "getMediaColumnName",
        "DEFAULT",
        "CREATION_TIME",
        "MODIFICATION_TIME",
        "MEDIA_TYPE",
        "WIDTH",
        "HEIGHT",
        "DURATION",
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

.field private static final synthetic $VALUES:[Lexpo/modules/medialibrary/SortBy;

.field public static final enum CREATION_TIME:Lexpo/modules/medialibrary/SortBy;

.field public static final Companion:Lexpo/modules/medialibrary/SortBy$Companion;

.field public static final enum DEFAULT:Lexpo/modules/medialibrary/SortBy;

.field public static final enum DURATION:Lexpo/modules/medialibrary/SortBy;

.field public static final enum HEIGHT:Lexpo/modules/medialibrary/SortBy;

.field public static final enum MEDIA_TYPE:Lexpo/modules/medialibrary/SortBy;

.field public static final enum MODIFICATION_TIME:Lexpo/modules/medialibrary/SortBy;

.field public static final enum WIDTH:Lexpo/modules/medialibrary/SortBy;


# instance fields
.field private final keyName:Ljava/lang/String;

.field private final mediaColumnName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/medialibrary/SortBy;
    .locals 7

    sget-object v0, Lexpo/modules/medialibrary/SortBy;->DEFAULT:Lexpo/modules/medialibrary/SortBy;

    sget-object v1, Lexpo/modules/medialibrary/SortBy;->CREATION_TIME:Lexpo/modules/medialibrary/SortBy;

    sget-object v2, Lexpo/modules/medialibrary/SortBy;->MODIFICATION_TIME:Lexpo/modules/medialibrary/SortBy;

    sget-object v3, Lexpo/modules/medialibrary/SortBy;->MEDIA_TYPE:Lexpo/modules/medialibrary/SortBy;

    sget-object v4, Lexpo/modules/medialibrary/SortBy;->WIDTH:Lexpo/modules/medialibrary/SortBy;

    sget-object v5, Lexpo/modules/medialibrary/SortBy;->HEIGHT:Lexpo/modules/medialibrary/SortBy;

    sget-object v6, Lexpo/modules/medialibrary/SortBy;->DURATION:Lexpo/modules/medialibrary/SortBy;

    filled-new-array/range {v0 .. v6}, [Lexpo/modules/medialibrary/SortBy;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 46
    new-instance v0, Lexpo/modules/medialibrary/SortBy;

    const-string v1, "default"

    const-string v2, "_id"

    const-string v3, "DEFAULT"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lexpo/modules/medialibrary/SortBy;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lexpo/modules/medialibrary/SortBy;->DEFAULT:Lexpo/modules/medialibrary/SortBy;

    .line 47
    new-instance v0, Lexpo/modules/medialibrary/SortBy;

    const-string v1, "creationTime"

    const-string v2, "datetaken"

    const-string v3, "CREATION_TIME"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lexpo/modules/medialibrary/SortBy;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lexpo/modules/medialibrary/SortBy;->CREATION_TIME:Lexpo/modules/medialibrary/SortBy;

    .line 48
    new-instance v0, Lexpo/modules/medialibrary/SortBy;

    const-string v1, "modificationTime"

    const-string v2, "date_modified"

    const-string v3, "MODIFICATION_TIME"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lexpo/modules/medialibrary/SortBy;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lexpo/modules/medialibrary/SortBy;->MODIFICATION_TIME:Lexpo/modules/medialibrary/SortBy;

    .line 49
    new-instance v0, Lexpo/modules/medialibrary/SortBy;

    const-string v1, "mediaType"

    const-string v2, "media_type"

    const-string v3, "MEDIA_TYPE"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lexpo/modules/medialibrary/SortBy;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lexpo/modules/medialibrary/SortBy;->MEDIA_TYPE:Lexpo/modules/medialibrary/SortBy;

    .line 50
    new-instance v0, Lexpo/modules/medialibrary/SortBy;

    const/4 v1, 0x4

    const-string v2, "width"

    const-string v3, "WIDTH"

    invoke-direct {v0, v3, v1, v2, v2}, Lexpo/modules/medialibrary/SortBy;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lexpo/modules/medialibrary/SortBy;->WIDTH:Lexpo/modules/medialibrary/SortBy;

    .line 51
    new-instance v0, Lexpo/modules/medialibrary/SortBy;

    const/4 v1, 0x5

    const-string v2, "height"

    const-string v3, "HEIGHT"

    invoke-direct {v0, v3, v1, v2, v2}, Lexpo/modules/medialibrary/SortBy;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lexpo/modules/medialibrary/SortBy;->HEIGHT:Lexpo/modules/medialibrary/SortBy;

    .line 52
    new-instance v0, Lexpo/modules/medialibrary/SortBy;

    const/4 v1, 0x6

    const-string v2, "duration"

    const-string v3, "DURATION"

    invoke-direct {v0, v3, v1, v2, v2}, Lexpo/modules/medialibrary/SortBy;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lexpo/modules/medialibrary/SortBy;->DURATION:Lexpo/modules/medialibrary/SortBy;

    invoke-static {}, Lexpo/modules/medialibrary/SortBy;->$values()[Lexpo/modules/medialibrary/SortBy;

    move-result-object v0

    sput-object v0, Lexpo/modules/medialibrary/SortBy;->$VALUES:[Lexpo/modules/medialibrary/SortBy;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/medialibrary/SortBy;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lexpo/modules/medialibrary/SortBy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/medialibrary/SortBy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/medialibrary/SortBy;->Companion:Lexpo/modules/medialibrary/SortBy$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/medialibrary/SortBy;->keyName:Ljava/lang/String;

    iput-object p4, p0, Lexpo/modules/medialibrary/SortBy;->mediaColumnName:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/medialibrary/SortBy;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/medialibrary/SortBy;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/medialibrary/SortBy;
    .locals 1

    const-class v0, Lexpo/modules/medialibrary/SortBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lexpo/modules/medialibrary/SortBy;

    return-object p0
.end method

.method public static values()[Lexpo/modules/medialibrary/SortBy;
    .locals 1

    sget-object v0, Lexpo/modules/medialibrary/SortBy;->$VALUES:[Lexpo/modules/medialibrary/SortBy;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lexpo/modules/medialibrary/SortBy;

    return-object v0
.end method


# virtual methods
.method public final getKeyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/medialibrary/SortBy;->keyName:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaColumnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/medialibrary/SortBy;->mediaColumnName:Ljava/lang/String;

    return-object v0
.end method
