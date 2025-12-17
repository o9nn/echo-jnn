.class public final Lcom/k2fsa/sherpa/onnx/Sherpa$AudioPermissionException;
.super Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileException;
.source "Sherpa.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/k2fsa/sherpa/onnx/Sherpa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioPermissionException"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/Sherpa$AudioPermissionException;",
        "Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileException;",
        "message",
        "",
        "cause",
        "",
        "(Ljava/lang/String;Ljava/lang/Throwable;)V",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 79
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioPermissionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
