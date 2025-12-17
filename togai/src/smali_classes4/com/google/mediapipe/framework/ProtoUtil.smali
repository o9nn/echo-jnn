.class public final Lcom/google/mediapipe/framework/ProtoUtil;
.super Ljava/lang/Object;
.source "ProtoUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;
    }
.end annotation


# static fields
.field static typeNameRegistry:Lcom/google/mediapipe/framework/TypeNameRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lcom/google/mediapipe/framework/TypeNameRegistryConcrete;

    invoke-direct {v0}, Lcom/google/mediapipe/framework/TypeNameRegistryConcrete;-><init>()V

    sput-object v0, Lcom/google/mediapipe/framework/ProtoUtil;->typeNameRegistry:Lcom/google/mediapipe/framework/TypeNameRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtensionRegistry()Lcom/google/protobuf/ExtensionRegistryLite;
    .locals 1

    .line 36
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    return-object v0
.end method

.method public static getTypeName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
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

    sget-object v0, Lcom/google/mediapipe/framework/ProtoUtil;->typeNameRegistry:Lcom/google/mediapipe/framework/TypeNameRegistry;

    .line 31
    invoke-interface {v0, p0}, Lcom/google/mediapipe/framework/TypeNameRegistry;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static pack(Lcom/google/protobuf/MessageLite;)Lcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(TT;)",
            "Lcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;

    invoke-direct {v0}, Lcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;-><init>()V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/google/mediapipe/framework/ProtoUtil;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;->typeName:Ljava/lang/String;

    .line 43
    iget-object v1, v0, Lcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;->typeName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 49
    invoke-interface {p0}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object p0

    iput-object p0, v0, Lcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;->value:[B

    return-object v0

    .line 44
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot determine the protobuf type name for class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ". Have you called ProtoUtil.registerTypeName?"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static registerTypeName(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
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

    sget-object v0, Lcom/google/mediapipe/framework/ProtoUtil;->typeNameRegistry:Lcom/google/mediapipe/framework/TypeNameRegistry;

    .line 26
    invoke-interface {v0, p0, p1}, Lcom/google/mediapipe/framework/TypeNameRegistry;->registerTypeName(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public static unpack(Lcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serialized",
            "defaultInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(",
            "Lcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mediapipe/framework/ProtoUtil;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;->typeName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object p1

    iget-object p0, p0, Lcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;->value:[B

    .line 71
    invoke-static {}, Lcom/google/mediapipe/framework/ProtoUtil;->getExtensionRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/MessageLite;

    return-object p0

    .line 58
    :cond_0
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message type does not match the expected type. Expected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;->typeName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
