.class public interface abstract Lai/onnxruntime/OnnxValue;
.super Ljava/lang/Object;
.source "OnnxValue.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/OnnxValue$OnnxValueType;
    }
.end annotation


# direct methods
.method public static close(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lai/onnxruntime/OnnxValue;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lai/onnxruntime/OnnxValue;

    .line 85
    invoke-interface {v0}, Lai/onnxruntime/OnnxValue;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static close(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxValue;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lai/onnxruntime/OnnxValue;

    .line 96
    invoke-interface {v0}, Lai/onnxruntime/OnnxValue;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract getInfo()Lai/onnxruntime/ValueInfo;
.end method

.method public abstract getType()Lai/onnxruntime/OnnxValue$OnnxValueType;
.end method

.method public abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method public abstract isClosed()Z
.end method
