.class public abstract Lnet/bytebuddy/dynamic/loading/InjectionClassLoader;
.super Ljava/lang/ClassLoader;
.source "InjectionClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/InjectionClassLoader$Strategy;
    }
.end annotation


# instance fields
.field private final sealed:Z


# direct methods
.method protected constructor <init>(Ljava/lang/ClassLoader;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    iput-boolean p2, p0, Lnet/bytebuddy/dynamic/loading/InjectionClassLoader;->sealed:Z

    return-void
.end method


# virtual methods
.method public defineClass(Ljava/lang/String;[B)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 69
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/bytebuddy/dynamic/loading/InjectionClassLoader;->defineClasses(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method public defineClasses(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/loading/InjectionClassLoader;->sealed:Z

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/loading/InjectionClassLoader;->doDefineClasses(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot inject classes into a sealed class loader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract doDefineClasses(Ljava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public isSealed()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/loading/InjectionClassLoader;->sealed:Z

    return v0
.end method
