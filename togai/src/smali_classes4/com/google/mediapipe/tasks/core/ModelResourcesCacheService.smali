.class Lcom/google/mediapipe/tasks/core/ModelResourcesCacheService;
.super Ljava/lang/Object;
.source "ModelResourcesCacheService.java"

# interfaces
.implements Lcom/google/mediapipe/framework/GraphService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/mediapipe/framework/GraphService<",
        "Lcom/google/mediapipe/tasks/core/ModelResourcesCache;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public installServiceObject(JLcom/google/mediapipe/tasks/core/ModelResourcesCache;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "object"
        }
    .end annotation

    .line 25
    invoke-virtual {p3}, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;->getNativeHandle()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/mediapipe/tasks/core/ModelResourcesCacheService;->nativeInstallServiceObject(JJ)V

    return-void
.end method

.method public bridge synthetic installServiceObject(JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "context",
            "object"
        }
    .end annotation

    .line 20
    check-cast p3, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/mediapipe/tasks/core/ModelResourcesCacheService;->installServiceObject(JLcom/google/mediapipe/tasks/core/ModelResourcesCache;)V

    return-void
.end method

.method public native nativeInstallServiceObject(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "object"
        }
    .end annotation
.end method
