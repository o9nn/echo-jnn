.class public Lapp/rive/runtime/kotlin/core/RiveEvent;
.super Lapp/rive/runtime/kotlin/core/NativeObject;
.source "RiveEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0002\u0008\t\u0008\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J-\u0010\u001d\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n`\u000b2\u0006\u0010\u001e\u001a\u00020\u0003H\u0082 J\u0011\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u0003H\u0082 J-\u0010 \u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n`\u000b2\u0006\u0010\u001e\u001a\u00020\u0003H\u0082 J\u0011\u0010!\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u0003H\u0082 J\u0008\u0010\"\u001a\u00020\tH\u0016R-\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n`\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R-\u0010\u0013\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n`\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\rR\u0011\u0010\u0015\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006#"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/RiveEvent;",
        "Lapp/rive/runtime/kotlin/core/NativeObject;",
        "unsafeCppPointer",
        "",
        "delay",
        "",
        "(JF)V",
        "data",
        "Ljava/util/HashMap;",
        "",
        "",
        "Lkotlin/collections/HashMap;",
        "getData",
        "()Ljava/util/HashMap;",
        "getDelay",
        "()F",
        "name",
        "getName",
        "()Ljava/lang/String;",
        "properties",
        "getProperties",
        "type",
        "Lapp/rive/runtime/kotlin/core/EventType;",
        "getType",
        "()Lapp/rive/runtime/kotlin/core/EventType;",
        "typeCode",
        "",
        "getTypeCode",
        "()S",
        "cppData",
        "cppPointer",
        "cppName",
        "cppProperties",
        "cppType",
        "toString",
        "kotlin_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final delay:F


# direct methods
.method public constructor <init>(JF)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lapp/rive/runtime/kotlin/core/NativeObject;-><init>(J)V

    iput p3, p0, Lapp/rive/runtime/kotlin/core/RiveEvent;->delay:F

    return-void
.end method

.method private final native cppData(J)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private final native cppName(J)Ljava/lang/String;
.end method

.method private final native cppProperties(J)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private final native cppType(J)S
.end method

.method private final getTypeCode()S
    .locals 2

    .line 37
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/RiveEvent;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/RiveEvent;->cppType(J)S

    move-result v0

    return v0
.end method


# virtual methods
.method public final getData()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/RiveEvent;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/RiveEvent;->cppData(J)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public final getDelay()F
    .locals 1

    iget v0, p0, Lapp/rive/runtime/kotlin/core/RiveEvent;->delay:F

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 34
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/RiveEvent;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/RiveEvent;->cppName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getProperties()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/RiveEvent;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/RiveEvent;->cppProperties(J)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Lapp/rive/runtime/kotlin/core/EventType;
    .locals 2

    .line 41
    sget-object v0, Lapp/rive/runtime/kotlin/core/EventType;->Companion:Lapp/rive/runtime/kotlin/core/EventType$Companion;

    invoke-direct {p0}, Lapp/rive/runtime/kotlin/core/RiveEvent;->getTypeCode()S

    move-result v1

    invoke-virtual {v0, v1}, Lapp/rive/runtime/kotlin/core/EventType$Companion;->fromInt(S)Lapp/rive/runtime/kotlin/core/EventType;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lapp/rive/runtime/kotlin/core/EventType;->GeneralEvent:Lapp/rive/runtime/kotlin/core/EventType;

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RiveEvent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/RiveEvent;->getData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
