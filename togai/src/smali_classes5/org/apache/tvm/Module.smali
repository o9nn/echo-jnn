.class public Lorg/apache/tvm/Module;
.super Lorg/apache/tvm/TVMValue;
.source "Module.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static apiFuncs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tvm/Function;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private entry:Lorg/apache/tvm/Function;

.field private final entryName:Ljava/lang/String;

.field public final handle:J

.field private isReleased:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lorg/apache/tvm/Module$1;

    invoke-direct {v0}, Lorg/apache/tvm/Module$1;-><init>()V

    sput-object v0, Lorg/apache/tvm/Module;->apiFuncs:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(J)V
    .locals 1

    .line 48
    sget-object v0, Lorg/apache/tvm/ArgTypeCode;->MODULE_HANDLE:Lorg/apache/tvm/ArgTypeCode;

    invoke-direct {p0, v0}, Lorg/apache/tvm/TVMValue;-><init>(Lorg/apache/tvm/ArgTypeCode;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tvm/Module;->isReleased:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tvm/Module;->entry:Lorg/apache/tvm/Function;

    const-string v0, "__tvm_main__"

    iput-object v0, p0, Lorg/apache/tvm/Module;->entryName:Ljava/lang/String;

    iput-wide p1, p0, Lorg/apache/tvm/Module;->handle:J

    return-void
.end method

.method public static enabled(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "RuntimeEnabled"

    .line 157
    invoke-static {v0}, Lorg/apache/tvm/Module;->getApi(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/tvm/Function;->pushArg(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    move-result-object p0

    .line 158
    invoke-virtual {p0}, Lorg/apache/tvm/TVMValue;->asLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getApi(Ljava/lang/String;)Lorg/apache/tvm/Function;
    .locals 2

    sget-object v0, Lorg/apache/tvm/Module;->apiFuncs:Ljava/lang/ThreadLocal;

    .line 39
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tvm/Function;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "runtime."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tvm/Function;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    sget-object v1, Lorg/apache/tvm/Module;->apiFuncs:Ljava/lang/ThreadLocal;

    .line 42
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static load(Ljava/lang/String;)Lorg/apache/tvm/Module;
    .locals 1

    const-string v0, ""

    .line 146
    invoke-static {p0, v0}, Lorg/apache/tvm/Module;->load(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tvm/Module;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tvm/Module;
    .locals 1

    const-string v0, "ModuleLoadFromFile"

    .line 140
    invoke-static {v0}, Lorg/apache/tvm/Module;->getApi(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/tvm/Function;->pushArg(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/tvm/Function;->pushArg(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    move-result-object p0

    .line 142
    invoke-virtual {p0}, Lorg/apache/tvm/TVMValue;->asModule()Lorg/apache/tvm/Module;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method asHandle()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/tvm/Module;->handle:J

    return-wide v0
.end method

.method public asModule()Lorg/apache/tvm/Module;
    .locals 0

    return-object p0
.end method

.method public entryFunc()Lorg/apache/tvm/Function;
    .locals 1

    iget-object v0, p0, Lorg/apache/tvm/Module;->entry:Lorg/apache/tvm/Function;

    if-nez v0, :cond_0

    const-string v0, "__tvm_main__"

    .line 91
    invoke-virtual {p0, v0}, Lorg/apache/tvm/Module;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tvm/Module;->entry:Lorg/apache/tvm/Function;

    :cond_0
    iget-object v0, p0, Lorg/apache/tvm/Module;->entry:Lorg/apache/tvm/Function;

    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lorg/apache/tvm/Module;->release()V

    .line 57
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, p1, v0}, Lorg/apache/tvm/Module;->getFunction(Ljava/lang/String;Z)Lorg/apache/tvm/Function;

    move-result-object p1

    return-object p1
.end method

.method public getFunction(Ljava/lang/String;Z)Lorg/apache/tvm/Function;
    .locals 7

    .line 103
    new-instance v6, Lorg/apache/tvm/Base$RefLong;

    invoke-direct {v6}, Lorg/apache/tvm/Base$RefLong;-><init>()V

    .line 104
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget-wide v1, p0, Lorg/apache/tvm/Module;->handle:J

    move-object v3, p1

    move v4, p2

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/tvm/LibInfo;->tvmModGetFunction(JLjava/lang/String;ILorg/apache/tvm/Base$RefLong;)I

    move-result p2

    invoke-static {p2}, Lorg/apache/tvm/Base;->checkCall(I)V

    .line 106
    iget-wide v0, v6, Lorg/apache/tvm/Base$RefLong;->value:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    .line 109
    new-instance p1, Lorg/apache/tvm/Function;

    iget-wide v0, v6, Lorg/apache/tvm/Base$RefLong;->value:J

    const/4 p2, 0x0

    invoke-direct {p1, v0, v1, p2}, Lorg/apache/tvm/Function;-><init>(JZ)V

    return-object p1

    .line 107
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Module has no function "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public importModule(Lorg/apache/tvm/Module;)V
    .locals 5

    .line 121
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget-wide v1, p0, Lorg/apache/tvm/Module;->handle:J

    iget-wide v3, p1, Lorg/apache/tvm/Module;->handle:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/tvm/LibInfo;->tvmModImport(JJ)I

    move-result p1

    invoke-static {p1}, Lorg/apache/tvm/Base;->checkCall(I)V

    return-void
.end method

.method public release()V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/tvm/Module;->isReleased:Z

    if-nez v0, :cond_0

    .line 80
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget-wide v1, p0, Lorg/apache/tvm/Module;->handle:J

    invoke-virtual {v0, v1, v2}, Lorg/apache/tvm/LibInfo;->tvmModFree(J)I

    move-result v0

    invoke-static {v0}, Lorg/apache/tvm/Base;->checkCall(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tvm/Module;->isReleased:Z

    :cond_0
    return-void
.end method

.method public typeKey()Ljava/lang/String;
    .locals 1

    const-string v0, "ModuleGetTypeKey"

    .line 129
    invoke-static {v0}, Lorg/apache/tvm/Module;->getApi(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/tvm/Function;->pushArg(Lorg/apache/tvm/Module;)Lorg/apache/tvm/Function;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tvm/TVMValue;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
