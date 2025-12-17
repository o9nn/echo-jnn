.class public interface abstract Lcom/google/mediapipe/tasks/core/OutputHandler$PureResultListener;
.super Ljava/lang/Object;
.source "OutputHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/OutputHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PureResultListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutputT::",
        "Lcom/google/mediapipe/tasks/core/TaskResult;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract run(Lcom/google/mediapipe/tasks/core/TaskResult;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutputT;)V"
        }
    .end annotation
.end method
