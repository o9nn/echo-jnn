.class public abstract Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionImageResult;
.super Ljava/lang/Object;
.source "ImageGenerator.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/core/TaskResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "ConditionImageResult"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract conditionImage()Lcom/google/mediapipe/framework/image/MPImage;
.end method

.method public abstract timestampMs()J
.end method
