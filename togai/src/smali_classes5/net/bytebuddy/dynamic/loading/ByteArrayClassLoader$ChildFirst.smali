.class public Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;
.super Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;
.source "ByteArrayClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildFirst"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst$PrependingEnumeration;
    }
.end annotation


# static fields
.field private static final CLASS_FILE_SUFFIX:Ljava/lang/String; = ".class"


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 992
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            ")V"
        }
    .end annotation

    .line 1043
    invoke-direct/range {p0 .. p5}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Ljava/lang/instrument/ClassFileTransformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            "Ljava/lang/instrument/ClassFileTransformer;",
            ")V"
        }
    .end annotation

    .line 1081
    invoke-direct/range {p0 .. p6}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Ljava/lang/instrument/ClassFileTransformer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/util/Map;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            ")V"
        }
    .end annotation

    .line 1014
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;Ljava/util/Map;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;ZLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 1003
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;ZLjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            ")V"
        }
    .end annotation

    .line 1062
    invoke-direct/range {p0 .. p6}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Ljava/lang/instrument/ClassFileTransformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            "Ljava/lang/instrument/ClassFileTransformer;",
            ")V"
        }
    .end annotation

    .line 1102
    invoke-direct/range {p0 .. p7}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Ljava/lang/instrument/ClassFileTransformer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            ")V"
        }
    .end annotation

    .line 1026
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;)V

    return-void
.end method

.method private isShadowed(Ljava/lang/String;)Z
    .locals 3

    .line 1222
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->isManifest()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1226
    :cond_0
    monitor-enter p0

    const/16 v0, 0x2f

    const/16 v2, 0x2e

    .line 1227
    :try_start_0
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x6

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1228
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1229
    monitor-exit p0

    return v2

    .line 1231
    :cond_1
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1232
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    if-ne p1, p0, :cond_2

    move v1, v2

    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 1233
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return v1
.end method

.method public static load(Ljava/lang/ClassLoader;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;)",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1113
    sget-object v2, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->NO_PROTECTION_DOMAIN:Ljava/security/ProtectionDomain;

    sget-object v3, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->LATENT:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    sget-object v4, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;->INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->load(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;ZZ)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;ZZ)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            "ZZ)",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1142
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1143
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1144
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1146
    :cond_0
    new-instance v8, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;

    sget-object v7, Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;->INSTANCE:Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;

    move-object v0, v8

    move-object v1, p0

    move v2, p6

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;-><init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Ljava/lang/instrument/ClassFileTransformer;)V

    .line 1153
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1154
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/type/TypeDescription;

    .line 1156
    :try_start_0
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p3, p4, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p3

    if-eqz p5, :cond_2

    .line 1157
    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    if-ne p4, v8, :cond_1

    goto :goto_2

    .line 1158
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Class already loaded: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1160
    :cond_2
    :goto_2
    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1162
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Cannot load class "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    return-object p0
.end method


# virtual methods
.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    .line 1196
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->url(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1200
    invoke-direct {p0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->isShadowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1202
    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1209
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->url(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1211
    invoke-super {p0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst$PrependingEnumeration;

    .line 1212
    invoke-super {p0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst$PrependingEnumeration;-><init>(Ljava/net/URL;Ljava/util/Enumeration;)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1172
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->SYNCHRONIZATION_STRATEGY:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$Initializable;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$Initializable;->initialize()Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy;->getClassLoadingLock(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1173
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1175
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1178
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 1180
    invoke-virtual {p0, v1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;->resolveClass(Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1182
    :cond_1
    :try_start_2
    monitor-exit v0

    return-object v1

    .line 1187
    :catch_0
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1189
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
