.class final enum Lcom/google/common/flogger/backend/FormatType$3;
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

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/google/common/flogger/backend/FormatType;-><init>(Ljava/lang/String;IZZLcom/google/common/flogger/backend/FormatType$1;)V

    return-void
.end method


# virtual methods
.method public canFormat(Ljava/lang/Object;)Z
    .locals 1

    .line 50
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 52
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 53
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result p1

    return p1
.end method
