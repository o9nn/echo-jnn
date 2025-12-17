.class public Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;
.super Ljava/lang/Object;
.source "ClassFileLocator.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/ClassFileLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForClassLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$WeaklyReferenced;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final BOOT_LOADER_PROXY:Ljava/lang/ClassLoader;


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 289
    sget-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$BootLoaderProxyCreationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    sput-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->BOOT_LOADER_PROXY:Ljava/lang/ClassLoader;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method protected static locate(Ljava/lang/ClassLoader;Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 441
    :try_start_0
    new-instance p1, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;

    sget-object v0, Lnet/bytebuddy/utility/StreamDrainer;->DEFAULT:Lnet/bytebuddy/utility/StreamDrainer;

    invoke-virtual {v0, p0}, Lnet/bytebuddy/utility/StreamDrainer;->drain(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 444
    throw p1

    .line 446
    :cond_0
    new-instance p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;

    invoke-direct {p0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 1

    .line 340
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;

    if-nez p0, :cond_0

    sget-object p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->BOOT_LOADER_PROXY:Ljava/lang/ClassLoader;

    :cond_0
    invoke-direct {v0, p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static ofBootLoader()Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 2

    .line 330
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;

    sget-object v1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->BOOT_LOADER_PROXY:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static ofPlatformLoader()Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 1

    .line 321
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    return-object v0
.end method

.method public static ofSystemLoader()Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 2

    .line 311
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static read(Ljava/util/Collection;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;[B>;"
        }
    .end annotation

    .line 382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 383
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 384
    invoke-static {v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->read(Ljava/lang/Class;)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static varargs read([Ljava/lang/Class;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;[B>;"
        }
    .end annotation

    .line 371
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->read(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/lang/Class;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[B"
        }
    .end annotation

    .line 354
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 356
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 357
    :cond_0
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-static {v0, v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->locate(Ljava/lang/ClassLoader;Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object v0

    .line 357
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;->resolve()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 359
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot read class file for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readToNames(Ljava/util/Collection;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 409
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 410
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->read(Ljava/lang/Class;)[B

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static varargs readToNames([Ljava/lang/Class;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 397
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->readToNames(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->classLoader:Ljava/lang/ClassLoader;

    check-cast p1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->classLoader:Ljava/lang/ClassLoader;

    .line 419
    invoke-static {v0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->locate(Ljava/lang/ClassLoader;Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object p1

    return-object p1
.end method
