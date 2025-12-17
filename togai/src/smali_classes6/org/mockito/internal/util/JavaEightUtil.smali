.class public final Lorg/mockito/internal/util/JavaEightUtil;
.super Ljava/lang/Object;
.source "JavaEightUtil.java"


# static fields
.field private static emptyOptional:Ljava/lang/Object;

.field private static emptyOptionalDouble:Ljava/lang/Object;

.field private static emptyOptionalInt:Ljava/lang/Object;

.field private static emptyOptionalLong:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emptyDoubleStream()Ljava/lang/Object;
    .locals 2

    const-string v0, "java.util.stream.DoubleStream"

    const-string v1, "empty"

    .line 101
    invoke-static {v0, v1}, Lorg/mockito/internal/util/JavaEightUtil;->invokeNullaryFactoryMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static emptyIntStream()Ljava/lang/Object;
    .locals 2

    const-string v0, "java.util.stream.IntStream"

    const-string v1, "empty"

    .line 111
    invoke-static {v0, v1}, Lorg/mockito/internal/util/JavaEightUtil;->invokeNullaryFactoryMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static emptyLongStream()Ljava/lang/Object;
    .locals 2

    const-string v0, "java.util.stream.LongStream"

    const-string v1, "empty"

    .line 121
    invoke-static {v0, v1}, Lorg/mockito/internal/util/JavaEightUtil;->invokeNullaryFactoryMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static emptyOptional()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptional:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "java.util.Optional"

    const-string v1, "empty"

    .line 38
    invoke-static {v0, v1}, Lorg/mockito/internal/util/JavaEightUtil;->invokeNullaryFactoryMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptional:Ljava/lang/Object;

    return-object v0
.end method

.method public static emptyOptionalDouble()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptionalDouble:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "java.util.OptionalDouble"

    const-string v1, "empty"

    .line 53
    invoke-static {v0, v1}, Lorg/mockito/internal/util/JavaEightUtil;->invokeNullaryFactoryMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptionalDouble:Ljava/lang/Object;

    return-object v0
.end method

.method public static emptyOptionalInt()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptionalInt:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "java.util.OptionalInt"

    const-string v1, "empty"

    .line 67
    invoke-static {v0, v1}, Lorg/mockito/internal/util/JavaEightUtil;->invokeNullaryFactoryMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptionalInt:Ljava/lang/Object;

    return-object v0
.end method

.method public static emptyOptionalLong()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptionalLong:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "java.util.OptionalLong"

    const-string v1, "empty"

    .line 81
    invoke-static {v0, v1}, Lorg/mockito/internal/util/JavaEightUtil;->invokeNullaryFactoryMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptionalLong:Ljava/lang/Object;

    return-object v0
.end method

.method public static emptyStream()Ljava/lang/Object;
    .locals 2

    const-string v0, "java.util.stream.Stream"

    const-string v1, "empty"

    .line 91
    invoke-static {v0, v1}, Lorg/mockito/internal/util/JavaEightUtil;->invokeNullaryFactoryMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static invokeNullaryFactoryMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 133
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 134
    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 136
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 140
    new-instance v1, Lorg/mockito/internal/creation/instance/InstantiationException;

    const-string v2, "Could not create %s#%s(): %s"

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 141
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/mockito/internal/creation/instance/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
