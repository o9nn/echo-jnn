.class Lorg/mockito/internal/configuration/plugins/PluginLoader;
.super Ljava/lang/Object;
.source "PluginLoader.java"


# instance fields
.field private final initializer:Lorg/mockito/internal/configuration/plugins/PluginInitializer;

.field private final plugins:Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;


# direct methods
.method constructor <init>(Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;Lorg/mockito/internal/configuration/plugins/PluginInitializer;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader;->plugins:Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;

    iput-object p2, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader;->initializer:Lorg/mockito/internal/configuration/plugins/PluginInitializer;

    return-void
.end method

.method constructor <init>(Lorg/mockito/plugins/PluginSwitch;)V
    .locals 4

    .line 24
    new-instance v0, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;

    invoke-direct {v0}, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;-><init>()V

    new-instance v1, Lorg/mockito/internal/configuration/plugins/PluginInitializer;

    new-instance v2, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;

    invoke-direct {v2}, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v2}, Lorg/mockito/internal/configuration/plugins/PluginInitializer;-><init>(Lorg/mockito/plugins/PluginSwitch;Ljava/lang/String;Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;)V

    invoke-direct {p0, v0, v1}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;Lorg/mockito/internal/configuration/plugins/PluginInitializer;)V

    return-void
.end method

.method constructor <init>(Lorg/mockito/plugins/PluginSwitch;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    new-instance v0, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;

    invoke-direct {v0}, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;-><init>()V

    new-instance v1, Lorg/mockito/internal/configuration/plugins/PluginInitializer;

    new-instance v2, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;

    invoke-direct {v2}, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;-><init>()V

    invoke-direct {v1, p1, p2, v2}, Lorg/mockito/internal/configuration/plugins/PluginInitializer;-><init>(Lorg/mockito/plugins/PluginSwitch;Ljava/lang/String;Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;)V

    invoke-direct {p0, v0, v1}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;Lorg/mockito/internal/configuration/plugins/PluginInitializer;)V

    return-void
.end method


# virtual methods
.method loadPlugin(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p1, v0}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method loadPlugin(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PreferredType:",
            "Ljava/lang/Object;",
            "AlternateType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TPreferredType;>;",
            "Ljava/lang/Class<",
            "TAlternateType;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader;->initializer:Lorg/mockito/internal/configuration/plugins/PluginInitializer;

    .line 57
    invoke-virtual {v0, p1}, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->loadImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader;->initializer:Lorg/mockito/internal/configuration/plugins/PluginInitializer;

    .line 61
    invoke-virtual {v0, p2}, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->loadImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader;->plugins:Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;

    .line 67
    invoke-virtual {v0, p1}, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;->getDefaultPlugin(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 69
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance v3, Lorg/mockito/internal/configuration/plugins/PluginLoader$1;

    invoke-direct {v3, p0, p1, p2, v0}, Lorg/mockito/internal/configuration/plugins/PluginLoader$1;-><init>(Lorg/mockito/internal/configuration/plugins/PluginLoader;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
