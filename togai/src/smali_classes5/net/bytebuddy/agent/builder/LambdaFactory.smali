.class public Lnet/bytebuddy/agent/builder/LambdaFactory;
.super Ljava/lang/Object;
.source "LambdaFactory.java"


# annotations
.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field public static final CLASS_FILE_TRANSFORMERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/instrument/ClassFileTransformer;",
            "Lnet/bytebuddy/agent/builder/LambdaFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_NAME:Ljava/lang/String; = "CLASS_FILE_TRANSFORMERS"


# instance fields
.field private final dispatcher:Ljava/lang/reflect/Method;

.field private final target:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/bytebuddy/agent/builder/LambdaFactory;->CLASS_FILE_TRANSFORMERS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/LambdaFactory;->target:Ljava/lang/Object;

    iput-object p2, p0, Lnet/bytebuddy/agent/builder/LambdaFactory;->dispatcher:Ljava/lang/reflect/Method;

    return-void
.end method

.method private invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLjava/util/List;Ljava/util/List;Ljava/util/Collection;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/Collection<",
            "Ljava/lang/instrument/ClassFileTransformer;",
            ">;)[B"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/LambdaFactory;->dispatcher:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/LambdaFactory;->target:Ljava/lang/Object;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    const/4 p1, 0x4

    aput-object p5, v2, p1

    const/4 p1, 0x5

    aput-object p6, v2, p1

    .line 185
    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v2, p2

    const/4 p1, 0x7

    aput-object p8, v2, p1

    const/16 p1, 0x8

    aput-object p9, v2, p1

    const/16 p1, 0x9

    aput-object p10, v2, p1

    .line 178
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 192
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Cannot create class for lambda expression"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 190
    throw p1
.end method

.method public static make(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLjava/util/List;Ljava/util/List;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/List<",
            "*>;)[B"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/agent/builder/LambdaFactory;->CLASS_FILE_TRANSFORMERS:Ljava/util/Map;

    .line 219
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lnet/bytebuddy/agent/builder/LambdaFactory;

    .line 228
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 219
    invoke-direct/range {v2 .. v12}, Lnet/bytebuddy/agent/builder/LambdaFactory;->invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLjava/util/List;Ljava/util/List;Ljava/util/Collection;)[B

    move-result-object v0

    return-object v0
.end method

.method public static register(Ljava/lang/instrument/ClassFileTransformer;Ljava/lang/Object;)Z
    .locals 18

    move-object/from16 v1, p0

    :try_start_0
    const-class v0, Lnet/bytebuddy/agent/builder/LambdaFactory;

    .line 92
    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 93
    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->ofSystemClassLoader()Lnet/bytebuddy/dynamic/loading/ClassInjector;

    move-result-object v2

    const-class v3, Lnet/bytebuddy/agent/builder/LambdaFactory;

    .line 94
    invoke-static {v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->read(Ljava/lang/Class;)[B

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/dynamic/loading/ClassInjector;->inject(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 95
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    const-string v0, "CLASS_FILE_TRANSFORMERS"

    .line 98
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    .line 100
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/16 v11, 0xa

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    .line 102
    :try_start_1
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-array v15, v14, [Ljava/lang/Class;

    .line 104
    const-class v16, Ljava/lang/Object;

    aput-object v16, v15, v13

    const-class v16, Ljava/lang/reflect/Method;

    aput-object v16, v15, v12

    .line 105
    invoke-virtual {v2, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v15, v14, [Ljava/lang/Object;

    aput-object p1, v15, v13

    .line 106
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "make"

    new-array v11, v11, [Ljava/lang/Class;

    const-class v17, Ljava/lang/Object;

    aput-object v17, v11, v13

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const-class v13, Ljava/lang/Object;

    aput-object v13, v11, v14

    const-class v13, Ljava/lang/Object;

    aput-object v13, v11, v10

    const-class v10, Ljava/lang/Object;

    aput-object v10, v11, v9

    const-class v9, Ljava/lang/Object;

    aput-object v9, v11, v8

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v11, v7

    const-class v7, Ljava/util/List;

    aput-object v7, v11, v6

    const-class v6, Ljava/util/List;

    const/16 v7, 0x8

    aput-object v6, v11, v7

    const-class v6, Ljava/util/Collection;

    const/16 v7, 0x9

    aput-object v6, v11, v7

    invoke-virtual {v4, v5, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    aput-object v4, v15, v12

    invoke-virtual {v2, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 104
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v4, v0

    new-array v0, v14, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v0, v13

    const-class v5, Ljava/lang/reflect/Method;

    aput-object v5, v0, v12

    .line 105
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v14, [Ljava/lang/Object;

    aput-object p1, v2, v13

    .line 106
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v15, "make"

    new-array v11, v11, [Ljava/lang/Class;

    const-class v17, Ljava/lang/Object;

    aput-object v17, v11, v13

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const-class v13, Ljava/lang/Object;

    aput-object v13, v11, v14

    const-class v13, Ljava/lang/Object;

    aput-object v13, v11, v10

    const-class v10, Ljava/lang/Object;

    aput-object v10, v11, v9

    const-class v9, Ljava/lang/Object;

    aput-object v9, v11, v8

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v11, v7

    const-class v7, Ljava/util/List;

    aput-object v7, v11, v6

    const-class v6, Ljava/util/List;

    const/16 v7, 0x8

    aput-object v6, v11, v7

    const-class v6, Ljava/util/Collection;

    const/16 v7, 0x9

    aput-object v6, v11, v7

    invoke-virtual {v5, v15, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v12

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    throw v4

    .line 118
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 122
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not register class file transformer"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 120
    throw v0
.end method

.method public static release(Ljava/lang/instrument/ClassFileTransformer;)Z
    .locals 2

    .line 137
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lnet/bytebuddy/agent/builder/LambdaFactory;

    .line 138
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "CLASS_FILE_TRANSFORMERS"

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 141
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :try_start_1
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 143
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not release class file transformer"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 145
    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/LambdaFactory;->target:Ljava/lang/Object;

    check-cast p1, Lnet/bytebuddy/agent/builder/LambdaFactory;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/LambdaFactory;->target:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/LambdaFactory;->dispatcher:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/LambdaFactory;->dispatcher:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/LambdaFactory;->target:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/LambdaFactory;->dispatcher:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
