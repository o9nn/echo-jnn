.class Lcom/layla/cubism/RNCubism$1;
.super Ljava/lang/Object;
.source "RNCubism.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layla/cubism/RNCubism;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layla/cubism/RNCubism;


# direct methods
.method constructor <init>(Lcom/layla/cubism/RNCubism;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/cubism/RNCubism$1;->this$0:Lcom/layla/cubism/RNCubism;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "Visualizer measurement error: "

    const-string v2, "Raw mRms: "

    const-string v3, "Failed to get Visualizer Peak/RMS measurement: "

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pollVolumeRunnable run, isVisualising: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/layla/cubism/RNCubism$1;->this$0:Lcom/layla/cubism/RNCubism;

    invoke-static {v5}, Lcom/layla/cubism/RNCubism;->-$$Nest$fgetisVisualizing(Lcom/layla/cubism/RNCubism;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RNCubism"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/layla/cubism/RNCubism$1;->this$0:Lcom/layla/cubism/RNCubism;

    .line 59
    invoke-static {v4}, Lcom/layla/cubism/RNCubism;->-$$Nest$fgetvisualizer(Lcom/layla/cubism/RNCubism;)Landroid/media/audiofx/Visualizer;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 61
    :try_start_0
    new-instance v4, Landroid/media/audiofx/Visualizer$MeasurementPeakRms;

    invoke-direct {v4}, Landroid/media/audiofx/Visualizer$MeasurementPeakRms;-><init>()V

    iget-object v6, v1, Lcom/layla/cubism/RNCubism$1;->this$0:Lcom/layla/cubism/RNCubism;

    .line 62
    invoke-static {v6}, Lcom/layla/cubism/RNCubism;->-$$Nest$fgetvisualizer(Lcom/layla/cubism/RNCubism;)Landroid/media/audiofx/Visualizer;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/media/audiofx/Visualizer;->getMeasurementPeakRms(Landroid/media/audiofx/Visualizer$MeasurementPeakRms;)I

    move-result v6

    if-nez v6, :cond_2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Landroid/media/audiofx/Visualizer$MeasurementPeakRms;->mRms:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Raw mPeak: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v4, Landroid/media/audiofx/Visualizer$MeasurementPeakRms;->mPeak:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget v0, v4, Landroid/media/audiofx/Visualizer$MeasurementPeakRms;->mRms:I

    int-to-double v2, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v6

    .line 71
    iget v0, v4, Landroid/media/audiofx/Visualizer$MeasurementPeakRms;->mPeak:I

    int-to-double v8, v0

    div-double/2addr v8, v6

    const-wide/16 v6, 0x0

    .line 75
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Double;->min(DD)D

    move-result-wide v2

    const-wide v10, -0x3fa9800000000000L    # -90.0

    .line 76
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v15

    .line 78
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->min(DD)D

    move-result-wide v2

    .line 79
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    cmpl-double v0, v15, v10

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    if-lez v0, :cond_0

    div-double v6, v15, v8

    .line 83
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    :goto_0
    cmpl-double v0, v2, v10

    if-lez v0, :cond_1

    div-double/2addr v2, v8

    .line 84
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    move-wide/from16 v17, v2

    goto :goto_1

    :cond_1
    const-wide/16 v17, 0x0

    :goto_1
    iget-object v12, v1, Lcom/layla/cubism/RNCubism$1;->this$0:Lcom/layla/cubism/RNCubism;

    move-wide v13, v6

    .line 87
    invoke-static/range {v12 .. v18}, Lcom/layla/cubism/RNCubism;->-$$Nest$monVolumeDataReceived(Lcom/layla/cubism/RNCubism;DDD)V

    goto :goto_2

    .line 89
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/layla/cubism/RNCubism$1;->this$0:Lcom/layla/cubism/RNCubism;

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/layla/cubism/RNCubism;->-$$Nest$mhandleInternalError(Lcom/layla/cubism/RNCubism;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "Exception during Visualizer polling"

    .line 97
    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v1, Lcom/layla/cubism/RNCubism$1;->this$0:Lcom/layla/cubism/RNCubism;

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Visualizer polling exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/layla/cubism/RNCubism;->-$$Nest$mhandleInternalError(Lcom/layla/cubism/RNCubism;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v2, "Visualizer is no longer active (IllegalStateException). Stopping polling."

    .line 94
    invoke-static {v5, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Lcom/layla/cubism/RNCubism$1;->this$0:Lcom/layla/cubism/RNCubism;

    .line 95
    invoke-virtual {v0}, Lcom/layla/cubism/RNCubism;->stopLipSync()V

    :cond_3
    :goto_2
    iget-object v0, v1, Lcom/layla/cubism/RNCubism$1;->this$0:Lcom/layla/cubism/RNCubism;

    .line 102
    invoke-static {v0}, Lcom/layla/cubism/RNCubism;->-$$Nest$fgetisVisualizing(Lcom/layla/cubism/RNCubism;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/layla/cubism/RNCubism$1;->this$0:Lcom/layla/cubism/RNCubism;

    invoke-static {v0}, Lcom/layla/cubism/RNCubism;->-$$Nest$fgetpollingHandler(Lcom/layla/cubism/RNCubism;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/layla/cubism/RNCubism$1;->this$0:Lcom/layla/cubism/RNCubism;

    .line 103
    invoke-static {v0}, Lcom/layla/cubism/RNCubism;->-$$Nest$fgetpollingHandler(Lcom/layla/cubism/RNCubism;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
