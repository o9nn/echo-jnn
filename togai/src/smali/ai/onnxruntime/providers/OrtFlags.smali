.class public interface abstract Lai/onnxruntime/providers/OrtFlags;
.super Ljava/lang/Object;
.source "OrtFlags.java"


# direct methods
.method public static aggregateToInt(Ljava/util/EnumSet;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;:",
            "Lai/onnxruntime/providers/OrtFlags;",
            ">(",
            "Ljava/util/EnumSet<",
            "TE;>;)I"
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lai/onnxruntime/providers/OrtFlags;

    .line 30
    invoke-interface {v1}, Lai/onnxruntime/providers/OrtFlags;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public abstract getValue()I
.end method
