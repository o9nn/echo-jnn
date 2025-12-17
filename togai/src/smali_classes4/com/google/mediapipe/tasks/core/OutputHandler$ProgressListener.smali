.class public interface abstract Lcom/google/mediapipe/tasks/core/OutputHandler$ProgressListener;
.super Ljava/lang/Object;
.source "OutputHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/OutputHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract run(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partialResult",
            "done"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutputT;Z)V"
        }
    .end annotation
.end method
