.class public Lorg/apache/tvm/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field private static final MASK2STR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STR2MASK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final kDLAOCL:I = 0x20

.field static final kDLCPU:I = 0x1

.field static final kDLCUDA:I = 0x2

.field static final kDLCUDAHost:I = 0x3

.field static final kDLCUDAManaged:I = 0xd

.field static final kDLExtDev:I = 0xc

.field static final kDLHexagon:I = 0x10

.field static final kDLMetal:I = 0x8

.field static final kDLMicroDev:I = 0x23

.field static final kDLOneAPI:I = 0xe

.field static final kDLOpenCL:I = 0x4

.field static final kDLROCM:I = 0xa

.field static final kDLROCMHost:I = 0xb

.field static final kDLSDAccel:I = 0x21

.field static final kDLVPI:I = 0x9

.field static final kDLVulkan:I = 0x7

.field static final kDLWebGPU:I = 0xf

.field static final kOpenGL:I = 0x22


# instance fields
.field public final deviceId:I

.field public final deviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/tvm/Device;->MASK2STR:Ljava/util/Map;

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/apache/tvm/Device;->STR2MASK:Ljava/util/Map;

    const/4 v2, 0x1

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cpu"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "cuda"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x4

    .line 40
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "opencl"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x7

    .line 41
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "vulkan"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0x8

    .line 42
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "metal"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v12, 0x9

    .line 43
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "vpi"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x10

    .line 44
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "hexagon"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cl"

    .line 48
    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-interface {v1, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-interface {v1, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-interface {v1, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/tvm/Device;->deviceType:I

    iput p2, p0, Lorg/apache/tvm/Device;->deviceId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lorg/apache/tvm/Device;->STR2MASK:Ljava/util/Map;

    .line 156
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lorg/apache/tvm/Device;-><init>(II)V

    return-void
.end method

.method public static cpu()Lorg/apache/tvm/Device;
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-static {v0}, Lorg/apache/tvm/Device;->cpu(I)Lorg/apache/tvm/Device;

    move-result-object v0

    return-object v0
.end method

.method public static cpu(I)Lorg/apache/tvm/Device;
    .locals 2

    .line 62
    new-instance v0, Lorg/apache/tvm/Device;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/apache/tvm/Device;-><init>(II)V

    return-object v0
.end method

.method public static cuda()Lorg/apache/tvm/Device;
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-static {v0}, Lorg/apache/tvm/Device;->cuda(I)Lorg/apache/tvm/Device;

    move-result-object v0

    return-object v0
.end method

.method public static cuda(I)Lorg/apache/tvm/Device;
    .locals 2

    .line 75
    new-instance v0, Lorg/apache/tvm/Device;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/apache/tvm/Device;-><init>(II)V

    return-object v0
.end method

.method public static hexagon()Lorg/apache/tvm/Device;
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-static {v0}, Lorg/apache/tvm/Device;->hexagon(I)Lorg/apache/tvm/Device;

    move-result-object v0

    return-object v0
.end method

.method public static hexagon(I)Lorg/apache/tvm/Device;
    .locals 2

    .line 140
    new-instance v0, Lorg/apache/tvm/Device;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Lorg/apache/tvm/Device;-><init>(II)V

    return-object v0
.end method

.method public static metal()Lorg/apache/tvm/Device;
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-static {v0}, Lorg/apache/tvm/Device;->metal(I)Lorg/apache/tvm/Device;

    move-result-object v0

    return-object v0
.end method

.method public static metal(I)Lorg/apache/tvm/Device;
    .locals 2

    .line 114
    new-instance v0, Lorg/apache/tvm/Device;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lorg/apache/tvm/Device;-><init>(II)V

    return-object v0
.end method

.method public static opencl()Lorg/apache/tvm/Device;
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-static {v0}, Lorg/apache/tvm/Device;->opencl(I)Lorg/apache/tvm/Device;

    move-result-object v0

    return-object v0
.end method

.method public static opencl(I)Lorg/apache/tvm/Device;
    .locals 2

    .line 88
    new-instance v0, Lorg/apache/tvm/Device;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lorg/apache/tvm/Device;-><init>(II)V

    return-object v0
.end method

.method public static vpi()Lorg/apache/tvm/Device;
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-static {v0}, Lorg/apache/tvm/Device;->vpi(I)Lorg/apache/tvm/Device;

    move-result-object v0

    return-object v0
.end method

.method public static vpi(I)Lorg/apache/tvm/Device;
    .locals 2

    .line 127
    new-instance v0, Lorg/apache/tvm/Device;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lorg/apache/tvm/Device;-><init>(II)V

    return-object v0
.end method

.method public static vulkan()Lorg/apache/tvm/Device;
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-static {v0}, Lorg/apache/tvm/Device;->vulkan(I)Lorg/apache/tvm/Device;

    move-result-object v0

    return-object v0
.end method

.method public static vulkan(I)Lorg/apache/tvm/Device;
    .locals 2

    .line 101
    new-instance v0, Lorg/apache/tvm/Device;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lorg/apache/tvm/Device;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 203
    instance-of v1, p1, Lorg/apache/tvm/Device;

    if-eqz v1, :cond_0

    .line 204
    check-cast p1, Lorg/apache/tvm/Device;

    iget v1, p0, Lorg/apache/tvm/Device;->deviceId:I

    .line 205
    iget v2, p1, Lorg/apache/tvm/Device;->deviceId:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/apache/tvm/Device;->deviceType:I

    iget p1, p1, Lorg/apache/tvm/Device;->deviceType:I

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public exist()Z
    .locals 6

    const-string v0, "_GetDeviceAttr"

    .line 165
    invoke-static {v0}, Lorg/apache/tvm/APIInternal;->get(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    iget v1, p0, Lorg/apache/tvm/Device;->deviceType:I

    invoke-virtual {v0, v1}, Lorg/apache/tvm/Function;->pushArg(I)Lorg/apache/tvm/Function;

    move-result-object v0

    iget v1, p0, Lorg/apache/tvm/Device;->deviceId:I

    invoke-virtual {v0, v1}, Lorg/apache/tvm/Function;->pushArg(I)Lorg/apache/tvm/Function;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/tvm/Function;->pushArg(I)Lorg/apache/tvm/Function;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    move-result-object v0

    .line 166
    check-cast v0, Lorg/apache/tvm/TVMValueLong;

    iget-wide v2, v0, Lorg/apache/tvm/TVMValueLong;->value:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/apache/tvm/Device;->deviceType:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lorg/apache/tvm/Device;->deviceId:I

    or-int/2addr v0, v1

    return v0
.end method

.method public maxThreadsPerBlock()J
    .locals 2

    const-string v0, "_GetDeviceAttr"

    .line 175
    invoke-static {v0}, Lorg/apache/tvm/APIInternal;->get(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    iget v1, p0, Lorg/apache/tvm/Device;->deviceType:I

    invoke-virtual {v0, v1}, Lorg/apache/tvm/Function;->pushArg(I)Lorg/apache/tvm/Function;

    move-result-object v0

    iget v1, p0, Lorg/apache/tvm/Device;->deviceId:I

    invoke-virtual {v0, v1}, Lorg/apache/tvm/Function;->pushArg(I)Lorg/apache/tvm/Function;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tvm/Function;->pushArg(I)Lorg/apache/tvm/Function;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    move-result-object v0

    .line 176
    check-cast v0, Lorg/apache/tvm/TVMValueLong;

    iget-wide v0, v0, Lorg/apache/tvm/TVMValueLong;->value:J

    return-wide v0
.end method

.method public sync()V
    .locals 3

    .line 193
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget v1, p0, Lorg/apache/tvm/Device;->deviceType:I

    iget v2, p0, Lorg/apache/tvm/Device;->deviceId:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/tvm/LibInfo;->tvmSynchronize(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/tvm/Base;->checkCall(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/apache/tvm/Device;->deviceType:I

    const/16 v1, 0x80

    if-lt v0, v1, :cond_0

    .line 213
    div-int/lit16 v2, v0, 0x80

    add-int/lit8 v2, v2, -0x1

    .line 214
    rem-int/2addr v0, v1

    .line 215
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lorg/apache/tvm/Device;->MASK2STR:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v2, p0, Lorg/apache/tvm/Device;->deviceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "remote[%d]:%s(%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v1, Lorg/apache/tvm/Device;->MASK2STR:Ljava/util/Map;

    .line 217
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/apache/tvm/Device;->deviceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s(%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public warpSize()J
    .locals 2

    const-string v0, "_GetDeviceAttr"

    .line 185
    invoke-static {v0}, Lorg/apache/tvm/APIInternal;->get(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    iget v1, p0, Lorg/apache/tvm/Device;->deviceType:I

    invoke-virtual {v0, v1}, Lorg/apache/tvm/Function;->pushArg(I)Lorg/apache/tvm/Function;

    move-result-object v0

    iget v1, p0, Lorg/apache/tvm/Device;->deviceId:I

    invoke-virtual {v0, v1}, Lorg/apache/tvm/Function;->pushArg(I)Lorg/apache/tvm/Function;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/tvm/Function;->pushArg(I)Lorg/apache/tvm/Function;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    move-result-object v0

    .line 186
    check-cast v0, Lorg/apache/tvm/TVMValueLong;

    iget-wide v0, v0, Lorg/apache/tvm/TVMValueLong;->value:J

    return-wide v0
.end method
