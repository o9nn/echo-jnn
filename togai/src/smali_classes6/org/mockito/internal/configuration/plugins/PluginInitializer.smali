.class Lorg/mockito/internal/configuration/plugins/PluginInitializer;
.super Ljava/lang/Object;
.source "PluginInitializer.java"


# instance fields
.field private final alias:Ljava/lang/String;

.field private final pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

.field private final plugins:Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;


# direct methods
.method constructor <init>(Lorg/mockito/plugins/PluginSwitch;Ljava/lang/String;Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

    iput-object p2, p0, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->alias:Ljava/lang/String;

    iput-object p3, p0, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->plugins:Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;

    return-void
.end method


# virtual methods
.method public loadImpl(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "Failed to load "

    const-string v1, "mockito-extensions/"

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_0

    .line 33
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 37
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    :try_start_1
    new-instance v3, Lorg/mockito/internal/configuration/plugins/PluginFinder;

    iget-object v4, p0, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

    invoke-direct {v3, v4}, Lorg/mockito/internal/configuration/plugins/PluginFinder;-><init>(Lorg/mockito/plugins/PluginSwitch;)V

    invoke-static {v1}, Lorg/mockito/internal/util/collections/Iterables;->toIterable(Ljava/util/Enumeration;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/mockito/internal/configuration/plugins/PluginFinder;->findPluginClass(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->alias:Ljava/lang/String;

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, p0, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->plugins:Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;

    iget-object v4, p0, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->alias:Ljava/lang/String;

    .line 46
    invoke-virtual {v3, v4}, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;->getDefaultPluginClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception v2

    .line 54
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " implementation declared in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v1

    .line 39
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
