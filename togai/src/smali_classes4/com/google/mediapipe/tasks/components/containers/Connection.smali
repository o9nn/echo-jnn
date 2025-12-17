.class public abstract Lcom/google/mediapipe/tasks/components/containers/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;

    invoke-direct {v0, p0, p1}, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public abstract end()I
.end method

.method public abstract start()I
.end method
