.class public Lnet/bytebuddy/utility/JavaModule;
.super Ljava/lang/Object;
.source "JavaModule.java"

# interfaces
.implements Lnet/bytebuddy/description/NamedElement$WithOptionalName;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/JavaModule$Dispatcher;
    }
.end annotation


# static fields
.field private static final DISPATCHER:Lnet/bytebuddy/utility/JavaModule$Dispatcher;

.field public static final UNSUPPORTED:Lnet/bytebuddy/utility/JavaModule;


# instance fields
.field private final module:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget-object v0, Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/JavaModule$Dispatcher;

    sput-object v0, Lnet/bytebuddy/utility/JavaModule;->DISPATCHER:Lnet/bytebuddy/utility/JavaModule$Dispatcher;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/Object;

    return-void
.end method

.method public static isSupported()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->DISPATCHER:Lnet/bytebuddy/utility/JavaModule$Dispatcher;

    .line 91
    invoke-interface {v0}, Lnet/bytebuddy/utility/JavaModule$Dispatcher;->isAlive()Z

    move-result v0

    return v0
.end method

.method public static of(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaModule;
    .locals 3

    .line 79
    sget-object v0, Lnet/bytebuddy/utility/JavaType;->MODULE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0, p0}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lnet/bytebuddy/utility/JavaModule;

    invoke-direct {v0, p0}, Lnet/bytebuddy/utility/JavaModule;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a Java module: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ofType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaModule;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->DISPATCHER:Lnet/bytebuddy/utility/JavaModule$Dispatcher;

    .line 68
    invoke-interface {v0, p0}, Lnet/bytebuddy/utility/JavaModule$Dispatcher;->moduleOf(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addReads(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/utility/JavaModule;)V
    .locals 2

    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->DISPATCHER:Lnet/bytebuddy/utility/JavaModule$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/Object;

    .line 153
    invoke-virtual {p2}, Lnet/bytebuddy/utility/JavaModule;->unwrap()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, v1, p2}, Lnet/bytebuddy/utility/JavaModule$Dispatcher;->addReads(Ljava/lang/instrument/Instrumentation;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public canRead(Lnet/bytebuddy/utility/JavaModule;)Z
    .locals 2

    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->DISPATCHER:Lnet/bytebuddy/utility/JavaModule$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/Object;

    .line 143
    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaModule;->unwrap()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lnet/bytebuddy/utility/JavaModule$Dispatcher;->canRead(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 165
    :cond_0
    instance-of v0, p1, Lnet/bytebuddy/utility/JavaModule;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 168
    :cond_1
    check-cast p1, Lnet/bytebuddy/utility/JavaModule;

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/Object;

    .line 169
    iget-object p1, p1, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getActualName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->DISPATCHER:Lnet/bytebuddy/utility/JavaModule$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/Object;

    .line 105
    invoke-interface {v0, v1}, Lnet/bytebuddy/utility/JavaModule$Dispatcher;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->DISPATCHER:Lnet/bytebuddy/utility/JavaModule$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/Object;

    .line 124
    invoke-interface {v0, v1}, Lnet/bytebuddy/utility/JavaModule$Dispatcher;->getClassLoader(Ljava/lang/Object;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->DISPATCHER:Lnet/bytebuddy/utility/JavaModule$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/Object;

    .line 115
    invoke-interface {v0, v1, p1}, Lnet/bytebuddy/utility/JavaModule$Dispatcher;->getResourceAsStream(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/Object;

    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNamed()Z
    .locals 2

    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->DISPATCHER:Lnet/bytebuddy/utility/JavaModule$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/Object;

    .line 98
    invoke-interface {v0, v1}, Lnet/bytebuddy/utility/JavaModule$Dispatcher;->isNamed(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/Object;

    .line 174
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/Object;

    return-object v0
.end method
