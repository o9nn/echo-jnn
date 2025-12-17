.class Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;
.super Ljava/lang/Object;
.source "MockMethodAdvice.java"

# interfaces
.implements Lorg/mockito/internal/invocation/RealMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializableRealMethodCall"
.end annotation


# instance fields
.field private final arguments:[Ljava/lang/Object;

.field private final identifier:Ljava/lang/String;

.field private final instanceRef:Lorg/mockito/internal/invocation/mockref/MockReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/invocation/mockref/MockReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final origin:Lorg/mockito/internal/invocation/SerializableMethod;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Lorg/mockito/internal/invocation/SerializableMethod;

    invoke-direct {v0, p2}, Lorg/mockito/internal/invocation/SerializableMethod;-><init>(Ljava/lang/reflect/Method;)V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;->origin:Lorg/mockito/internal/invocation/SerializableMethod;

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;->identifier:Ljava/lang/String;

    .line 182
    new-instance p1, Lorg/mockito/internal/invocation/mockref/MockWeakReference;

    invoke-direct {p1, p3}, Lorg/mockito/internal/invocation/mockref/MockWeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;->instanceRef:Lorg/mockito/internal/invocation/mockref/MockReference;

    iput-object p4, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;->arguments:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;->origin:Lorg/mockito/internal/invocation/SerializableMethod;

    .line 193
    invoke-virtual {v0}, Lorg/mockito/internal/invocation/SerializableMethod;->getJavaMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_0
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;->identifier:Ljava/lang/String;

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;->instanceRef:Lorg/mockito/internal/invocation/mockref/MockReference;

    .line 197
    invoke-interface {v2}, Lorg/mockito/internal/invocation/mockref/MockReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;->get(Ljava/lang/String;Ljava/lang/Object;)Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;

    move-result-object v1

    .line 198
    instance-of v2, v1, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;

    if-eqz v2, :cond_1

    .line 201
    check-cast v1, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;

    invoke-static {v1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->access$500(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;)Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    move-result-object v2

    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;->instanceRef:Lorg/mockito/internal/invocation/mockref/MockReference;

    invoke-interface {v3}, Lorg/mockito/internal/invocation/mockref/MockReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;->replace(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;->instanceRef:Lorg/mockito/internal/invocation/mockref/MockReference;

    .line 203
    invoke-interface {v3}, Lorg/mockito/internal/invocation/mockref/MockReference;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;->arguments:[Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->access$400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-static {v1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->access$500(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;)Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;->set(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->access$500(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;)Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;->set(Ljava/lang/Object;)V

    throw v0

    .line 199
    :cond_1
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "Unexpected dispatcher for advice-based super call"

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInvokable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
