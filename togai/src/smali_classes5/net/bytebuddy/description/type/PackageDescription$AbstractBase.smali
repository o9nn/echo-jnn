.class public abstract Lnet/bytebuddy/description/type/PackageDescription$AbstractBase;
.super Ljava/lang/Object;
.source "PackageDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/type/PackageDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/PackageDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 0

    .line 74
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getPackage()Lnet/bytebuddy/description/type/PackageDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/PackageDescription$AbstractBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    .line 84
    instance-of v0, p1, Lnet/bytebuddy/description/type/PackageDescription;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/PackageDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lnet/bytebuddy/description/type/PackageDescription;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/PackageDescription;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getActualName()Ljava/lang/String;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/PackageDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 3

    .line 60
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/PackageDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 79
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/PackageDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/PackageDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
