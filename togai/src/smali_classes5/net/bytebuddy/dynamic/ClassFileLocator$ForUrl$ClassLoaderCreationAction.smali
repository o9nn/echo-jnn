.class public Lnet/bytebuddy/dynamic/ClassFileLocator$ForUrl$ClassLoaderCreationAction;
.super Ljava/lang/Object;
.source "ClassFileLocator.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator$ForUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ClassLoaderCreationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final url:[Ljava/net/URL;


# direct methods
.method protected constructor <init>([Ljava/net/URL;)V
    .locals 0

    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForUrl$ClassLoaderCreationAction;->url:[Ljava/net/URL;

    return-void
.end method


# virtual methods
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForUrl$ClassLoaderCreationAction;->url:[Ljava/net/URL;

    check-cast p1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForUrl$ClassLoaderCreationAction;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForUrl$ClassLoaderCreationAction;->url:[Ljava/net/URL;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForUrl$ClassLoaderCreationAction;->url:[Ljava/net/URL;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public run()Ljava/lang/ClassLoader;
    .locals 3

    .line 1154
    new-instance v0, Ljava/net/URLClassLoader;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForUrl$ClassLoaderCreationAction;->url:[Ljava/net/URL;

    sget-object v2, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->BOOTSTRAP_LOADER:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1, v2}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 1133
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForUrl$ClassLoaderCreationAction;->run()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
