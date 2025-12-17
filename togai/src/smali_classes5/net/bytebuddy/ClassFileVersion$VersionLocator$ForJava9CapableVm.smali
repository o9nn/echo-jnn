.class public Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;
.super Ljava/lang/Object;
.source "ClassFileVersion.java"

# interfaces
.implements Lnet/bytebuddy/ClassFileVersion$VersionLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/ClassFileVersion$VersionLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJava9CapableVm"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final STATIC_METHOD:Ljava/lang/Object;


# instance fields
.field private final current:Ljava/lang/reflect/Method;

.field private final major:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->current:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->major:Ljava/lang/reflect/Method;

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
    iget-object v2, p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->current:Ljava/lang/reflect/Method;

    check-cast p1, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;

    iget-object v3, p1, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->current:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->major:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->major:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->current:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->major:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public locate()Lnet/bytebuddy/ClassFileVersion;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->major:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->current:Ljava/lang/reflect/Method;

    sget-object v2, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->STATIC_METHOD:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 485
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lnet/bytebuddy/ClassFileVersion;->ofJavaVersion(I)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 489
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not look up VM version"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 487
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not access VM version lookup"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
