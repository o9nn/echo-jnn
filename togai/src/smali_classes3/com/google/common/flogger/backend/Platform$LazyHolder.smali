.class final Lcom/google/common/flogger/backend/Platform$LazyHolder;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/backend/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/flogger/backend/Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    invoke-static {}, Lcom/google/common/flogger/backend/Platform;->access$000()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/flogger/backend/Platform$LazyHolder;->loadFirstAvailablePlatform([Ljava/lang/String;)Lcom/google/common/flogger/backend/Platform;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/backend/Platform$LazyHolder;->INSTANCE:Lcom/google/common/flogger/backend/Platform;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/common/flogger/backend/Platform;
    .locals 1

    sget-object v0, Lcom/google/common/flogger/backend/Platform$LazyHolder;->INSTANCE:Lcom/google/common/flogger/backend/Platform;

    return-object v0
.end method

.method private static loadFirstAvailablePlatform([Ljava/lang/String;)Lcom/google/common/flogger/backend/Platform;
    .locals 7

    .line 71
    :try_start_0
    invoke-static {}, Lcom/google/common/flogger/backend/PlatformProvider;->getPlatform()Lcom/google/common/flogger/backend/Platform;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    return-object v0

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 86
    :try_start_1
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/flogger/backend/Platform;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v5

    :catchall_0
    move-exception v5

    .line 90
    instance-of v6, v5, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v6, :cond_1

    .line 91
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    :cond_1
    const/16 v6, 0xa

    .line 93
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 96
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "No logging platforms found:"

    .line 97
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
