.class public final Lcom/brentvatne/common/api/Source;
.super Ljava/lang/Object;
.source "Source.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brentvatne/common/api/Source$Companion;,
        Lcom/brentvatne/common/api/Source$Metadata;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 12\u00020\u0001:\u000212B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010,\u001a\u00020 2\u0008\u0010-\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010.\u001a\u00020\u0004H\u0016J\u000e\u0010/\u001a\u00020 2\u0006\u00100\u001a\u00020\u0000R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001d\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0006\"\u0004\u0008\u001e\u0010\u0008R\u001a\u0010\u001f\u001a\u00020 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001c\u0010%\u001a\u0004\u0018\u00010&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u0010\u0010+\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lcom/brentvatne/common/api/Source;",
        "",
        "()V",
        "cropEndMs",
        "",
        "getCropEndMs",
        "()I",
        "setCropEndMs",
        "(I)V",
        "cropStartMs",
        "getCropStartMs",
        "setCropStartMs",
        "extension",
        "",
        "getExtension",
        "()Ljava/lang/String;",
        "setExtension",
        "(Ljava/lang/String;)V",
        "headers",
        "",
        "getHeaders",
        "()Ljava/util/Map;",
        "metadata",
        "Lcom/brentvatne/common/api/Source$Metadata;",
        "getMetadata",
        "()Lcom/brentvatne/common/api/Source$Metadata;",
        "setMetadata",
        "(Lcom/brentvatne/common/api/Source$Metadata;)V",
        "startPositionMs",
        "getStartPositionMs",
        "setStartPositionMs",
        "textTracksAllowChuncklessPreparation",
        "",
        "getTextTracksAllowChuncklessPreparation",
        "()Z",
        "setTextTracksAllowChuncklessPreparation",
        "(Z)V",
        "uri",
        "Landroid/net/Uri;",
        "getUri",
        "()Landroid/net/Uri;",
        "setUri",
        "(Landroid/net/Uri;)V",
        "uriString",
        "equals",
        "other",
        "hashCode",
        "isEquals",
        "source",
        "Companion",
        "Metadata",
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
.field public static final Companion:Lcom/brentvatne/common/api/Source$Companion;

.field private static final PROP_SRC_CROP_END:Ljava/lang/String; = "cropEnd"

.field private static final PROP_SRC_CROP_START:Ljava/lang/String; = "cropStart"

.field private static final PROP_SRC_HEADERS:Ljava/lang/String; = "requestHeaders"

.field private static final PROP_SRC_METADATA:Ljava/lang/String; = "metadata"

.field private static final PROP_SRC_START_POSITION:Ljava/lang/String; = "startPosition"

.field private static final PROP_SRC_TEXT_TRACKS_ALLOW_CHUNCKLESS_PREPARATION:Ljava/lang/String; = "textTracksAllowChunklessPreparation"

.field private static final PROP_SRC_TYPE:Ljava/lang/String; = "type"

.field private static final PROP_SRC_URI:Ljava/lang/String; = "uri"

.field private static final TAG:Ljava/lang/String; = "Source"


# instance fields
.field private cropEndMs:I

.field private cropStartMs:I

.field private extension:Ljava/lang/String;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private metadata:Lcom/brentvatne/common/api/Source$Metadata;

.field private startPositionMs:I

.field private textTracksAllowChuncklessPreparation:Z

.field private uri:Landroid/net/Uri;

.field private uriString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/brentvatne/common/api/Source$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/brentvatne/common/api/Source$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/brentvatne/common/api/Source;->Companion:Lcom/brentvatne/common/api/Source$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/brentvatne/common/api/Source;->startPositionMs:I

    iput v0, p0, Lcom/brentvatne/common/api/Source;->cropStartMs:I

    iput v0, p0, Lcom/brentvatne/common/api/Source;->cropEndMs:I

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/brentvatne/common/api/Source;->headers:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$setUriString$p(Lcom/brentvatne/common/api/Source;Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/brentvatne/common/api/Source;->uriString:Ljava/lang/String;

    return-void
.end method

.method public static final parse(Lcom/facebook/react/bridge/ReadableMap;Landroid/content/Context;)Lcom/brentvatne/common/api/Source;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/brentvatne/common/api/Source;->Companion:Lcom/brentvatne/common/api/Source$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/brentvatne/common/api/Source$Companion;->parse(Lcom/facebook/react/bridge/ReadableMap;Landroid/content/Context;)Lcom/brentvatne/common/api/Source;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 58
    instance-of v1, p1, Lcom/brentvatne/common/api/Source;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/brentvatne/common/api/Source;->uri:Landroid/net/Uri;

    .line 60
    check-cast p1, Lcom/brentvatne/common/api/Source;

    iget-object v2, p1, Lcom/brentvatne/common/api/Source;->uri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/brentvatne/common/api/Source;->cropStartMs:I

    .line 61
    iget v2, p1, Lcom/brentvatne/common/api/Source;->cropStartMs:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/brentvatne/common/api/Source;->cropEndMs:I

    .line 62
    iget v2, p1, Lcom/brentvatne/common/api/Source;->cropEndMs:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/brentvatne/common/api/Source;->startPositionMs:I

    .line 63
    iget v2, p1, Lcom/brentvatne/common/api/Source;->startPositionMs:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/brentvatne/common/api/Source;->extension:Ljava/lang/String;

    .line 64
    iget-object p1, p1, Lcom/brentvatne/common/api/Source;->extension:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public final getCropEndMs()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/Source;->cropEndMs:I

    return v0
.end method

.method public final getCropStartMs()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/Source;->cropStartMs:I

    return v0
.end method

.method public final getExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/common/api/Source;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/brentvatne/common/api/Source;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getMetadata()Lcom/brentvatne/common/api/Source$Metadata;
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/common/api/Source;->metadata:Lcom/brentvatne/common/api/Source$Metadata;

    return-object v0
.end method

.method public final getStartPositionMs()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/Source;->startPositionMs:I

    return v0
.end method

.method public final getTextTracksAllowChuncklessPreparation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/brentvatne/common/api/Source;->textTracksAllowChuncklessPreparation:Z

    return v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/common/api/Source;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    iget-object v0, p0, Lcom/brentvatne/common/api/Source;->uriString:Ljava/lang/String;

    iget-object v1, p0, Lcom/brentvatne/common/api/Source;->uri:Landroid/net/Uri;

    iget v2, p0, Lcom/brentvatne/common/api/Source;->startPositionMs:I

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/brentvatne/common/api/Source;->cropStartMs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/brentvatne/common/api/Source;->cropEndMs:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/brentvatne/common/api/Source;->extension:Ljava/lang/String;

    iget-object v6, p0, Lcom/brentvatne/common/api/Source;->metadata:Lcom/brentvatne/common/api/Source$Metadata;

    iget-object v7, p0, Lcom/brentvatne/common/api/Source;->headers:Ljava/util/Map;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isEquals(Lcom/brentvatne/common/api/Source;)Z
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final setCropEndMs(I)V
    .locals 0

    iput p1, p0, Lcom/brentvatne/common/api/Source;->cropEndMs:I

    return-void
.end method

.method public final setCropStartMs(I)V
    .locals 0

    iput p1, p0, Lcom/brentvatne/common/api/Source;->cropStartMs:I

    return-void
.end method

.method public final setExtension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/common/api/Source;->extension:Ljava/lang/String;

    return-void
.end method

.method public final setMetadata(Lcom/brentvatne/common/api/Source$Metadata;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/common/api/Source;->metadata:Lcom/brentvatne/common/api/Source$Metadata;

    return-void
.end method

.method public final setStartPositionMs(I)V
    .locals 0

    iput p1, p0, Lcom/brentvatne/common/api/Source;->startPositionMs:I

    return-void
.end method

.method public final setTextTracksAllowChuncklessPreparation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/brentvatne/common/api/Source;->textTracksAllowChuncklessPreparation:Z

    return-void
.end method

.method public final setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/common/api/Source;->uri:Landroid/net/Uri;

    return-void
.end method
