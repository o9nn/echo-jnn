.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Minimal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2986
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;

    filled-new-array {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2981
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;

    .line 2981
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;

    .line 2981
    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/dynamic/DynamicType$Builder;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    return-object p1
.end method

.method public dispatcher()Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher;
    .locals 0

    return-object p0
.end method

.method public register(Lnet/bytebuddy/dynamic/DynamicType;Ljava/lang/ClassLoader;Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher$InjectorFactory;)V
    .locals 4

    .line 3006
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/DynamicType;->getAuxiliaryTypes()Ljava/util/Map;

    move-result-object p2

    .line 3007
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 3008
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    .line 3009
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v2

    const-class v3, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$SignatureRelevant;

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/annotation/AnnotationList;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3010
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3013
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 3014
    invoke-interface {p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher$InjectorFactory;->resolve()Lnet/bytebuddy/dynamic/loading/ClassInjector;

    move-result-object p2

    .line 3015
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/DynamicType;->getLoadedTypeInitializers()Ljava/util/Map;

    move-result-object p1

    .line 3016
    invoke-interface {p2, v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector;->inject(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 3017
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Class;

    invoke-interface {v0, p3}, Lnet/bytebuddy/implementation/LoadedTypeInitializer;->onLoad(Ljava/lang/Class;)V

    goto :goto_1

    :cond_2
    return-void
.end method
