.class public final enum Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;
.super Ljava/lang/Enum;
.source "JavaModule.java"

# interfaces
.implements Lnet/bytebuddy/utility/JavaModule$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaModule$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Disabled"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;",
        ">;",
        "Lnet/bytebuddy/utility/JavaModule$Dispatcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;

.field public static final enum INSTANCE:Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 481
    new-instance v0, Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;->INSTANCE:Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;

    filled-new-array {v0}, [Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;->$VALUES:[Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 476
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;
    .locals 1

    const-class v0, Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;

    .line 476
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;
    .locals 1

    sget-object v0, Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;->$VALUES:[Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;

    .line 476
    invoke-virtual {v0}, [Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;

    return-object v0
.end method


# virtual methods
.method public addReads(Ljava/lang/instrument/Instrumentation;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 536
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Current VM does not support modules"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public canRead(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 529
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Current VM does not support modules"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getClassLoader(Ljava/lang/Object;)Ljava/lang/ClassLoader;
    .locals 1

    .line 501
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Current VM does not support modules"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 515
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Current VM does not support modules"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getResourceAsStream(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    .line 522
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Current VM does not support modules"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAlive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNamed(Ljava/lang/Object;)Z
    .locals 1

    .line 508
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Current VM does not support modules"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public moduleOf(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaModule;"
        }
    .end annotation

    .line 494
    sget-object p1, Lnet/bytebuddy/utility/JavaModule;->UNSUPPORTED:Lnet/bytebuddy/utility/JavaModule;

    return-object p1
.end method
