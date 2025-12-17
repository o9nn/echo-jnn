.class public Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;
.super Ljava/lang/Object;
.source "ClassFileLocator.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Explicit"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final binaryRepresentation:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;->binaryRepresentation:[B

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;->binaryRepresentation:[B

    check-cast p1, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;->binaryRepresentation:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;->binaryRepresentation:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public isResolved()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public resolve()[B
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;->binaryRepresentation:[B

    return-object v0
.end method
