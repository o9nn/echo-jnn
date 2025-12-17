.class public final Landroidx/compose/ui/input/rotary/RotaryScrollEvent;
.super Ljava/lang/Object;
.source "RotaryScrollEvent.kt"

# interfaces
.implements Landroidx/compose/ui/input/focus/FocusDirectedInputEvent;


# annotations
.annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRotaryScrollEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RotaryScrollEvent.kt\nandroidx/compose/ui/input/rotary/RotaryScrollEvent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,63:1\n1#2:64\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/ui/input/rotary/RotaryScrollEvent;",
        "Landroidx/compose/ui/input/focus/FocusDirectedInputEvent;",
        "verticalScrollPixels",
        "",
        "horizontalScrollPixels",
        "uptimeMillis",
        "",
        "(FFJ)V",
        "getHorizontalScrollPixels",
        "()F",
        "getUptimeMillis",
        "()J",
        "getVerticalScrollPixels",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final horizontalScrollPixels:F

.field private final uptimeMillis:J

.field private final verticalScrollPixels:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(FFJ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->verticalScrollPixels:F

    iput p2, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->horizontalScrollPixels:F

    iput-wide p3, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->uptimeMillis:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 48
    instance-of v0, p1, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;

    if-eqz v0, :cond_0

    .line 49
    check-cast p1, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;

    iget v0, p1, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->verticalScrollPixels:F

    iget v1, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->verticalScrollPixels:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    .line 50
    iget v0, p1, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->horizontalScrollPixels:F

    iget v1, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->horizontalScrollPixels:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    .line 51
    iget-wide v0, p1, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->uptimeMillis:J

    iget-wide v2, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->uptimeMillis:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getHorizontalScrollPixels()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->horizontalScrollPixels:F

    return v0
.end method

.method public final getUptimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->uptimeMillis:J

    return-wide v0
.end method

.method public final getVerticalScrollPixels()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->verticalScrollPixels:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->verticalScrollPixels:F

    .line 54
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->horizontalScrollPixels:F

    .line 55
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->uptimeMillis:J

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RotaryScrollEvent(verticalScrollPixels="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->verticalScrollPixels:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",horizontalScrollPixels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->horizontalScrollPixels:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",uptimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;->uptimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
