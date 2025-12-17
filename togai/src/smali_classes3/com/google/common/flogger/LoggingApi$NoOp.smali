.class public Lcom/google/common/flogger/LoggingApi$NoOp;
.super Ljava/lang/Object;
.source "LoggingApi.java"

# interfaces
.implements Lcom/google/common/flogger/LoggingApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/LoggingApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<API::",
        "Lcom/google/common/flogger/LoggingApi<",
        "TAPI;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/common/flogger/LoggingApi<",
        "TAPI;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final atMostEvery(ILjava/util/concurrent/TimeUnit;)Lcom/google/common/flogger/LoggingApi;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TAPI;"
        }
    .end annotation

    const-string p1, "time unit"

    .line 694
    invoke-static {p2, p1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 695
    invoke-virtual {p0}, Lcom/google/common/flogger/LoggingApi$NoOp;->noOp()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    return-object p1
.end method

.method public final every(I)Lcom/google/common/flogger/LoggingApi;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TAPI;"
        }
    .end annotation

    .line 689
    invoke-virtual {p0}, Lcom/google/common/flogger/LoggingApi$NoOp;->noOp()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    return-object p1
.end method

.method public final isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final log()V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;B)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;BB)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;BC)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;BD)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;BF)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;BI)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;BJ)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;BLjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;BS)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;BZ)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;C)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;CB)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;CC)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;CD)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;CF)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;CI)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;CJ)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;CLjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;CS)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;CZ)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;DB)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;DC)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;DD)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;DF)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;DI)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;DJ)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;DLjava/lang/Object;)V
    .locals 0
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;DS)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;DZ)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;FB)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;FC)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;FD)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;FF)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;FI)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;FJ)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;FLjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;FS)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;FZ)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;IB)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;IC)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;ID)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;IF)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;IJ)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;IS)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;IZ)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;JB)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;JC)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;JD)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;JF)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;JI)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;JLjava/lang/Object;)V
    .locals 0
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;JS)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;JZ)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;B)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;C)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;D)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;F)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final varargs log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;S)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;S)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;SB)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;SC)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;SD)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;SF)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;SI)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;SJ)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;SLjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;SS)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;SZ)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;ZB)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;ZC)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;ZD)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;ZF)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;ZI)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;ZJ)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;ZLjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method public final log(Ljava/lang/String;ZS)V
    .locals 0

    return-void
.end method

.method public final log(Ljava/lang/String;ZZ)V
    .locals 0

    return-void
.end method

.method public final logVarargs(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected final noOp()Lcom/google/common/flogger/LoggingApi;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation

    return-object p0
.end method

.method public final with(Lcom/google/common/flogger/MetadataKey;)Lcom/google/common/flogger/LoggingApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "Ljava/lang/Boolean;",
            ">;)TAPI;"
        }
    .end annotation

    const-string v0, "metadata key"

    .line 678
    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 679
    invoke-virtual {p0}, Lcom/google/common/flogger/LoggingApi$NoOp;->noOp()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    return-object p1
.end method

.method public final with(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Lcom/google/common/flogger/LoggingApi;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;TT;)TAPI;"
        }
    .end annotation

    const-string p2, "metadata key"

    .line 671
    invoke-static {p1, p2}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 672
    invoke-virtual {p0}, Lcom/google/common/flogger/LoggingApi$NoOp;->noOp()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    return-object p1
.end method

.method public final withCause(Ljava/lang/Throwable;)Lcom/google/common/flogger/LoggingApi;
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TAPI;"
        }
    .end annotation

    .line 684
    invoke-virtual {p0}, Lcom/google/common/flogger/LoggingApi$NoOp;->noOp()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    return-object p1
.end method

.method public withInjectedLogSite(Lcom/google/common/flogger/LogSite;)Lcom/google/common/flogger/LoggingApi;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/LogSite;",
            ")TAPI;"
        }
    .end annotation

    .line 651
    invoke-virtual {p0}, Lcom/google/common/flogger/LoggingApi$NoOp;->noOp()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    return-object p1
.end method

.method public withInjectedLogSite(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/common/flogger/LoggingApi;
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")TAPI;"
        }
    .end annotation

    .line 660
    invoke-virtual {p0}, Lcom/google/common/flogger/LoggingApi$NoOp;->noOp()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    return-object p1
.end method

.method public withStackTrace(Lcom/google/common/flogger/StackSize;)Lcom/google/common/flogger/LoggingApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/StackSize;",
            ")TAPI;"
        }
    .end annotation

    const-string v0, "stack size"

    .line 701
    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 702
    invoke-virtual {p0}, Lcom/google/common/flogger/LoggingApi$NoOp;->noOp()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    return-object p1
.end method
