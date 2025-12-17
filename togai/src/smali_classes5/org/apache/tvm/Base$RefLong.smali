.class public Lorg/apache/tvm/Base$RefLong;
.super Ljava/lang/Object;
.source "Base.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tvm/Base;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefLong"
.end annotation


# instance fields
.field public final value:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 41
    invoke-direct {p0, v0, v1}, Lorg/apache/tvm/Base$RefLong;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/tvm/Base$RefLong;->value:J

    return-void
.end method
