.class public final enum Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;
.super Ljava/lang/Enum;
.source "ImageGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConditionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

.field public static final enum DEPTH:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

.field public static final enum EDGE:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

.field public static final enum FACE:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 639
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

    const-string v1, "FACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;->FACE:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

    .line 640
    new-instance v1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

    const-string v2, "EDGE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;->EDGE:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

    .line 641
    new-instance v2, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

    const-string v3, "DEPTH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;->DEPTH:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

    filled-new-array {v0, v1, v2}, [Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;->$VALUES:[Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 638
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

    .line 638
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

    return-object p0
.end method

.method public static values()[Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;->$VALUES:[Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

    .line 638
    invoke-virtual {v0}, [Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

    return-object v0
.end method
