.class public interface abstract Lcom/google/mediapipe/framework/TextureFrame;
.super Ljava/lang/Object;
.source "TextureFrame.java"

# interfaces
.implements Lcom/google/mediapipe/framework/TextureReleaseCallback;


# virtual methods
.method public abstract getHeight()I
.end method

.method public abstract getTextureName()I
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getWidth()I
.end method

.method public abstract release()V
.end method

.method public abstract release(Lcom/google/mediapipe/framework/GlSyncToken;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "syncToken"
        }
    .end annotation
.end method

.method public retain()V
    .locals 1

    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public supportsRetain()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
