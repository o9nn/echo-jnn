.class Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;
.super Ljava/lang/Object;
.source "DefaultMockitoPlugins.java"

# interfaces
.implements Lorg/mockito/plugins/MockitoPlugins;


# static fields
.field private static final DEFAULT_PLUGINS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final INLINE_ALIAS:Ljava/lang/String; = "mock-maker-inline"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;->DEFAULT_PLUGINS:Ljava/util/Map;

    .line 27
    const-class v1, Lorg/mockito/plugins/PluginSwitch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/mockito/internal/configuration/plugins/DefaultPluginSwitch;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-class v1, Lorg/mockito/plugins/MockMaker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.mockito.internal.creation.bytebuddy.ByteBuddyMockMaker"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-class v1, Lorg/mockito/plugins/StackTraceCleanerProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.mockito.internal.exceptions.stacktrace.DefaultStackTraceCleanerProvider"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-class v1, Lorg/mockito/plugins/InstantiatorProvider2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.mockito.internal.creation.instance.DefaultInstantiatorProvider"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-class v1, Lorg/mockito/plugins/AnnotationEngine;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.mockito.internal.configuration.InjectingAnnotationEngine"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mock-maker-inline"

    const-string v2, "org.mockito.internal.creation.bytebuddy.InlineByteBuddyMockMaker"

    .line 32
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-class v1, Lorg/mockito/plugins/MockitoLogger;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.mockito.internal.util.ConsoleMockitoLogger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private create(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 68
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Internal problem occurred, please report it. Mockito is unable to load the default implementation of class that is a part of Mockito distribution. Failed to load "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 58
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No default implementation for requested Mockito plugin type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\nIs this a valid Mockito plugin type? If yes, please report this problem to Mockito team.\nOtherwise, please check if you are passing valid plugin type.\nExamples of valid plugin types: MockMaker, StackTraceCleanerProvider."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public getDefaultPlugin(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 38
    const-class v0, Lorg/mockito/plugins/InstantiatorProvider;

    if-ne p1, v0, :cond_0

    sget-object v0, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;->DEFAULT_PLUGINS:Ljava/util/Map;

    .line 41
    const-class v1, Lorg/mockito/plugins/InstantiatorProvider2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    new-instance v1, Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter;

    const-class v2, Lorg/mockito/plugins/InstantiatorProvider2;

    invoke-direct {p0, v2, v0}, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;->create(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/plugins/InstantiatorProvider2;

    invoke-direct {v1, v0}, Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter;-><init>(Lorg/mockito/plugins/InstantiatorProvider2;)V

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;->DEFAULT_PLUGINS:Ljava/util/Map;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;->create(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDefaultPluginClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;->DEFAULT_PLUGINS:Ljava/util/Map;

    .line 50
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getInlineMockMaker()Lorg/mockito/plugins/MockMaker;
    .locals 3

    .line 78
    const-class v0, Lorg/mockito/plugins/MockMaker;

    sget-object v1, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;->DEFAULT_PLUGINS:Ljava/util/Map;

    const-string v2, "mock-maker-inline"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;->create(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/plugins/MockMaker;

    return-object v0
.end method
