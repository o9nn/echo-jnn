.class public Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction$ByteArrayUrlStreamHandler;
.super Ljava/net/URLStreamHandler;
.source "ByteArrayClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ByteArrayUrlStreamHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction$ByteArrayUrlStreamHandler$ByteArrayUrlConnection;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final binaryRepresentation:[B


# direct methods
.method protected constructor <init>([B)V
    .locals 0

    .line 917
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction$ByteArrayUrlStreamHandler;->binaryRepresentation:[B

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction$ByteArrayUrlStreamHandler;->binaryRepresentation:[B

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction$ByteArrayUrlStreamHandler;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction$ByteArrayUrlStreamHandler;->binaryRepresentation:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction$ByteArrayUrlStreamHandler;->binaryRepresentation:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 3

    .line 925
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction$ByteArrayUrlStreamHandler$ByteArrayUrlConnection;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction$ByteArrayUrlStreamHandler;->binaryRepresentation:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction$ByteArrayUrlStreamHandler$ByteArrayUrlConnection;-><init>(Ljava/net/URL;Ljava/io/InputStream;)V

    return-object v0
.end method
