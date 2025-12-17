.class public Lorg/apache/tvm/Function;
.super Lorg/apache/tvm/TVMValue;
.source "Function.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tvm/Function$Callback;
    }
.end annotation


# instance fields
.field final handle:J

.field private isReleased:Z

.field public final isResident:Z


# direct methods
.method constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tvm/Function;-><init>(JZ)V

    return-void
.end method

.method constructor <init>(JZ)V
    .locals 1

    .line 83
    sget-object v0, Lorg/apache/tvm/ArgTypeCode;->FUNC_HANDLE:Lorg/apache/tvm/ArgTypeCode;

    invoke-direct {p0, v0}, Lorg/apache/tvm/TVMValue;-><init>(Lorg/apache/tvm/ArgTypeCode;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tvm/Function;->isReleased:Z

    iput-wide p1, p0, Lorg/apache/tvm/Function;->handle:J

    iput-boolean p3, p0, Lorg/apache/tvm/Function;->isResident:Z

    return-void
.end method

.method public static convertFunc(Lorg/apache/tvm/Function$Callback;)Lorg/apache/tvm/Function;
    .locals 2

    .line 320
    new-instance v0, Lorg/apache/tvm/Base$RefLong;

    invoke-direct {v0}, Lorg/apache/tvm/Base$RefLong;-><init>()V

    .line 321
    sget-object v1, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    invoke-virtual {v1, p0, v0}, Lorg/apache/tvm/LibInfo;->tvmFuncCreateFromCFunc(Lorg/apache/tvm/Function$Callback;Lorg/apache/tvm/Base$RefLong;)I

    move-result p0

    invoke-static {p0}, Lorg/apache/tvm/Base;->checkCall(I)V

    .line 322
    new-instance p0, Lorg/apache/tvm/Function;

    iget-wide v0, v0, Lorg/apache/tvm/Base$RefLong;->value:J

    invoke-direct {p0, v0, v1}, Lorg/apache/tvm/Function;-><init>(J)V

    return-object p0
.end method

.method public static getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;
    .locals 3

    .line 38
    invoke-static {}, Lorg/apache/tvm/Function;->listGlobalFuncNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    const/4 v0, 0x0

    .line 40
    invoke-static {v1, p0, v0}, Lorg/apache/tvm/Function;->getGlobalFunc(Ljava/lang/String;ZZ)Lorg/apache/tvm/Function;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getGlobalFunc(Ljava/lang/String;ZZ)Lorg/apache/tvm/Function;
    .locals 5

    .line 64
    new-instance v0, Lorg/apache/tvm/Base$RefLong;

    invoke-direct {v0}, Lorg/apache/tvm/Base$RefLong;-><init>()V

    .line 65
    sget-object v1, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    invoke-virtual {v1, p0, v0}, Lorg/apache/tvm/LibInfo;->tvmFuncGetGlobal(Ljava/lang/String;Lorg/apache/tvm/Base$RefLong;)I

    move-result v1

    invoke-static {v1}, Lorg/apache/tvm/Base;->checkCall(I)V

    .line 66
    iget-wide v1, v0, Lorg/apache/tvm/Base$RefLong;->value:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 67
    new-instance p0, Lorg/apache/tvm/Function;

    iget-wide v0, v0, Lorg/apache/tvm/Base$RefLong;->value:J

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/tvm/Function;-><init>(JZ)V

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot find global function "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static invokeRegisteredCbFunc(Lorg/apache/tvm/Function$Callback;[Lorg/apache/tvm/TVMValue;)Ljava/lang/Object;
    .locals 0

    if-nez p0, :cond_0

    .line 327
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "[ERROR] Failed to get registered function"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 330
    :cond_0
    invoke-interface {p0, p1}, Lorg/apache/tvm/Function$Callback;->invoke([Lorg/apache/tvm/TVMValue;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static listGlobalFuncNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    sget-object v1, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    invoke-virtual {v1, v0}, Lorg/apache/tvm/LibInfo;->tvmFuncListGlobalNames(Ljava/util/List;)I

    move-result v1

    invoke-static {v1}, Lorg/apache/tvm/Base;->checkCall(I)V

    .line 53
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static pushArgToStack(Ljava/lang/Object;)V
    .locals 4

    .line 238
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgLong(J)V

    goto/16 :goto_1

    .line 240
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 241
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgLong(J)V

    goto/16 :goto_1

    .line 242
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 243
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgDouble(D)V

    goto/16 :goto_1

    .line 244
    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 245
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgDouble(D)V

    goto/16 :goto_1

    .line 246
    :cond_3
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 247
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 248
    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_5

    .line 249
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgBytes([B)V

    goto/16 :goto_1

    .line 250
    :cond_5
    instance-of v0, p0, Lorg/apache/tvm/NDArrayBase;

    if-eqz v0, :cond_7

    .line 251
    check-cast p0, Lorg/apache/tvm/NDArrayBase;

    .line 252
    iget-boolean v0, p0, Lorg/apache/tvm/NDArrayBase;->isView:Z

    if-eqz v0, :cond_6

    sget-object v0, Lorg/apache/tvm/ArgTypeCode;->ARRAY_HANDLE:Lorg/apache/tvm/ArgTypeCode;

    goto :goto_0

    :cond_6
    sget-object v0, Lorg/apache/tvm/ArgTypeCode;->NDARRAY_CONTAINER:Lorg/apache/tvm/ArgTypeCode;

    :goto_0
    iget v0, v0, Lorg/apache/tvm/ArgTypeCode;->id:I

    .line 253
    sget-object v1, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget-wide v2, p0, Lorg/apache/tvm/NDArrayBase;->handle:J

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgHandle(JI)V

    goto/16 :goto_1

    .line 254
    :cond_7
    instance-of v0, p0, Lorg/apache/tvm/Module;

    if-eqz v0, :cond_8

    .line 255
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    check-cast p0, Lorg/apache/tvm/Module;

    iget-wide v1, p0, Lorg/apache/tvm/Module;->handle:J

    sget-object p0, Lorg/apache/tvm/ArgTypeCode;->MODULE_HANDLE:Lorg/apache/tvm/ArgTypeCode;

    iget p0, p0, Lorg/apache/tvm/ArgTypeCode;->id:I

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgHandle(JI)V

    goto :goto_1

    .line 256
    :cond_8
    instance-of v0, p0, Lorg/apache/tvm/Function;

    if-eqz v0, :cond_9

    .line 257
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    check-cast p0, Lorg/apache/tvm/Function;

    iget-wide v1, p0, Lorg/apache/tvm/Function;->handle:J

    sget-object p0, Lorg/apache/tvm/ArgTypeCode;->FUNC_HANDLE:Lorg/apache/tvm/ArgTypeCode;

    iget p0, p0, Lorg/apache/tvm/ArgTypeCode;->id:I

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgHandle(JI)V

    goto :goto_1

    .line 258
    :cond_9
    instance-of v0, p0, Lorg/apache/tvm/TVMValue;

    const-string v1, "Invalid argument: "

    if-eqz v0, :cond_a

    .line 259
    move-object v0, p0

    check-cast v0, Lorg/apache/tvm/TVMValue;

    .line 260
    sget-object v2, Lorg/apache/tvm/Function$1;->$SwitchMap$org$apache$tvm$ArgTypeCode:[I

    iget-object v3, v0, Lorg/apache/tvm/TVMValue;->typeCode:Lorg/apache/tvm/ArgTypeCode;

    invoke-virtual {v3}, Lorg/apache/tvm/ArgTypeCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :pswitch_0
    sget-object p0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    invoke-virtual {v0}, Lorg/apache/tvm/TVMValue;->asHandle()J

    move-result-wide v1

    iget-object v0, v0, Lorg/apache/tvm/TVMValue;->typeCode:Lorg/apache/tvm/ArgTypeCode;

    iget v0, v0, Lorg/apache/tvm/ArgTypeCode;->id:I

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgHandle(JI)V

    goto :goto_1

    .line 272
    :pswitch_1
    sget-object p0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    invoke-virtual {v0}, Lorg/apache/tvm/TVMValue;->asBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgBytes([B)V

    goto :goto_1

    .line 269
    :pswitch_2
    sget-object p0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    invoke-virtual {v0}, Lorg/apache/tvm/TVMValue;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgString(Ljava/lang/String;)V

    goto :goto_1

    .line 266
    :pswitch_3
    sget-object p0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    invoke-virtual {v0}, Lorg/apache/tvm/TVMValue;->asDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgDouble(D)V

    goto :goto_1

    .line 263
    :pswitch_4
    sget-object p0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    invoke-virtual {v0}, Lorg/apache/tvm/TVMValue;->asLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgLong(J)V

    :goto_1
    return-void

    .line 284
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static register(Ljava/lang/String;Lorg/apache/tvm/Function$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 311
    invoke-static {p0, p1, v0}, Lorg/apache/tvm/Function;->register(Ljava/lang/String;Lorg/apache/tvm/Function$Callback;Z)V

    return-void
.end method

.method public static register(Ljava/lang/String;Lorg/apache/tvm/Function$Callback;Z)V
    .locals 2

    .line 299
    new-instance v0, Lorg/apache/tvm/Base$RefLong;

    invoke-direct {v0}, Lorg/apache/tvm/Base$RefLong;-><init>()V

    .line 300
    sget-object v1, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    invoke-virtual {v1, p1, v0}, Lorg/apache/tvm/LibInfo;->tvmFuncCreateFromCFunc(Lorg/apache/tvm/Function$Callback;Lorg/apache/tvm/Base$RefLong;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/tvm/Base;->checkCall(I)V

    .line 302
    sget-object p1, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget-wide v0, v0, Lorg/apache/tvm/Base$RefLong;->value:J

    invoke-virtual {p1, p0, v0, v1, p2}, Lorg/apache/tvm/LibInfo;->tvmFuncRegisterGlobal(Ljava/lang/String;JI)I

    move-result p0

    invoke-static {p0}, Lorg/apache/tvm/Base;->checkCall(I)V

    return-void
.end method


# virtual methods
.method public asFunction()Lorg/apache/tvm/Function;
    .locals 0

    return-object p0
.end method

.method asHandle()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/tvm/Function;->handle:J

    return-wide v0
.end method

.method public varargs call([Ljava/lang/Object;)Lorg/apache/tvm/TVMValue;
    .locals 3

    .line 231
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 232
    invoke-static {v2}, Lorg/apache/tvm/Function;->pushArgToStack(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    move-result-object p1

    return-object p1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lorg/apache/tvm/Function;->release()V

    .line 94
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public invoke()Lorg/apache/tvm/TVMValue;
    .locals 4

    .line 129
    new-instance v0, Lorg/apache/tvm/Base$RefTVMValue;

    invoke-direct {v0}, Lorg/apache/tvm/Base$RefTVMValue;-><init>()V

    .line 130
    sget-object v1, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget-wide v2, p0, Lorg/apache/tvm/Function;->handle:J

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/tvm/LibInfo;->tvmFuncCall(JLorg/apache/tvm/Base$RefTVMValue;)I

    move-result v1

    invoke-static {v1}, Lorg/apache/tvm/Base;->checkCall(I)V

    .line 131
    iget-object v0, v0, Lorg/apache/tvm/Base$RefTVMValue;->value:Lorg/apache/tvm/TVMValue;

    return-object v0
.end method

.method public pushArg(D)Lorg/apache/tvm/Function;
    .locals 1

    .line 170
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgDouble(D)V

    return-object p0
.end method

.method public pushArg(F)Lorg/apache/tvm/Function;
    .locals 3

    .line 160
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgDouble(D)V

    return-object p0
.end method

.method public pushArg(I)Lorg/apache/tvm/Function;
    .locals 3

    .line 140
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgLong(J)V

    return-object p0
.end method

.method public pushArg(J)Lorg/apache/tvm/Function;
    .locals 1

    .line 150
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgLong(J)V

    return-object p0
.end method

.method public pushArg(Ljava/lang/String;)Lorg/apache/tvm/Function;
    .locals 1

    .line 180
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    invoke-virtual {v0, p1}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgString(Ljava/lang/String;)V

    return-object p0
.end method

.method public pushArg(Lorg/apache/tvm/Function;)Lorg/apache/tvm/Function;
    .locals 3

    .line 211
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget-wide v1, p1, Lorg/apache/tvm/Function;->handle:J

    sget-object p1, Lorg/apache/tvm/ArgTypeCode;->FUNC_HANDLE:Lorg/apache/tvm/ArgTypeCode;

    iget p1, p1, Lorg/apache/tvm/ArgTypeCode;->id:I

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgHandle(JI)V

    return-object p0
.end method

.method public pushArg(Lorg/apache/tvm/Module;)Lorg/apache/tvm/Function;
    .locals 3

    .line 201
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget-wide v1, p1, Lorg/apache/tvm/Module;->handle:J

    sget-object p1, Lorg/apache/tvm/ArgTypeCode;->MODULE_HANDLE:Lorg/apache/tvm/ArgTypeCode;

    iget p1, p1, Lorg/apache/tvm/ArgTypeCode;->id:I

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgHandle(JI)V

    return-object p0
.end method

.method public pushArg(Lorg/apache/tvm/NDArrayBase;)Lorg/apache/tvm/Function;
    .locals 4

    .line 190
    iget-boolean v0, p1, Lorg/apache/tvm/NDArrayBase;->isView:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/tvm/ArgTypeCode;->ARRAY_HANDLE:Lorg/apache/tvm/ArgTypeCode;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/tvm/ArgTypeCode;->NDARRAY_CONTAINER:Lorg/apache/tvm/ArgTypeCode;

    :goto_0
    iget v0, v0, Lorg/apache/tvm/ArgTypeCode;->id:I

    .line 191
    sget-object v1, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget-wide v2, p1, Lorg/apache/tvm/NDArrayBase;->handle:J

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgHandle(JI)V

    return-object p0
.end method

.method public pushArg([B)Lorg/apache/tvm/Function;
    .locals 1

    .line 221
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    invoke-virtual {v0, p1}, Lorg/apache/tvm/LibInfo;->tvmFuncPushArgBytes([B)V

    return-object p0
.end method

.method public release()V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/tvm/Function;->isReleased:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tvm/Function;->isResident:Z

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget-wide v1, p0, Lorg/apache/tvm/Function;->handle:J

    invoke-virtual {v0, v1, v2}, Lorg/apache/tvm/LibInfo;->tvmFuncFree(J)I

    move-result v0

    invoke-static {v0}, Lorg/apache/tvm/Base;->checkCall(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tvm/Function;->isReleased:Z

    :cond_0
    return-void
.end method
