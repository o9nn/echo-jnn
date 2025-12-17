.class public final Lcom/brentvatne/common/api/Source$Metadata;
.super Ljava/lang/Object;
.source "Source.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brentvatne/common/api/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brentvatne/common/api/Source$Metadata$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/brentvatne/common/api/Source$Metadata;",
        "",
        "()V",
        "artist",
        "",
        "getArtist",
        "()Ljava/lang/String;",
        "setArtist",
        "(Ljava/lang/String;)V",
        "description",
        "getDescription",
        "setDescription",
        "imageUri",
        "Landroid/net/Uri;",
        "getImageUri",
        "()Landroid/net/Uri;",
        "setImageUri",
        "(Landroid/net/Uri;)V",
        "subtitle",
        "getSubtitle",
        "setSubtitle",
        "title",
        "getTitle",
        "setTitle",
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
.field public static final Companion:Lcom/brentvatne/common/api/Source$Metadata$Companion;

.field private static final PROP_SRC_METADATA_ARTIST:Ljava/lang/String; = "artist"

.field private static final PROP_SRC_METADATA_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final PROP_SRC_METADATA_IMAGE_URI:Ljava/lang/String; = "imageUri"

.field private static final PROP_SRC_METADATA_SUBTITLE:Ljava/lang/String; = "subtitle"

.field private static final PROP_SRC_METADATA_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private artist:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private imageUri:Landroid/net/Uri;

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/brentvatne/common/api/Source$Metadata$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/brentvatne/common/api/Source$Metadata$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/brentvatne/common/api/Source$Metadata;->Companion:Lcom/brentvatne/common/api/Source$Metadata$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parse(Lcom/facebook/react/bridge/ReadableMap;)Lcom/brentvatne/common/api/Source$Metadata;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/brentvatne/common/api/Source$Metadata;->Companion:Lcom/brentvatne/common/api/Source$Metadata$Companion;

    invoke-virtual {v0, p0}, Lcom/brentvatne/common/api/Source$Metadata$Companion;->parse(Lcom/facebook/react/bridge/ReadableMap;)Lcom/brentvatne/common/api/Source$Metadata;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getArtist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/common/api/Source$Metadata;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/common/api/Source$Metadata;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/common/api/Source$Metadata;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/common/api/Source$Metadata;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/common/api/Source$Metadata;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final setArtist(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/common/api/Source$Metadata;->artist:Ljava/lang/String;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/common/api/Source$Metadata;->description:Ljava/lang/String;

    return-void
.end method

.method public final setImageUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/common/api/Source$Metadata;->imageUri:Landroid/net/Uri;

    return-void
.end method

.method public final setSubtitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/common/api/Source$Metadata;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/common/api/Source$Metadata;->title:Ljava/lang/String;

    return-void
.end method
