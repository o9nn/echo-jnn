.class Lorg/apache/tvm/LibInfo;
.super Ljava/lang/Object;
.source "LibInfo.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method native nativeLibInit(Ljava/lang/String;)I
.end method

.method native shutdown()I
.end method

.method native tvmArrayAlloc([JIIIIILorg/apache/tvm/Base$RefLong;)I
.end method

.method native tvmArrayCopyFromJArray([BJJ)I
.end method

.method native tvmArrayCopyFromTo(JJ)I
.end method

.method native tvmArrayCopyToJArray(J[B)I
.end method

.method native tvmArrayFree(J)I
.end method

.method native tvmArrayGetShape(JLjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation
.end method

.method native tvmFuncCall(JLorg/apache/tvm/Base$RefTVMValue;)I
.end method

.method native tvmFuncCreateFromCFunc(Lorg/apache/tvm/Function$Callback;Lorg/apache/tvm/Base$RefLong;)I
.end method

.method native tvmFuncFree(J)I
.end method

.method native tvmFuncGetGlobal(Ljava/lang/String;Lorg/apache/tvm/Base$RefLong;)I
.end method

.method native tvmFuncListGlobalNames(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method native tvmFuncPushArgBytes([B)V
.end method

.method native tvmFuncPushArgDouble(D)V
.end method

.method native tvmFuncPushArgHandle(JI)V
.end method

.method native tvmFuncPushArgLong(J)V
.end method

.method native tvmFuncPushArgString(Ljava/lang/String;)V
.end method

.method native tvmFuncRegisterGlobal(Ljava/lang/String;JI)I
.end method

.method native tvmGetLastError()Ljava/lang/String;
.end method

.method native tvmModFree(J)I
.end method

.method native tvmModGetFunction(JLjava/lang/String;ILorg/apache/tvm/Base$RefLong;)I
.end method

.method native tvmModImport(JJ)I
.end method

.method native tvmSynchronize(II)I
.end method
