.class public Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;
.super Lnet/bytebuddy/dynamic/loading/ClassInjector$AbstractBase;
.source "ClassInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsingReflection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final forbidExisting:Z

.field private final packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

.field private final protectionDomain:Ljava/security/ProtectionDomain;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 160
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->NO_PROTECTION_DOMAIN:Ljava/security/ProtectionDomain;

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;-><init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V
    .locals 2

    .line 171
    sget-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;->INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;-><init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Z)V
    .locals 0

    .line 188
    invoke-direct {p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$AbstractBase;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->protectionDomain:Ljava/security/ProtectionDomain;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iput-boolean p4, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->forbidExisting:Z

    return-void

    .line 190
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot inject classes into the bootstrap class loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static isAvailable()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;

    .line 252
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static ofSystemClassLoader()Lnet/bytebuddy/dynamic/loading/ClassInjector;
    .locals 2

    .line 261
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
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
    iget-boolean v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->forbidExisting:Z

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;

    iget-boolean v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->forbidExisting:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->protectionDomain:Ljava/security/ProtectionDomain;

    if-eqz v3, :cond_5

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Ljava/security/ProtectionDomain;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_5
    if-eqz v2, :cond_7

    :cond_6
    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->protectionDomain:Ljava/security/ProtectionDomain;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/security/ProtectionDomain;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->forbidExisting:Z

    add-int/2addr v1, v0

    return v1
.end method

.method public injectRaw(Ljava/util/Map;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;

    .line 209
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;->initialize()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;

    move-result-object v0

    .line 210
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 211
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/Map$Entry;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    .line 212
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;->getClassLoadingLock(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    :try_start_0
    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    .line 213
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;->findClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_3

    .line 215
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 217
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    .line 218
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;->define(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;

    move-result-object v1

    .line 219
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->isDefined()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    .line 220
    invoke-interface {v0, v2, v3}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;->getPackage(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    .line 224
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v4

    .line 225
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v5

    .line 226
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getSpecificationVendor()Ljava/lang/String;

    move-result-object v6

    .line 227
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getImplementationTitle()Ljava/lang/String;

    move-result-object v7

    .line 228
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getImplementationVersion()Ljava/lang/String;

    move-result-object v8

    .line 229
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getImplementationVendor()Ljava/lang/String;

    move-result-object v9

    .line 230
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getSealBase()Ljava/net/URL;

    move-result-object v10

    move-object v1, v0

    .line 222
    invoke-interface/range {v1 .. v10}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;->definePackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    goto :goto_1

    .line 231
    :cond_0
    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->isCompatibleTo(Ljava/lang/Package;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 232
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sealing violation for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    .line 236
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->protectionDomain:Ljava/security/ProtectionDomain;

    invoke-interface {v0, v1, v2, v3, v4}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;->defineClass(Ljava/lang/ClassLoader;Ljava/lang/String;[BLjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-boolean v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->forbidExisting:Z

    if-nez v2, :cond_4

    .line 240
    :goto_2
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v11, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    monitor-exit v13

    goto/16 :goto_0

    .line 238
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot inject already loaded type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 241
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    return-object v11
.end method

.method public isAlive()Z
    .locals 1

    .line 202
    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->isAvailable()Z

    move-result v0

    return v0
.end method
