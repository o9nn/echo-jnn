.class Lorg/mockito/internal/configuration/plugins/PluginRegistry;
.super Ljava/lang/Object;
.source "PluginRegistry.java"


# instance fields
.field private final annotationEngine:Lorg/mockito/plugins/AnnotationEngine;

.field private final instantiatorProvider:Lorg/mockito/plugins/InstantiatorProvider2;

.field private final mockMaker:Lorg/mockito/plugins/MockMaker;

.field private final mockitoLogger:Lorg/mockito/plugins/MockitoLogger;

.field private final pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

.field private final stackTraceCleanerProvider:Lorg/mockito/plugins/StackTraceCleanerProvider;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lorg/mockito/internal/configuration/plugins/PluginLoader;

    new-instance v1, Lorg/mockito/internal/configuration/plugins/DefaultPluginSwitch;

    invoke-direct {v1}, Lorg/mockito/internal/configuration/plugins/DefaultPluginSwitch;-><init>()V

    invoke-direct {v0, v1}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/plugins/PluginSwitch;)V

    const-class v1, Lorg/mockito/plugins/PluginSwitch;

    .line 19
    invoke-virtual {v0, v1}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/plugins/PluginSwitch;

    iput-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

    .line 21
    new-instance v1, Lorg/mockito/internal/configuration/plugins/PluginLoader;

    const-string v2, "mock-maker-inline"

    invoke-direct {v1, v0, v2}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/plugins/PluginSwitch;Ljava/lang/String;)V

    const-class v2, Lorg/mockito/plugins/MockMaker;

    .line 22
    invoke-virtual {v1, v2}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/plugins/MockMaker;

    iput-object v1, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->mockMaker:Lorg/mockito/plugins/MockMaker;

    .line 24
    new-instance v1, Lorg/mockito/internal/configuration/plugins/PluginLoader;

    invoke-direct {v1, v0}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/plugins/PluginSwitch;)V

    const-class v2, Lorg/mockito/plugins/StackTraceCleanerProvider;

    .line 25
    invoke-virtual {v1, v2}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/plugins/StackTraceCleanerProvider;

    iput-object v1, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->stackTraceCleanerProvider:Lorg/mockito/plugins/StackTraceCleanerProvider;

    .line 29
    new-instance v1, Lorg/mockito/internal/configuration/plugins/PluginLoader;

    invoke-direct {v1, v0}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/plugins/PluginSwitch;)V

    const-class v2, Lorg/mockito/plugins/AnnotationEngine;

    .line 30
    invoke-virtual {v1, v2}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/plugins/AnnotationEngine;

    iput-object v1, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->annotationEngine:Lorg/mockito/plugins/AnnotationEngine;

    .line 32
    new-instance v1, Lorg/mockito/internal/configuration/plugins/PluginLoader;

    invoke-direct {v1, v0}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/plugins/PluginSwitch;)V

    const-class v2, Lorg/mockito/plugins/MockitoLogger;

    .line 33
    invoke-virtual {v1, v2}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/plugins/MockitoLogger;

    iput-object v1, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->mockitoLogger:Lorg/mockito/plugins/MockitoLogger;

    .line 36
    new-instance v1, Lorg/mockito/internal/configuration/plugins/PluginLoader;

    invoke-direct {v1, v0}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/plugins/PluginSwitch;)V

    const-class v0, Lorg/mockito/plugins/InstantiatorProvider2;

    const-class v2, Lorg/mockito/plugins/InstantiatorProvider;

    invoke-virtual {v1, v0, v2}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    instance-of v1, v0, Lorg/mockito/plugins/InstantiatorProvider;

    if-eqz v1, :cond_0

    .line 38
    new-instance v1, Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;

    check-cast v0, Lorg/mockito/plugins/InstantiatorProvider;

    invoke-direct {v1, v0}, Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;-><init>(Lorg/mockito/plugins/InstantiatorProvider;)V

    iput-object v1, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->instantiatorProvider:Lorg/mockito/plugins/InstantiatorProvider2;

    goto :goto_0

    .line 40
    :cond_0
    check-cast v0, Lorg/mockito/plugins/InstantiatorProvider2;

    iput-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->instantiatorProvider:Lorg/mockito/plugins/InstantiatorProvider2;

    :goto_0
    return-void
.end method


# virtual methods
.method getAnnotationEngine()Lorg/mockito/plugins/AnnotationEngine;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->annotationEngine:Lorg/mockito/plugins/AnnotationEngine;

    return-object v0
.end method

.method getInstantiatorProvider()Lorg/mockito/plugins/InstantiatorProvider2;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->instantiatorProvider:Lorg/mockito/plugins/InstantiatorProvider2;

    return-object v0
.end method

.method getMockMaker()Lorg/mockito/plugins/MockMaker;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->mockMaker:Lorg/mockito/plugins/MockMaker;

    return-object v0
.end method

.method getMockitoLogger()Lorg/mockito/plugins/MockitoLogger;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->mockitoLogger:Lorg/mockito/plugins/MockitoLogger;

    return-object v0
.end method

.method getStackTraceCleanerProvider()Lorg/mockito/plugins/StackTraceCleanerProvider;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->stackTraceCleanerProvider:Lorg/mockito/plugins/StackTraceCleanerProvider;

    return-object v0
.end method
