.class interface abstract Lorg/pytorch/executorch/INativePeer;
.super Ljava/lang/Object;
.source "INativePeer.java"


# virtual methods
.method public varargs abstract execute(Ljava/lang/String;[Lorg/pytorch/executorch/EValue;)[Lorg/pytorch/executorch/EValue;
.end method

.method public varargs abstract forward([Lorg/pytorch/executorch/EValue;)[Lorg/pytorch/executorch/EValue;
.end method

.method public abstract loadMethod(Ljava/lang/String;)I
.end method

.method public abstract resetNative()V
.end method
