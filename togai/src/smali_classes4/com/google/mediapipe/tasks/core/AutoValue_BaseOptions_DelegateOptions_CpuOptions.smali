.class final Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_CpuOptions;
.super Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$CpuOptions;
.source "AutoValue_BaseOptions_DelegateOptions_CpuOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_CpuOptions$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$CpuOptions;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_CpuOptions$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_CpuOptions;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 20
    :cond_0
    instance-of p1, p1, Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$CpuOptions;

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CpuOptions{}"

    return-object v0
.end method
