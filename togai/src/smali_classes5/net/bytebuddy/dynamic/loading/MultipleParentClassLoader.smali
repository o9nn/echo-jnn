.class public Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;
.super Lnet/bytebuddy/dynamic/loading/InjectionClassLoader;
.source "MultipleParentClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;,
        Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$CompoundEnumeration;
    }
.end annotation


# instance fields
.field private final parents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;-><init>(Ljava/lang/ClassLoader;Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;Z)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p3}, Lnet/bytebuddy/dynamic/loading/InjectionClassLoader;-><init>(Ljava/lang/ClassLoader;Z)V

    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;->parents:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;)V"
        }
    .end annotation

    .line 63
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->BOOTSTRAP_LOADER:Ljava/lang/ClassLoader;

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;-><init>(Ljava/lang/ClassLoader;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected doDefineClasses(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5, v1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;->parents:Ljava/util/List;

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    .line 115
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 120
    :cond_1
    invoke-super {p0, p1}, Lnet/bytebuddy/dynamic/loading/InjectionClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3
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

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;->parents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;->parents:Ljava/util/List;

    .line 128
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    .line 129
    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/dynamic/loading/InjectionClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance p1, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$CompoundEnumeration;

    invoke-direct {p1, v0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$CompoundEnumeration;-><init>(Ljava/util/List;)V

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

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;->parents:Ljava/util/List;

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    .line 98
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p0, v1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;->resolveClass(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    .line 107
    :cond_1
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/dynamic/loading/InjectionClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
