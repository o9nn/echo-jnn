.class public Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;
.super Lnet/bytebuddy/dynamic/loading/ClassInjector$AbstractBase;
.source "ClassInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsingLookup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;

.field private static final PACKAGE_LOOKUP:I = 0x8


# instance fields
.field private final lookup:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1342
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1359
    invoke-direct {p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->lookup:Ljava/lang/Object;

    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;

    .line 1428
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;->isAlive()Z

    move-result v0

    return v0
.end method

.method public static of(Ljava/lang/Object;)Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;
    .locals 3

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;

    .line 1370
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1372
    sget-object v1, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v1, p0}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1374
    invoke-interface {v0, p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;->lookupModes(Ljava/lang/Object;)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 1377
    new-instance v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;

    const/4 v2, 0x2

    invoke-interface {v0, p0, v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;->dropLookupMode(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 1375
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Lookup does not imply package-access: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1373
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a method handle lookup: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1371
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The current VM does not support class definition via method handle lookups"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->lookup:Ljava/lang/Object;

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->lookup:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->lookup:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public in(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;"
        }
    .end annotation

    .line 1396
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;

    sget-object v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->lookup:Ljava/lang/Object;

    invoke-interface {v1, v2, p1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;->resolve(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public injectRaw(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1410
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->lookupType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getPackage()Lnet/bytebuddy/description/type/PackageDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/PackageDescription;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1411
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1412
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1413
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const-string v3, ""

    goto :goto_1

    .line 1414
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1417
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;

    iget-object v5, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->lookup:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-interface {v4, v5, v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;->defineClass(Ljava/lang/Object;[B)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1415
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " must be defined in the same package as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->lookup:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object v1
.end method

.method public isAlive()Z
    .locals 1

    .line 1403
    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public lookupType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->lookup:Ljava/lang/Object;

    .line 1386
    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;->lookupType(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
