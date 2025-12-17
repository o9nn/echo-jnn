.class public Lapp/rive/runtime/kotlin/core/SMIInput;
.super Lapp/rive/runtime/kotlin/core/NativeObject;
.source "SMIInput.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0011\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0003H\u0082 J\u0011\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0003H\u0082 J\u0011\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0003H\u0082 J\u0011\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0003H\u0082 J\u0008\u0010\u0013\u001a\u00020\u000bH\u0016R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0007R\u0011\u0010\t\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0007R\u0011\u0010\n\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/SMIInput;",
        "Lapp/rive/runtime/kotlin/core/NativeObject;",
        "unsafeCppPointer",
        "",
        "(J)V",
        "isBoolean",
        "",
        "()Z",
        "isNumber",
        "isTrigger",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "cppIsBoolean",
        "cppPointer",
        "cppIsNumber",
        "cppIsTrigger",
        "cppName",
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


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lapp/rive/runtime/kotlin/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private final native cppIsBoolean(J)Z
.end method

.method private final native cppIsNumber(J)Z
.end method

.method private final native cppIsTrigger(J)Z
.end method

.method private final native cppName(J)Ljava/lang/String;
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 2

    .line 20
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/SMIInput;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/SMIInput;->cppName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isBoolean()Z
    .locals 2

    .line 24
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/SMIInput;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/SMIInput;->cppIsBoolean(J)Z

    move-result v0

    return v0
.end method

.method public final isNumber()Z
    .locals 2

    .line 32
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/SMIInput;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/SMIInput;->cppIsNumber(J)Z

    move-result v0

    return v0
.end method

.method public final isTrigger()Z
    .locals 2

    .line 28
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/SMIInput;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/SMIInput;->cppIsTrigger(J)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMIInput "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/SMIInput;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
