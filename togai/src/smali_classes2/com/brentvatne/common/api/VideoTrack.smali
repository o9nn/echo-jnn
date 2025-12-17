.class public final Lcom/brentvatne/common/api/VideoTrack;
.super Ljava/lang/Object;
.source "VideoTrack.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0006\"\u0004\u0008\u001c\u0010\u0008R\u001a\u0010\u001d\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u000c\"\u0004\u0008\u001f\u0010\u000eR\u001a\u0010 \u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0006\"\u0004\u0008\"\u0010\u0008\u00a8\u0006#"
    }
    d2 = {
        "Lcom/brentvatne/common/api/VideoTrack;",
        "",
        "()V",
        "bitrate",
        "",
        "getBitrate",
        "()I",
        "setBitrate",
        "(I)V",
        "codecs",
        "",
        "getCodecs",
        "()Ljava/lang/String;",
        "setCodecs",
        "(Ljava/lang/String;)V",
        "height",
        "getHeight",
        "setHeight",
        "index",
        "getIndex",
        "setIndex",
        "isSelected",
        "",
        "()Z",
        "setSelected",
        "(Z)V",
        "rotation",
        "getRotation",
        "setRotation",
        "trackId",
        "getTrackId",
        "setTrackId",
        "width",
        "getWidth",
        "setWidth",
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


# instance fields
.field private bitrate:I

.field private codecs:Ljava/lang/String;

.field private height:I

.field private index:I

.field private isSelected:Z

.field private rotation:I

.field private trackId:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/brentvatne/common/api/VideoTrack;->codecs:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/brentvatne/common/api/VideoTrack;->index:I

    iput-object v0, p0, Lcom/brentvatne/common/api/VideoTrack;->trackId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBitrate()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/VideoTrack;->bitrate:I

    return v0
.end method

.method public final getCodecs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/common/api/VideoTrack;->codecs:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/VideoTrack;->height:I

    return v0
.end method

.method public final getIndex()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/VideoTrack;->index:I

    return v0
.end method

.method public final getRotation()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/VideoTrack;->rotation:I

    return v0
.end method

.method public final getTrackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/common/api/VideoTrack;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/VideoTrack;->width:I

    return v0
.end method

.method public final isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/brentvatne/common/api/VideoTrack;->isSelected:Z

    return v0
.end method

.method public final setBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/brentvatne/common/api/VideoTrack;->bitrate:I

    return-void
.end method

.method public final setCodecs(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/brentvatne/common/api/VideoTrack;->codecs:Ljava/lang/String;

    return-void
.end method

.method public final setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/brentvatne/common/api/VideoTrack;->height:I

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/brentvatne/common/api/VideoTrack;->index:I

    return-void
.end method

.method public final setRotation(I)V
    .locals 0

    iput p1, p0, Lcom/brentvatne/common/api/VideoTrack;->rotation:I

    return-void
.end method

.method public final setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/brentvatne/common/api/VideoTrack;->isSelected:Z

    return-void
.end method

.method public final setTrackId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/brentvatne/common/api/VideoTrack;->trackId:Ljava/lang/String;

    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/brentvatne/common/api/VideoTrack;->width:I

    return-void
.end method
