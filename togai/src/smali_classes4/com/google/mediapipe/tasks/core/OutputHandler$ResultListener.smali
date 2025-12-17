.class public interface abstract Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;
.super Ljava/lang/Object;
.source "OutputHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/OutputHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResultListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutputT::",
        "Lcom/google/mediapipe/tasks/core/TaskResult;",
        "InputT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract run(Lcom/google/mediapipe/tasks/core/TaskResult;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutputT;TInputT;)V"
        }
    .end annotation
.end method
