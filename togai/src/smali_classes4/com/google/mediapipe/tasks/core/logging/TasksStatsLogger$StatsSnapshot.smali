.class public abstract Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger$StatsSnapshot;
.super Ljava/lang/Object;
.source "TasksStatsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StatsSnapshot"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(IIIIJJJ)Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger$StatsSnapshot;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cpuInputCount",
            "gpuInputCount",
            "finishedCount",
            "droppedCount",
            "totalLatencyMs",
            "peakLatencyMs",
            "elapsedTimeMs"
        }
    .end annotation

    .line 32
    new-instance v11, Lcom/google/mediapipe/tasks/core/logging/AutoValue_TasksStatsLogger_StatsSnapshot;

    move-object v0, v11

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/google/mediapipe/tasks/core/logging/AutoValue_TasksStatsLogger_StatsSnapshot;-><init>(IIIIJJJ)V

    return-object v11
.end method

.method static createDefault()Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger$StatsSnapshot;
    .locals 12

    .line 43
    new-instance v11, Lcom/google/mediapipe/tasks/core/logging/AutoValue_TasksStatsLogger_StatsSnapshot;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/mediapipe/tasks/core/logging/AutoValue_TasksStatsLogger_StatsSnapshot;-><init>(IIIIJJJ)V

    return-object v11
.end method


# virtual methods
.method abstract cpuInputCount()I
.end method

.method abstract droppedCount()I
.end method

.method abstract elapsedTimeMs()J
.end method

.method abstract finishedCount()I
.end method

.method abstract gpuInputCount()I
.end method

.method abstract peakLatencyMs()J
.end method

.method abstract totalLatencyMs()J
.end method
