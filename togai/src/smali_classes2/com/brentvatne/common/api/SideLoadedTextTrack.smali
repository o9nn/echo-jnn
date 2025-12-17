.class public final Lcom/brentvatne/common/api/SideLoadedTextTrack;
.super Ljava/lang/Object;
.source "SideLoadedTextTrack.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brentvatne/common/api/SideLoadedTextTrack$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/brentvatne/common/api/SideLoadedTextTrack;",
        "",
        "()V",
        "language",
        "",
        "getLanguage",
        "()Ljava/lang/String;",
        "setLanguage",
        "(Ljava/lang/String;)V",
        "title",
        "getTitle",
        "setTitle",
        "type",
        "getType",
        "setType",
        "uri",
        "Landroid/net/Uri;",
        "getUri",
        "()Landroid/net/Uri;",
        "setUri",
        "(Landroid/net/Uri;)V",
        "Companion",
        "react-native-video_release"
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
.field public static final Companion:Lcom/brentvatne/common/api/SideLoadedTextTrack$Companion;

.field private static final SIDELOAD_TEXT_TRACK_LANGUAGE:Ljava/lang/String;

.field private static final SIDELOAD_TEXT_TRACK_TITLE:Ljava/lang/String;

.field private static final SIDELOAD_TEXT_TRACK_TYPE:Ljava/lang/String;

.field private static final SIDELOAD_TEXT_TRACK_URI:Ljava/lang/String;


# instance fields
.field private language:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/brentvatne/common/api/SideLoadedTextTrack$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/brentvatne/common/api/SideLoadedTextTrack$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/brentvatne/common/api/SideLoadedTextTrack;->Companion:Lcom/brentvatne/common/api/SideLoadedTextTrack$Companion;

    const-string v0, "language"

    sput-object v0, Lcom/brentvatne/common/api/SideLoadedTextTrack;->SIDELOAD_TEXT_TRACK_LANGUAGE:Ljava/lang/String;

    const-string/jumbo v0, "title"

    sput-object v0, Lcom/brentvatne/common/api/SideLoadedTextTrack;->SIDELOAD_TEXT_TRACK_TITLE:Ljava/lang/String;

    const-string/jumbo v0, "uri"

    sput-object v0, Lcom/brentvatne/common/api/SideLoadedTextTrack;->SIDELOAD_TEXT_TRACK_URI:Ljava/lang/String;

    const-string/jumbo v0, "type"

    sput-object v0, Lcom/brentvatne/common/api/SideLoadedTextTrack;->SIDELOAD_TEXT_TRACK_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v1, "EMPTY"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/brentvatne/common/api/SideLoadedTextTrack;->uri:Landroid/net/Uri;

    return-void
.end method

.method public static final synthetic access$getSIDELOAD_TEXT_TRACK_LANGUAGE$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/brentvatne/common/api/SideLoadedTextTrack;->SIDELOAD_TEXT_TRACK_LANGUAGE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSIDELOAD_TEXT_TRACK_TITLE$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/brentvatne/common/api/SideLoadedTextTrack;->SIDELOAD_TEXT_TRACK_TITLE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSIDELOAD_TEXT_TRACK_TYPE$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/brentvatne/common/api/SideLoadedTextTrack;->SIDELOAD_TEXT_TRACK_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSIDELOAD_TEXT_TRACK_URI$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/brentvatne/common/api/SideLoadedTextTrack;->SIDELOAD_TEXT_TRACK_URI:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/common/api/SideLoadedTextTrack;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/common/api/SideLoadedTextTrack;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/common/api/SideLoadedTextTrack;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/common/api/SideLoadedTextTrack;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/common/api/SideLoadedTextTrack;->language:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/common/api/SideLoadedTextTrack;->title:Ljava/lang/String;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/common/api/SideLoadedTextTrack;->type:Ljava/lang/String;

    return-void
.end method

.method public final setUri(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/brentvatne/common/api/SideLoadedTextTrack;->uri:Landroid/net/Uri;

    return-void
.end method
