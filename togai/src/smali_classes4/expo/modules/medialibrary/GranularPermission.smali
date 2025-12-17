.class public final enum Lexpo/modules/medialibrary/GranularPermission;
.super Ljava/lang/Enum;
.source "MediaLibraryEnums.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/medialibrary/GranularPermission$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/medialibrary/GranularPermission;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\u0004H\u0007R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/medialibrary/GranularPermission;",
        "",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "toManifestPermission",
        "AUDIO",
        "PHOTO",
        "VIDEO",
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

.field private static final synthetic $VALUES:[Lexpo/modules/medialibrary/GranularPermission;

.field public static final enum AUDIO:Lexpo/modules/medialibrary/GranularPermission;

.field public static final enum PHOTO:Lexpo/modules/medialibrary/GranularPermission;

.field public static final enum VIDEO:Lexpo/modules/medialibrary/GranularPermission;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/medialibrary/GranularPermission;
    .locals 3

    sget-object v0, Lexpo/modules/medialibrary/GranularPermission;->AUDIO:Lexpo/modules/medialibrary/GranularPermission;

    sget-object v1, Lexpo/modules/medialibrary/GranularPermission;->PHOTO:Lexpo/modules/medialibrary/GranularPermission;

    sget-object v2, Lexpo/modules/medialibrary/GranularPermission;->VIDEO:Lexpo/modules/medialibrary/GranularPermission;

    filled-new-array {v0, v1, v2}, [Lexpo/modules/medialibrary/GranularPermission;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lexpo/modules/medialibrary/GranularPermission;

    const/4 v1, 0x0

    const-string v2, "audio"

    const-string v3, "AUDIO"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/medialibrary/GranularPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/medialibrary/GranularPermission;->AUDIO:Lexpo/modules/medialibrary/GranularPermission;

    .line 11
    new-instance v0, Lexpo/modules/medialibrary/GranularPermission;

    const/4 v1, 0x1

    const-string v2, "photo"

    const-string v3, "PHOTO"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/medialibrary/GranularPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/medialibrary/GranularPermission;->PHOTO:Lexpo/modules/medialibrary/GranularPermission;

    .line 12
    new-instance v0, Lexpo/modules/medialibrary/GranularPermission;

    const/4 v1, 0x2

    const-string v2, "video"

    const-string v3, "VIDEO"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/medialibrary/GranularPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/medialibrary/GranularPermission;->VIDEO:Lexpo/modules/medialibrary/GranularPermission;

    invoke-static {}, Lexpo/modules/medialibrary/GranularPermission;->$values()[Lexpo/modules/medialibrary/GranularPermission;

    move-result-object v0

    sput-object v0, Lexpo/modules/medialibrary/GranularPermission;->$VALUES:[Lexpo/modules/medialibrary/GranularPermission;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/medialibrary/GranularPermission;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/medialibrary/GranularPermission;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/medialibrary/GranularPermission;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/medialibrary/GranularPermission;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/medialibrary/GranularPermission;
    .locals 1

    const-class v0, Lexpo/modules/medialibrary/GranularPermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lexpo/modules/medialibrary/GranularPermission;

    return-object p0
.end method

.method public static values()[Lexpo/modules/medialibrary/GranularPermission;
    .locals 1

    sget-object v0, Lexpo/modules/medialibrary/GranularPermission;->$VALUES:[Lexpo/modules/medialibrary/GranularPermission;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lexpo/modules/medialibrary/GranularPermission;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/medialibrary/GranularPermission;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final toManifestPermission()Ljava/lang/String;
    .locals 2

    .line 16
    sget-object v0, Lexpo/modules/medialibrary/GranularPermission$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lexpo/modules/medialibrary/GranularPermission;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    goto :goto_0

    :cond_2
    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    :goto_0
    return-object v0
.end method
