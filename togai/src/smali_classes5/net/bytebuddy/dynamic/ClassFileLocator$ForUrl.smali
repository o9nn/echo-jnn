.class public Lnet/bytebuddy/dynamic/ClassFileLocator$ForUrl;
.super Ljava/lang/Object;
.source "ClassFileLocator.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/ClassFileLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForUrl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/ClassFileLocator$ForUrl$ClassLoaderCreationAction;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/URL;

    .line 1111
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/net/URL;

    invoke-direct {p0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForUrl;-><init>([Ljava/net/URL;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/net/URL;)V
    .locals 1

    .line 1101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1102
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForUrl$ClassLoaderCreationAction;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForUrl$ClassLoaderCreationAction;-><init>([Ljava/net/URL;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ClassLoader;

    iput-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForUrl;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForUrl;->classLoader:Ljava/lang/ClassLoader;

    .line 1125
    instance-of v1, v0, Ljava/io/Closeable;

    if-eqz v1, :cond_0

    .line 1126
    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForUrl;->classLoader:Ljava/lang/ClassLoader;

    check-cast p1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForUrl;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForUrl;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForUrl;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForUrl;->classLoader:Ljava/lang/ClassLoader;

    .line 1118
    invoke-static {v0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->locate(Ljava/lang/ClassLoader;Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object p1

    return-object p1
.end method
