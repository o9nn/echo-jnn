.class public Lnet/bytebuddy/TypeCache$StorageKey;
.super Ljava/lang/ref/WeakReference;
.source "TypeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/TypeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StorageKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# instance fields
.field private final hashCode:I


# direct methods
.method protected constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;)V"
        }
    .end annotation

    .line 293
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 294
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/TypeCache$StorageKey;->hashCode:I

    return-void
.end method

.method static synthetic access$100(Lnet/bytebuddy/TypeCache$StorageKey;)I
    .locals 0

    .line 279
    iget p0, p0, Lnet/bytebuddy/TypeCache$StorageKey;->hashCode:I

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 307
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/TypeCache$LookupKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 308
    check-cast p1, Lnet/bytebuddy/TypeCache$LookupKey;

    iget v1, p0, Lnet/bytebuddy/TypeCache$StorageKey;->hashCode:I

    .line 309
    invoke-static {p1}, Lnet/bytebuddy/TypeCache$LookupKey;->access$200(Lnet/bytebuddy/TypeCache$LookupKey;)I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lnet/bytebuddy/TypeCache$StorageKey;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lnet/bytebuddy/TypeCache$LookupKey;->access$300(Lnet/bytebuddy/TypeCache$LookupKey;)Ljava/lang/ClassLoader;

    move-result-object p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 310
    :cond_2
    instance-of v1, p1, Lnet/bytebuddy/TypeCache$StorageKey;

    if-eqz v1, :cond_4

    .line 311
    check-cast p1, Lnet/bytebuddy/TypeCache$StorageKey;

    iget v1, p0, Lnet/bytebuddy/TypeCache$StorageKey;->hashCode:I

    .line 312
    iget v3, p1, Lnet/bytebuddy/TypeCache$StorageKey;->hashCode:I

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lnet/bytebuddy/TypeCache$StorageKey;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lnet/bytebuddy/TypeCache$StorageKey;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne v1, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0

    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/TypeCache$StorageKey;->hashCode:I

    return v0
.end method
