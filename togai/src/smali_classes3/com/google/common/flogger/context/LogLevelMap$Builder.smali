.class public final Lcom/google/common/flogger/context/LogLevelMap$Builder;
.super Ljava/lang/Object;
.source "LogLevelMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/LogLevelMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private defaultLevel:Ljava/util/logging/Level;

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/logging/Level;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/common/flogger/context/LogLevelMap$Builder;->map:Ljava/util/Map;

    .line 44
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    iput-object v0, p0, Lcom/google/common/flogger/context/LogLevelMap$Builder;->defaultLevel:Ljava/util/logging/Level;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/context/LogLevelMap$1;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/common/flogger/context/LogLevelMap$Builder;-><init>()V

    return-void
.end method

.method private put(Ljava/lang/String;Ljava/util/logging/Level;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/flogger/context/LogLevelMap$Builder;->map:Ljava/util/Map;

    .line 49
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "duplicate entry for class/package: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public varargs add(Ljava/util/logging/Level;[Ljava/lang/Class;)Lcom/google/common/flogger/context/LogLevelMap$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/flogger/context/LogLevelMap$Builder;"
        }
    .end annotation

    .line 56
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 57
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/google/common/flogger/context/LogLevelMap$Builder;->put(Ljava/lang/String;Ljava/util/logging/Level;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs add(Ljava/util/logging/Level;[Ljava/lang/Package;)Lcom/google/common/flogger/context/LogLevelMap$Builder;
    .locals 3

    .line 64
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 65
    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/google/common/flogger/context/LogLevelMap$Builder;->put(Ljava/lang/String;Ljava/util/logging/Level;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public build()Lcom/google/common/flogger/context/LogLevelMap;
    .locals 2

    iget-object v0, p0, Lcom/google/common/flogger/context/LogLevelMap$Builder;->map:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/flogger/context/LogLevelMap$Builder;->defaultLevel:Ljava/util/logging/Level;

    .line 78
    invoke-static {v0, v1}, Lcom/google/common/flogger/context/LogLevelMap;->create(Ljava/util/Map;Ljava/util/logging/Level;)Lcom/google/common/flogger/context/LogLevelMap;

    move-result-object v0

    return-object v0
.end method

.method public setDefault(Ljava/util/logging/Level;)Lcom/google/common/flogger/context/LogLevelMap$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/common/flogger/context/LogLevelMap$Builder;->defaultLevel:Ljava/util/logging/Level;

    const-string v1, "default log level must not be null"

    .line 72
    invoke-static {v0, v1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/flogger/context/LogLevelMap$Builder;->defaultLevel:Ljava/util/logging/Level;

    return-object p0
.end method
