.class public Lapp/rive/runtime/kotlin/core/RiveTextValueRun;
.super Lapp/rive/runtime/kotlin/core/NativeObject;
.source "RiveTextValueRun.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0019\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0082 J\u0011\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0003H\u0082 J\u0008\u0010\u0010\u001a\u00020\u0006H\u0016R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/RiveTextValueRun;",
        "Lapp/rive/runtime/kotlin/core/NativeObject;",
        "unsafeCppPointer",
        "",
        "(J)V",
        "name",
        "",
        "text",
        "getText",
        "()Ljava/lang/String;",
        "setText",
        "(Ljava/lang/String;)V",
        "cppSetText",
        "",
        "cppPointer",
        "cppText",
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

.method private final native cppSetText(JLjava/lang/String;)V
.end method

.method private final native cppText(J)Ljava/lang/String;
.end method


# virtual methods
.method public final getText()Ljava/lang/String;
    .locals 2

    .line 15
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/RiveTextValueRun;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/RiveTextValueRun;->cppText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/RiveTextValueRun;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lapp/rive/runtime/kotlin/core/RiveTextValueRun;->cppSetText(JLjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextValueRun: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/RiveTextValueRun;->getText()Ljava/lang/String;

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
