.class public Lcom/google/mediapipe/framework/Compat;
.super Ljava/lang/Object;
.source "Compat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getCurrentNativeEGLContext()J
.end method

.method public static native getCurrentNativeEGLSurface(I)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readdraw"
        }
    .end annotation
.end method
