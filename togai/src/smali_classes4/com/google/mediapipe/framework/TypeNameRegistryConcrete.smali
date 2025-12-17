.class final Lcom/google/mediapipe/framework/TypeNameRegistryConcrete;
.super Ljava/lang/Object;
.source "TypeNameRegistryLite.java"

# interfaces
.implements Lcom/google/mediapipe/framework/TypeNameRegistry;


# instance fields
.field private final typeNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/MessageLite;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/framework/TypeNameRegistryConcrete;->typeNames:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getTypeName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "javaClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/TypeNameRegistryConcrete;->typeNames:Ljava/util/Map;

    .line 34
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public registerTypeName(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "typeName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/TypeNameRegistryConcrete;->typeNames:Ljava/util/Map;

    .line 40
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/mediapipe/framework/TypeNameRegistryConcrete;->typeNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object v1, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ALREADY_EXISTS:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 42
    invoke-virtual {v1}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ordinal()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Protobuf type name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " conflicts with: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v2, p0, Lcom/google/mediapipe/framework/TypeNameRegistryConcrete;->typeNames:Ljava/util/Map;

    .line 43
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/mediapipe/framework/TypeNameRegistryConcrete;->typeNames:Ljava/util/Map;

    .line 45
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
