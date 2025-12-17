.class public interface abstract Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;
.super Ljava/lang/Object;
.source "TasksStatsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger$StatsSnapshot;
    }
.end annotation


# virtual methods
.method public abstract logInitError()V
.end method

.method public abstract logInvocationReport(Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger$StatsSnapshot;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stats"
        }
    .end annotation
.end method

.method public abstract logSessionClone()V
.end method

.method public abstract logSessionEnd()V
.end method

.method public abstract logSessionStart()V
.end method

.method public abstract recordCpuInputArrival(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packetTimestamp"
        }
    .end annotation
.end method

.method public abstract recordGpuInputArrival(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packetTimestamp"
        }
    .end annotation
.end method

.method public abstract recordInvocationEnd(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packetTimestamp"
        }
    .end annotation
.end method
