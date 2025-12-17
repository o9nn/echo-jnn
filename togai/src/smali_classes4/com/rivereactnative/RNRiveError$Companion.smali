.class public final Lcom/rivereactnative/RNRiveError$Companion;
.super Ljava/lang/Object;
.source "RNRiveError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rivereactnative/RNRiveError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/rivereactnative/RNRiveError$Companion;",
        "",
        "()V",
        "mapToRNRiveError",
        "Lcom/rivereactnative/RNRiveError;",
        "ex",
        "Lapp/rive/runtime/kotlin/core/errors/RiveException;",
        "rive-react-native_release"
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
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/rivereactnative/RNRiveError$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final mapToRNRiveError(Lapp/rive/runtime/kotlin/core/errors/RiveException;)Lcom/rivereactnative/RNRiveError;
    .locals 1

    const-string v0, "ex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    instance-of v0, p1, Lapp/rive/runtime/kotlin/core/errors/ArtboardException;

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/rivereactnative/RNRiveError;->IncorrectArtboardName:Lcom/rivereactnative/RNRiveError;

    .line 27
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/errors/RiveException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/rivereactnative/RNRiveError;->setMessage(Ljava/lang/String;)V

    return-object v0

    .line 30
    :cond_0
    instance-of v0, p1, Lapp/rive/runtime/kotlin/core/errors/UnsupportedRuntimeVersionException;

    if-eqz v0, :cond_1

    .line 31
    sget-object v0, Lcom/rivereactnative/RNRiveError;->UnsupportedRuntimeVersion:Lcom/rivereactnative/RNRiveError;

    .line 32
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/errors/RiveException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/rivereactnative/RNRiveError;->setMessage(Ljava/lang/String;)V

    return-object v0

    .line 35
    :cond_1
    instance-of v0, p1, Lapp/rive/runtime/kotlin/core/errors/MalformedFileException;

    if-eqz v0, :cond_2

    .line 36
    sget-object v0, Lcom/rivereactnative/RNRiveError;->MalformedFile:Lcom/rivereactnative/RNRiveError;

    .line 37
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/errors/RiveException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/rivereactnative/RNRiveError;->setMessage(Ljava/lang/String;)V

    return-object v0

    .line 40
    :cond_2
    instance-of v0, p1, Lapp/rive/runtime/kotlin/core/errors/AnimationException;

    if-eqz v0, :cond_3

    .line 41
    sget-object v0, Lcom/rivereactnative/RNRiveError;->IncorrectAnimationName:Lcom/rivereactnative/RNRiveError;

    .line 42
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/errors/RiveException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/rivereactnative/RNRiveError;->setMessage(Ljava/lang/String;)V

    return-object v0

    .line 45
    :cond_3
    instance-of v0, p1, Lapp/rive/runtime/kotlin/core/errors/StateMachineException;

    if-eqz v0, :cond_4

    .line 46
    sget-object v0, Lcom/rivereactnative/RNRiveError;->IncorrectStateMachineName:Lcom/rivereactnative/RNRiveError;

    .line 47
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/errors/RiveException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/rivereactnative/RNRiveError;->setMessage(Ljava/lang/String;)V

    return-object v0

    .line 50
    :cond_4
    instance-of v0, p1, Lapp/rive/runtime/kotlin/core/errors/StateMachineInputException;

    if-eqz v0, :cond_5

    .line 51
    sget-object v0, Lcom/rivereactnative/RNRiveError;->IncorrectStateMachineInput:Lcom/rivereactnative/RNRiveError;

    .line 52
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/errors/RiveException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/rivereactnative/RNRiveError;->setMessage(Ljava/lang/String;)V

    return-object v0

    .line 55
    :cond_5
    instance-of v0, p1, Lapp/rive/runtime/kotlin/core/errors/TextValueRunException;

    if-eqz v0, :cond_6

    .line 56
    sget-object v0, Lcom/rivereactnative/RNRiveError;->TextRunNotFoundError:Lcom/rivereactnative/RNRiveError;

    .line 57
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/errors/RiveException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/rivereactnative/RNRiveError;->setMessage(Ljava/lang/String;)V

    return-object v0

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method
