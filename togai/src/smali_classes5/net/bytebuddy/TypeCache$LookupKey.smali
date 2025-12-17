.class public Lnet/bytebuddy/TypeCache$LookupKey;
.super Ljava/lang/Object;
.source "TypeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/TypeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LookupKey"
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final hashCode:I


# direct methods
.method protected constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/TypeCache$LookupKey;->classLoader:Ljava/lang/ClassLoader;

    .line 252
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/TypeCache$LookupKey;->hashCode:I

    return-void
.end method

.method static synthetic access$200(Lnet/bytebuddy/TypeCache$LookupKey;)I
    .locals 0

    .line 233
    iget p0, p0, Lnet/bytebuddy/TypeCache$LookupKey;->hashCode:I

    return p0
.end method

.method static synthetic access$300(Lnet/bytebuddy/TypeCache$LookupKey;)Ljava/lang/ClassLoader;
    .locals 0

    .line 233
    iget-object p0, p0, Lnet/bytebuddy/TypeCache$LookupKey;->classLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 265
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/TypeCache$LookupKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/TypeCache$LookupKey;->classLoader:Ljava/lang/ClassLoader;

    .line 266
    check-cast p1, Lnet/bytebuddy/TypeCache$LookupKey;

    iget-object p1, p1, Lnet/bytebuddy/TypeCache$LookupKey;->classLoader:Ljava/lang/ClassLoader;

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 267
    :cond_2
    instance-of v1, p1, Lnet/bytebuddy/TypeCache$StorageKey;

    if-eqz v1, :cond_4

    .line 268
    check-cast p1, Lnet/bytebuddy/TypeCache$StorageKey;

    iget v1, p0, Lnet/bytebuddy/TypeCache$LookupKey;->hashCode:I

    .line 269
    invoke-static {p1}, Lnet/bytebuddy/TypeCache$StorageKey;->access$100(Lnet/bytebuddy/TypeCache$StorageKey;)I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lnet/bytebuddy/TypeCache$LookupKey;->classLoader:Ljava/lang/ClassLoader;

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

    iget v0, p0, Lnet/bytebuddy/TypeCache$LookupKey;->hashCode:I

    return v0
.end method
