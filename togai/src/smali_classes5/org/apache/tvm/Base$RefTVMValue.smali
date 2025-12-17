.class public Lorg/apache/tvm/Base$RefTVMValue;
.super Ljava/lang/Object;
.source "Base.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tvm/Base;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefTVMValue"
.end annotation


# instance fields
.field public final value:Lorg/apache/tvm/TVMValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Lorg/apache/tvm/Base$RefTVMValue;-><init>(Lorg/apache/tvm/TVMValue;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tvm/TVMValue;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tvm/Base$RefTVMValue;->value:Lorg/apache/tvm/TVMValue;

    return-void
.end method
