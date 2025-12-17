.class Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;
.super Ljava/lang/Object;
.source "ImageInputStreamImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PositionStack"
.end annotation


# static fields
.field private static final SIZE:I = 0xa


# instance fields
.field private pos:I

.field private values:[J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;->values:[J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;->pos:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$1;)V
    .locals 0

    .line 526
    invoke-direct {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;-><init>()V

    return-void
.end method

.method private ensure(I)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;->values:[J

    .line 554
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [J

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;->values:[J

    const/4 v1, 0x0

    .line 555
    array-length v2, v0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;->values:[J

    return-void
.end method


# virtual methods
.method isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;->pos:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method pop()J
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;->values:[J

    iget v1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;->pos:I

    .line 544
    aget-wide v0, v0, v1

    return-wide v0
.end method

.method push(J)V
    .locals 3

    iget v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;->pos:I

    iget-object v1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;->values:[J

    .line 535
    array-length v1, v1

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 537
    invoke-direct {p0, v0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;->ensure(I)V

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;->values:[J

    iget v1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;->pos:I

    .line 539
    aput-wide p1, v0, v1

    return-void
.end method
