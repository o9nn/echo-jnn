.class Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithReflection;
.super Ljava/lang/Object;
.source "SubclassInjectionLoader.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WithReflection"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$1;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithReflection;-><init>()V

    return-void
.end method


# virtual methods
.method public isDisrespectingOpenness()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public resolveStrategy(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    .line 58
    sget-object p2, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->INJECTION:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-class p1, Lorg/mockito/codegen/InjectionBase;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->with(Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;

    move-result-object p1

    return-object p1
.end method
