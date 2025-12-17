.class final enum Lcom/google/common/flogger/backend/FormatType$5;
.super Lcom/google/common/flogger/backend/FormatType;
.source "FormatType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/backend/FormatType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 84
    invoke-direct/range {v0 .. v5}, Lcom/google/common/flogger/backend/FormatType;-><init>(Ljava/lang/String;IZZLcom/google/common/flogger/backend/FormatType$1;)V

    return-void
.end method


# virtual methods
.method public canFormat(Ljava/lang/Object;)Z
    .locals 1

    .line 88
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_1

    instance-of p1, p1, Ljava/math/BigDecimal;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
