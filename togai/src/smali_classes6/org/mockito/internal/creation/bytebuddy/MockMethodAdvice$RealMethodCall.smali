.class Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$RealMethodCall;
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
    name = "RealMethodCall"
.end annotation


# instance fields
.field private final arguments:[Ljava/lang/Object;

.field private final instanceRef:Lorg/mockito/internal/invocation/mockref/MockWeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/invocation/mockref/MockWeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final origin:Ljava/lang/reflect/Method;

.field private final selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;


# direct methods
.method private constructor <init>(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$RealMethodCall;->selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$RealMethodCall;->origin:Ljava/lang/reflect/Method;

    .line 149
    new-instance p1, Lorg/mockito/internal/invocation/mockref/MockWeakReference;

    invoke-direct {p1, p3}, Lorg/mockito/internal/invocation/mockref/MockWeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$RealMethodCall;->instanceRef:Lorg/mockito/internal/invocation/mockref/MockWeakReference;

    iput-object p4, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$RealMethodCall;->arguments:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$RealMethodCall;-><init>(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$RealMethodCall;->origin:Ljava/lang/reflect/Method;

    .line 160
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$RealMethodCall;->origin:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$RealMethodCall;->origin:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$RealMethodCall;->selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$RealMethodCall;->instanceRef:Lorg/mockito/internal/invocation/mockref/MockWeakReference;

    .line 163
    invoke-virtual {v1}, Lorg/mockito/internal/invocation/mockref/MockWeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$RealMethodCall;->origin:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$RealMethodCall;->instanceRef:Lorg/mockito/internal/invocation/mockref/MockWeakReference;

    .line 164
    invoke-virtual {v1}, Lorg/mockito/internal/invocation/mockref/MockWeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$RealMethodCall;->arguments:[Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->access$400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isInvokable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
