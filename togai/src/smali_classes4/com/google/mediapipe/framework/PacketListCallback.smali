.class public interface abstract Lcom/google/mediapipe/framework/PacketListCallback;
.super Ljava/lang/Object;
.source "PacketListCallback.java"


# virtual methods
.method public abstract process(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packets"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;)V"
        }
    .end annotation
.end method
