.class public final Lapp/rive/runtime/kotlin/core/SMIBoolean;
.super Lapp/rive/runtime/kotlin/core/SMIInput;
.source "SMIBoolean.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0019\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0006H\u0082 J\u0011\u0010\u000f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0003H\u0082 J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R$\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068F@@X\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/SMIBoolean;",
        "Lapp/rive/runtime/kotlin/core/SMIInput;",
        "unsafeCppPointer",
        "",
        "(J)V",
        "value",
        "",
        "getValue",
        "()Z",
        "setValue$kotlin_release",
        "(Z)V",
        "cppSetValue",
        "",
        "cppPointer",
        "newValue",
        "cppValue",
        "toString",
        "",
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

    .line 5
    invoke-direct {p0, p1, p2}, Lapp/rive/runtime/kotlin/core/SMIInput;-><init>(J)V

    return-void
.end method

.method private final native cppSetValue(JZ)V
.end method

.method private final native cppValue(J)Z
.end method


# virtual methods
.method public final getValue()Z
    .locals 2

    .line 10
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/SMIBoolean;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/SMIBoolean;->cppValue(J)Z

    move-result v0

    return v0
.end method

.method public final setValue$kotlin_release(Z)V
    .locals 2

    .line 12
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/SMIBoolean;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lapp/rive/runtime/kotlin/core/SMIBoolean;->cppSetValue(JZ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMIBoolean "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/SMIBoolean;->getName()Ljava/lang/String;

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
