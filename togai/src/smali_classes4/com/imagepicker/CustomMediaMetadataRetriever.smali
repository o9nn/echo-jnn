.class Lcom/imagepicker/CustomMediaMetadataRetriever;
.super Landroid/media/MediaMetadataRetriever;
.source "VideoMetadata.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/imagepicker/CustomMediaMetadataRetriever;->release()V

    return-void
.end method
