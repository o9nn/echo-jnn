.class public Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;
.super Ljava/lang/Object;
.source "NexusAccessor.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unavailable"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clean(Ljava/lang/ref/Reference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;)V"
        }
    .end annotation

    .line 340
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not initialize Nexus accessor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;->message:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;->message:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public isAlive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;ILnet/bytebuddy/implementation/LoadedTypeInitializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;I",
            "Lnet/bytebuddy/implementation/LoadedTypeInitializer;",
            ")V"
        }
    .end annotation

    .line 351
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Could not initialize Nexus accessor: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;->message:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
