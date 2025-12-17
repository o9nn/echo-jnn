.class public Lnet/bytebuddy/agent/Attacher;
.super Ljava/lang/Object;
.source "Attacher.java"


# static fields
.field private static final ATTACH_METHOD_NAME:Ljava/lang/String; = "attach"

.field private static final DETACH_METHOD_NAME:Ljava/lang/String; = "detach"

.field private static final LOAD_AGENT_METHOD_NAME:Ljava/lang/String; = "loadAgent"

.field private static final STATIC_MEMBER:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class is a utility class and not supposed to be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static install(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-string v0, "detach"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 97
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "attach"

    .line 98
    invoke-virtual {p0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v3, Lnet/bytebuddy/agent/Attacher;->STATIC_MEMBER:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 99
    invoke-virtual {v2, v3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_start_0
    const-string v2, "loadAgent"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    .line 101
    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v1

    .line 102
    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 103
    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array p2, v4, [Ljava/lang/Class;

    .line 106
    invoke-virtual {p0, v0, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p2, v4, [Ljava/lang/Object;

    .line 107
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p2

    new-array p3, v4, [Ljava/lang/Class;

    .line 106
    invoke-virtual {p0, v0, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p3, v4, [Ljava/lang/Object;

    .line 107
    invoke-virtual {p0, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    throw p2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    .line 67
    :try_start_0
    array-length v1, p0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    const/4 v1, 0x3

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v1, p0, v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    :goto_0
    array-length v1, p0

    if-ge v2, v1, :cond_1

    const/16 v1, 0x20

    .line 72
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, p0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x0

    .line 76
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-object v3, p0, v0

    const/4 v4, 0x2

    aget-object p0, p0, v4

    invoke-static {v2, v3, p0, v1}, Lnet/bytebuddy/agent/Attacher;->install(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 78
    :catch_0
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_3
    return-void
.end method
