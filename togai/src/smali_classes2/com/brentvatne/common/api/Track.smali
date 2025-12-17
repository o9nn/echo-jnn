.class public final Lcom/brentvatne/common/api/Track;
.super Ljava/lang/Object;
.source "Track.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014\"\u0004\u0008\u0019\u0010\u0016R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014\"\u0004\u0008\u001c\u0010\u0016\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/brentvatne/common/api/Track;",
        "",
        "()V",
        "bitrate",
        "",
        "getBitrate",
        "()I",
        "setBitrate",
        "(I)V",
        "index",
        "getIndex",
        "setIndex",
        "isSelected",
        "",
        "()Z",
        "setSelected",
        "(Z)V",
        "language",
        "",
        "getLanguage",
        "()Ljava/lang/String;",
        "setLanguage",
        "(Ljava/lang/String;)V",
        "mimeType",
        "getMimeType",
        "setMimeType",
        "title",
        "getTitle",
        "setTitle",
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

.field private index:I

.field private isSelected:Z

.field private language:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBitrate()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/Track;->bitrate:I

    return v0
.end method

.method public final getIndex()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/Track;->index:I

    return v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/common/api/Track;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/common/api/Track;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/common/api/Track;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/brentvatne/common/api/Track;->isSelected:Z

    return v0
.end method

.method public final setBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/brentvatne/common/api/Track;->bitrate:I

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/brentvatne/common/api/Track;->index:I

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/common/api/Track;->language:Ljava/lang/String;

    return-void
.end method

.method public final setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/common/api/Track;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public final setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/brentvatne/common/api/Track;->isSelected:Z

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/common/api/Track;->title:Ljava/lang/String;

    return-void
.end method
