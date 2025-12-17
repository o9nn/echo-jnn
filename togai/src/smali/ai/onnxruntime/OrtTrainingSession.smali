.class public final Lai/onnxruntime/OrtTrainingSession;
.super Ljava/lang/Object;
.source "OrtTrainingSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;
    }
.end annotation


# instance fields
.field private final allocator:Lai/onnxruntime/OrtAllocator;

.field private final checkpoint:Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;

.field private closed:Z

.field private final evalInputNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final evalOutputNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final evalPath:Ljava/lang/String;

.field private final nativeHandle:J

.field private final optimizerPath:Ljava/lang/String;

.field private final trainInputNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final trainOutputNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final trainPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    :try_start_0
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->init()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 32
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to load onnx-runtime library"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(JLai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v10, p3

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, v9, Lai/onnxruntime/OrtTrainingSession;->closed:Z

    move-wide v11, p1

    iput-wide v11, v9, Lai/onnxruntime/OrtTrainingSession;->nativeHandle:J

    iput-object v10, v9, Lai/onnxruntime/OrtTrainingSession;->allocator:Lai/onnxruntime/OrtAllocator;

    move-object/from16 v0, p4

    iput-object v0, v9, Lai/onnxruntime/OrtTrainingSession;->checkpoint:Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;

    move-object/from16 v0, p5

    iput-object v0, v9, Lai/onnxruntime/OrtTrainingSession;->trainPath:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v0, v9, Lai/onnxruntime/OrtTrainingSession;->evalPath:Ljava/lang/String;

    move-object/from16 v0, p7

    iput-object v0, v9, Lai/onnxruntime/OrtTrainingSession;->optimizerPath:Ljava/lang/String;

    .line 117
    new-instance v13, Ljava/util/LinkedHashSet;

    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v7, v10, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v0, p0

    move-wide v5, p1

    .line 121
    invoke-direct/range {v0 .. v8}, Lai/onnxruntime/OrtTrainingSession;->getTrainInputNames(JJJJ)[Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 118
    invoke-static {v13}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v9, Lai/onnxruntime/OrtTrainingSession;->trainInputNames:Ljava/util/Set;

    .line 126
    new-instance v13, Ljava/util/LinkedHashSet;

    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v7, v10, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v0, p0

    .line 130
    invoke-direct/range {v0 .. v8}, Lai/onnxruntime/OrtTrainingSession;->getTrainOutputNames(JJJJ)[Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 127
    invoke-static {v13}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v9, Lai/onnxruntime/OrtTrainingSession;->trainOutputNames:Ljava/util/Set;

    .line 135
    new-instance v13, Ljava/util/LinkedHashSet;

    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v7, v10, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v0, p0

    .line 139
    invoke-direct/range {v0 .. v8}, Lai/onnxruntime/OrtTrainingSession;->getEvalInputNames(JJJJ)[Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 136
    invoke-static {v13}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v9, Lai/onnxruntime/OrtTrainingSession;->evalInputNames:Ljava/util/Set;

    .line 144
    new-instance v13, Ljava/util/LinkedHashSet;

    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v7, v10, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v0, p0

    .line 148
    invoke-direct/range {v0 .. v8}, Lai/onnxruntime/OrtTrainingSession;->getEvalOutputNames(JJJJ)[Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 145
    invoke-static {v13}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v9, Lai/onnxruntime/OrtTrainingSession;->evalOutputNames:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 76
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    .line 80
    invoke-virtual/range {p1 .. p1}, Lai/onnxruntime/OrtEnvironment;->getNativeHandle()J

    move-result-wide v4

    .line 81
    invoke-virtual/range {p3 .. p3}, Lai/onnxruntime/OrtSession$SessionOptions;->getNativeHandle()J

    move-result-wide v6

    move-object/from16 v13, p4

    iget-wide v8, v13, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->nativeHandle:J

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 77
    invoke-static/range {v0 .. v12}, Lai/onnxruntime/OrtTrainingSession;->createTrainingSession(JJJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    move-object/from16 v8, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    .line 76
    invoke-direct/range {v8 .. v15}, Lai/onnxruntime/OrtTrainingSession;-><init>(JLai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkClosed()V
    .locals 2

    iget-boolean v0, p0, Lai/onnxruntime/OrtTrainingSession;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to use a closed OrtTrainingSession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native closeSession(JJ)V
.end method

.method private static native createTrainingSession(JJJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native evalStep(JJJJ[Ljava/lang/String;[JJ[Ljava/lang/String;J[Lai/onnxruntime/OnnxValue;[JJ)[Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native exportModelForInference(JJJLjava/lang/String;J[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native getEvalInputNames(JJJJ)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native getEvalOutputNames(JJJJ)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native getLearningRate(JJJ)F
.end method

.method private native getTrainInputNames(JJJJ)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native getTrainOutputNames(JJJJ)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native lazyResetGrad(JJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native optimizerStep(JJJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native registerLinearLRScheduler(JJJJJF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native schedulerStep(JJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native setLearningRate(JJJF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method public static setSeed(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 407
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    move-wide v4, p0

    invoke-static/range {v0 .. v5}, Lai/onnxruntime/OrtTrainingSession;->setSeed(JJJ)V

    return-void
.end method

.method private static native setSeed(JJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native trainStep(JJJJ[Ljava/lang/String;[JJ[Ljava/lang/String;J[Lai/onnxruntime/OnnxValue;[JJ)[Z
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    iget-object v0, p0, Lai/onnxruntime/OrtTrainingSession;->checkpoint:Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;

    .line 233
    invoke-virtual {v0, p1, p2}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->addProperty(Ljava/lang/String;F)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    iget-object v0, p0, Lai/onnxruntime/OrtTrainingSession;->checkpoint:Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;

    .line 244
    invoke-virtual {v0, p1, p2}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->addProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    iget-object v0, p0, Lai/onnxruntime/OrtTrainingSession;->checkpoint:Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;

    .line 255
    invoke-virtual {v0, p1, p2}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 4

    iget-boolean v0, p0, Lai/onnxruntime/OrtTrainingSession;->closed:Z

    if-nez v0, :cond_0

    .line 301
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OrtTrainingSession;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtTrainingSession;->closeSession(JJ)V

    iget-object v0, p0, Lai/onnxruntime/OrtTrainingSession;->checkpoint:Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;

    .line 302
    invoke-virtual {v0}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lai/onnxruntime/OrtTrainingSession;->closed:Z

    return-void

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to close an already closed OrtSession."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public evalStep(Ljava/util/Map;)Lai/onnxruntime/OrtSession$Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxTensorLike;",
            ">;)",
            "Lai/onnxruntime/OrtSession$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    iget-object v0, p0, Lai/onnxruntime/OrtTrainingSession;->evalOutputNames:Ljava/util/Set;

    .line 622
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lai/onnxruntime/OrtTrainingSession;->evalStep(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;

    move-result-object p1

    return-object p1
.end method

.method public evalStep(Ljava/util/Map;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxTensorLike;",
            ">;",
            "Lai/onnxruntime/OrtSession$RunOptions;",
            ")",
            "Lai/onnxruntime/OrtSession$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    iget-object v0, p0, Lai/onnxruntime/OrtTrainingSession;->evalOutputNames:Ljava/util/Set;

    .line 636
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lai/onnxruntime/OrtTrainingSession;->evalStep(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;

    move-result-object p1

    return-object p1
.end method

.method public evalStep(Ljava/util/Map;Ljava/util/Map;)Lai/onnxruntime/OrtSession$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxTensorLike;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxValue;",
            ">;)",
            "Lai/onnxruntime/OrtSession$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 669
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lai/onnxruntime/OrtTrainingSession;->evalStep(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;

    move-result-object p1

    return-object p1
.end method

.method public evalStep(Ljava/util/Map;Ljava/util/Set;)Lai/onnxruntime/OrtSession$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxTensorLike;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lai/onnxruntime/OrtSession$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 650
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lai/onnxruntime/OrtTrainingSession;->evalStep(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;

    move-result-object p1

    return-object p1
.end method

.method public evalStep(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxTensorLike;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxValue;",
            ">;",
            "Lai/onnxruntime/OrtSession$RunOptions;",
            ")",
            "Lai/onnxruntime/OrtSession$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    move-object/from16 v13, p0

    .line 695
    invoke-direct/range {p0 .. p0}, Lai/onnxruntime/OrtTrainingSession;->checkClosed()V

    .line 696
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, ") found "

    if-eqz v0, :cond_0

    iget-object v0, v13, Lai/onnxruntime/OrtTrainingSession;->evalInputNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 697
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v2, v13, Lai/onnxruntime/OrtTrainingSession;->evalInputNames:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-gt v0, v2, :cond_a

    iget-object v0, v13, Lai/onnxruntime/OrtTrainingSession;->evalOutputNames:Ljava/util/Set;

    .line 704
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 705
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-eqz v2, :cond_9

    if-gt v2, v0, :cond_9

    .line 713
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 714
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v10, v1, [J

    .line 716
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ", expected one of "

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v6, v13, Lai/onnxruntime/OrtTrainingSession;->evalInputNames:Ljava/util/Set;

    .line 717
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 718
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v9, v3

    .line 719
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lai/onnxruntime/OnnxTensorLike;

    invoke-virtual {v4}, Lai/onnxruntime/OnnxTensorLike;->getNativeHandle()J

    move-result-wide v4

    aput-wide v4, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 722
    :cond_1
    new-instance v0, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown input name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 723
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Lai/onnxruntime/OrtTrainingSession;->evalInputNames:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v3

    add-int v14, v1, v3

    new-array v15, v14, [Ljava/lang/String;

    .line 727
    new-array v11, v14, [Lai/onnxruntime/OnnxValue;

    .line 728
    new-array v12, v14, [J

    .line 730
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "Unknown output name "

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v6, v13, Lai/onnxruntime/OrtTrainingSession;->evalOutputNames:Ljava/util/Set;

    .line 731
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 732
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v15, v2

    .line 733
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lai/onnxruntime/OnnxValue;

    aput-object v4, v11, v2

    .line 734
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lai/onnxruntime/OnnxValue;

    invoke-static {v3}, Lai/onnxruntime/OrtSession;->getHandle(Lai/onnxruntime/OnnxValue;)J

    move-result-wide v3

    aput-wide v3, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 737
    :cond_3
    new-instance v0, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 739
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Lai/onnxruntime/OrtTrainingSession;->evalOutputNames:Ljava/util/Set;

    .line 741
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_4
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, v13, Lai/onnxruntime/OrtTrainingSession;->evalOutputNames:Ljava/util/Set;

    .line 745
    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object/from16 v6, p3

    .line 746
    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 747
    aput-object v3, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 752
    :cond_5
    new-instance v0, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Output \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was found in both the requested outputs and the pinned outputs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_6
    new-instance v0, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Lai/onnxruntime/OrtTrainingSession;->evalOutputNames:Ljava/util/Set;

    .line 757
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-nez p4, :cond_8

    const-wide/16 v1, 0x0

    goto :goto_3

    .line 760
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lai/onnxruntime/OrtSession$RunOptions;->getNativeHandle()J

    move-result-wide v1

    :goto_3
    move-wide/from16 v18, v1

    .line 762
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v5, v13, Lai/onnxruntime/OrtTrainingSession;->nativeHandle:J

    iget-object v7, v13, Lai/onnxruntime/OrtTrainingSession;->allocator:Lai/onnxruntime/OrtAllocator;

    iget-wide v7, v7, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    int-to-long v11, v0

    move-object/from16 v0, v16

    int-to-long v13, v14

    move-object/from16 p1, v15

    move-wide v14, v13

    move-object v13, v0

    move-object/from16 v0, p0

    move-object/from16 p2, v13

    move-object/from16 v13, p1

    move-object/from16 v16, p2

    .line 763
    invoke-direct/range {v0 .. v19}, Lai/onnxruntime/OrtTrainingSession;->evalStep(JJJJ[Ljava/lang/String;[JJ[Ljava/lang/String;J[Lai/onnxruntime/OnnxValue;[JJ)[Z

    move-result-object v0

    .line 776
    new-instance v1, Lai/onnxruntime/OrtSession$Result;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v1, v2, v3, v0}, Lai/onnxruntime/OrtSession$Result;-><init>([Ljava/lang/String;[Lai/onnxruntime/OnnxValue;[Z)V

    return-object v1

    .line 707
    :cond_9
    new-instance v3, Lai/onnxruntime/OrtException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected number of requestedOutputs & pinnedOutputs, expected [1,"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 698
    :cond_a
    new-instance v0, Lai/onnxruntime/OrtException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected number of inputs, expected [1,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p0

    iget-object v4, v3, Lai/onnxruntime/OrtTrainingSession;->evalInputNames:Ljava/util/Set;

    .line 700
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 702
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exportModelForInference(Ljava/nio/file/Path;[Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1009
    invoke-direct {p0}, Lai/onnxruntime/OrtTrainingSession;->checkClosed()V

    .line 1010
    array-length v0, p2

    if-eqz v0, :cond_0

    .line 1013
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1014
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v4, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v6, p0, Lai/onnxruntime/OrtTrainingSession;->nativeHandle:J

    array-length p1, p2

    int-to-long v9, p1

    move-object v1, p0

    move-object v11, p2

    invoke-direct/range {v1 .. v11}, Lai/onnxruntime/OrtTrainingSession;->exportModelForInference(JJJLjava/lang/String;J[Ljava/lang/String;)V

    return-void

    .line 1011
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Requires at least one output name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEvalInputNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lai/onnxruntime/OrtTrainingSession;->evalInputNames:Ljava/util/Set;

    return-object v0
.end method

.method public getEvalOutputNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lai/onnxruntime/OrtTrainingSession;->evalOutputNames:Ljava/util/Set;

    return-object v0
.end method

.method public getFloatProperty(Ljava/lang/String;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    iget-object v0, p0, Lai/onnxruntime/OrtTrainingSession;->checkpoint:Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;

    iget-object v1, p0, Lai/onnxruntime/OrtTrainingSession;->allocator:Lai/onnxruntime/OrtAllocator;

    .line 266
    invoke-virtual {v0, v1, p1}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->getFloatProperty(Lai/onnxruntime/OrtAllocator;Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public getIntProperty(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    iget-object v0, p0, Lai/onnxruntime/OrtTrainingSession;->checkpoint:Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;

    iget-object v1, p0, Lai/onnxruntime/OrtTrainingSession;->allocator:Lai/onnxruntime/OrtAllocator;

    .line 277
    invoke-virtual {v0, v1, p1}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->getIntProperty(Lai/onnxruntime/OrtAllocator;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLearningRate()F
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 859
    invoke-direct {p0}, Lai/onnxruntime/OrtTrainingSession;->checkClosed()V

    .line 860
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v5, p0, Lai/onnxruntime/OrtTrainingSession;->nativeHandle:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lai/onnxruntime/OrtTrainingSession;->getLearningRate(JJJ)F

    move-result v0

    return v0
.end method

.method public getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    iget-object v0, p0, Lai/onnxruntime/OrtTrainingSession;->checkpoint:Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;

    iget-object v1, p0, Lai/onnxruntime/OrtTrainingSession;->allocator:Lai/onnxruntime/OrtAllocator;

    .line 288
    invoke-virtual {v0, v1, p1}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->getStringProperty(Lai/onnxruntime/OrtAllocator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTrainInputNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lai/onnxruntime/OrtTrainingSession;->trainInputNames:Ljava/util/Set;

    return-object v0
.end method

.method public getTrainOutputNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lai/onnxruntime/OrtTrainingSession;->trainOutputNames:Ljava/util/Set;

    return-object v0
.end method

.method public lazyResetGrad()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 378
    invoke-direct {p0}, Lai/onnxruntime/OrtTrainingSession;->checkClosed()V

    .line 379
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v5, p0, Lai/onnxruntime/OrtTrainingSession;->nativeHandle:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lai/onnxruntime/OrtTrainingSession;->lazyResetGrad(JJJ)V

    return-void
.end method

.method public optimizerStep()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 885
    invoke-virtual {p0, v0}, Lai/onnxruntime/OrtTrainingSession;->optimizerStep(Lai/onnxruntime/OrtSession$RunOptions;)V

    return-void
.end method

.method public optimizerStep(Lai/onnxruntime/OrtSession$RunOptions;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 897
    invoke-direct {p0}, Lai/onnxruntime/OrtTrainingSession;->checkClosed()V

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 898
    :cond_0
    invoke-virtual {p1}, Lai/onnxruntime/OrtSession$RunOptions;->getNativeHandle()J

    move-result-wide v0

    :goto_0
    move-wide v9, v0

    .line 899
    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v5, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v7, p0, Lai/onnxruntime/OrtTrainingSession;->nativeHandle:J

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lai/onnxruntime/OrtTrainingSession;->optimizerStep(JJJJ)V

    return-void
.end method

.method public registerLinearLRScheduler(JJF)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 935
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    move-object v12, p0

    iget-wide v5, v12, Lai/onnxruntime/OrtTrainingSession;->nativeHandle:J

    move-object v0, p0

    move-wide v7, p1

    move-wide/from16 v9, p3

    move/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lai/onnxruntime/OrtTrainingSession;->registerLinearLRScheduler(JJJJJF)V

    return-void
.end method

.method public saveCheckpoint(Ljava/nio/file/Path;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 319
    invoke-direct {p0}, Lai/onnxruntime/OrtTrainingSession;->checkClosed()V

    iget-object v0, p0, Lai/onnxruntime/OrtTrainingSession;->checkpoint:Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;

    .line 320
    invoke-virtual {v0, p1, p2}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->saveCheckpoint(Ljava/nio/file/Path;Z)V

    return-void
.end method

.method public schedulerStep()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 975
    invoke-direct {p0}, Lai/onnxruntime/OrtTrainingSession;->checkClosed()V

    .line 976
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v5, p0, Lai/onnxruntime/OrtTrainingSession;->nativeHandle:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lai/onnxruntime/OrtTrainingSession;->schedulerStep(JJJ)V

    return-void
.end method

.method public setLearningRate(F)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 823
    invoke-direct {p0}, Lai/onnxruntime/OrtTrainingSession;->checkClosed()V

    .line 824
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v5, p0, Lai/onnxruntime/OrtTrainingSession;->nativeHandle:J

    move-object v0, p0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lai/onnxruntime/OrtTrainingSession;->setLearningRate(JJJF)V

    return-void
.end method

.method public trainStep(Ljava/util/Map;)Lai/onnxruntime/OrtSession$Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxTensorLike;",
            ">;)",
            "Lai/onnxruntime/OrtSession$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    iget-object v0, p0, Lai/onnxruntime/OrtTrainingSession;->trainOutputNames:Ljava/util/Set;

    .line 422
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lai/onnxruntime/OrtTrainingSession;->trainStep(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;

    move-result-object p1

    return-object p1
.end method

.method public trainStep(Ljava/util/Map;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxTensorLike;",
            ">;",
            "Lai/onnxruntime/OrtSession$RunOptions;",
            ")",
            "Lai/onnxruntime/OrtSession$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    iget-object v0, p0, Lai/onnxruntime/OrtTrainingSession;->trainOutputNames:Ljava/util/Set;

    .line 436
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lai/onnxruntime/OrtTrainingSession;->trainStep(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;

    move-result-object p1

    return-object p1
.end method

.method public trainStep(Ljava/util/Map;Ljava/util/Map;)Lai/onnxruntime/OrtSession$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxTensorLike;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxValue;",
            ">;)",
            "Lai/onnxruntime/OrtSession$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 469
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lai/onnxruntime/OrtTrainingSession;->trainStep(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;

    move-result-object p1

    return-object p1
.end method

.method public trainStep(Ljava/util/Map;Ljava/util/Set;)Lai/onnxruntime/OrtSession$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxTensorLike;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lai/onnxruntime/OrtSession$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 450
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lai/onnxruntime/OrtTrainingSession;->trainStep(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;

    move-result-object p1

    return-object p1
.end method

.method public trainStep(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxTensorLike;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxValue;",
            ">;",
            "Lai/onnxruntime/OrtSession$RunOptions;",
            ")",
            "Lai/onnxruntime/OrtSession$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    move-object/from16 v13, p0

    .line 495
    invoke-direct/range {p0 .. p0}, Lai/onnxruntime/OrtTrainingSession;->checkClosed()V

    .line 496
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, ") found "

    if-eqz v0, :cond_0

    iget-object v0, v13, Lai/onnxruntime/OrtTrainingSession;->trainInputNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 497
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v2, v13, Lai/onnxruntime/OrtTrainingSession;->trainInputNames:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-gt v0, v2, :cond_a

    iget-object v0, v13, Lai/onnxruntime/OrtTrainingSession;->trainOutputNames:Ljava/util/Set;

    .line 504
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 505
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-eqz v2, :cond_9

    if-gt v2, v0, :cond_9

    .line 513
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 514
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v10, v1, [J

    .line 516
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ", expected one of "

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v6, v13, Lai/onnxruntime/OrtTrainingSession;->trainInputNames:Ljava/util/Set;

    .line 517
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 518
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v9, v3

    .line 519
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lai/onnxruntime/OnnxTensorLike;

    invoke-virtual {v4}, Lai/onnxruntime/OnnxTensorLike;->getNativeHandle()J

    move-result-wide v4

    aput-wide v4, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 522
    :cond_1
    new-instance v0, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown input name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Lai/onnxruntime/OrtTrainingSession;->trainInputNames:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v3

    add-int v14, v1, v3

    new-array v15, v14, [Ljava/lang/String;

    .line 527
    new-array v11, v14, [Lai/onnxruntime/OnnxValue;

    .line 528
    new-array v12, v14, [J

    .line 530
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "Unknown output name "

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v6, v13, Lai/onnxruntime/OrtTrainingSession;->trainOutputNames:Ljava/util/Set;

    .line 531
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 532
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v15, v2

    .line 533
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lai/onnxruntime/OnnxValue;

    aput-object v4, v11, v2

    .line 534
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lai/onnxruntime/OnnxValue;

    invoke-static {v3}, Lai/onnxruntime/OrtSession;->getHandle(Lai/onnxruntime/OnnxValue;)J

    move-result-wide v3

    aput-wide v3, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 537
    :cond_3
    new-instance v0, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 539
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Lai/onnxruntime/OrtTrainingSession;->trainOutputNames:Ljava/util/Set;

    .line 541
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_4
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, v13, Lai/onnxruntime/OrtTrainingSession;->trainOutputNames:Ljava/util/Set;

    .line 545
    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object/from16 v6, p3

    .line 546
    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 547
    aput-object v3, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 552
    :cond_5
    new-instance v0, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Output \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was found in both the requested outputs and the pinned outputs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_6
    new-instance v0, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Lai/onnxruntime/OrtTrainingSession;->trainOutputNames:Ljava/util/Set;

    .line 557
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-nez p4, :cond_8

    const-wide/16 v1, 0x0

    goto :goto_3

    .line 560
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lai/onnxruntime/OrtSession$RunOptions;->getNativeHandle()J

    move-result-wide v1

    :goto_3
    move-wide/from16 v18, v1

    .line 562
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v5, v13, Lai/onnxruntime/OrtTrainingSession;->nativeHandle:J

    iget-object v7, v13, Lai/onnxruntime/OrtTrainingSession;->allocator:Lai/onnxruntime/OrtAllocator;

    iget-wide v7, v7, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    int-to-long v11, v0

    move-object/from16 v0, v16

    int-to-long v13, v14

    move-object/from16 p1, v15

    move-wide v14, v13

    move-object v13, v0

    move-object/from16 v0, p0

    move-object/from16 p2, v13

    move-object/from16 v13, p1

    move-object/from16 v16, p2

    .line 563
    invoke-direct/range {v0 .. v19}, Lai/onnxruntime/OrtTrainingSession;->trainStep(JJJJ[Ljava/lang/String;[JJ[Ljava/lang/String;J[Lai/onnxruntime/OnnxValue;[JJ)[Z

    move-result-object v0

    .line 576
    new-instance v1, Lai/onnxruntime/OrtSession$Result;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v1, v2, v3, v0}, Lai/onnxruntime/OrtSession$Result;-><init>([Ljava/lang/String;[Lai/onnxruntime/OnnxValue;[Z)V

    return-object v1

    .line 507
    :cond_9
    new-instance v3, Lai/onnxruntime/OrtException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected number of requestedOutputs & pinnedOutputs, expected [1,"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 498
    :cond_a
    new-instance v0, Lai/onnxruntime/OrtException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected number of inputs, expected [1,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p0

    iget-object v4, v3, Lai/onnxruntime/OrtTrainingSession;->trainInputNames:Ljava/util/Set;

    .line 500
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 502
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
