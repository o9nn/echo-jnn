.class public Lorg/mockito/internal/junit/ExceptionFactory;
.super Ljava/lang/Object;
.source "ExceptionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/junit/ExceptionFactory$ExceptionFactoryImpl;
    }
.end annotation


# static fields
.field private static final factory:Lorg/mockito/internal/junit/ExceptionFactory$ExceptionFactoryImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    :try_start_0
    new-instance v0, Lorg/mockito/internal/junit/ExceptionFactory$1;

    invoke-direct {v0}, Lorg/mockito/internal/junit/ExceptionFactory$1;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    :try_start_1
    new-instance v0, Lorg/mockito/internal/junit/ExceptionFactory$2;

    invoke-direct {v0}, Lorg/mockito/internal/junit/ExceptionFactory$2;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lorg/mockito/internal/junit/ExceptionFactory$3;

    invoke-direct {v0}, Lorg/mockito/internal/junit/ExceptionFactory$3;-><init>()V

    :cond_0
    sput-object v0, Lorg/mockito/internal/junit/ExceptionFactory;->factory:Lorg/mockito/internal/junit/ExceptionFactory$ExceptionFactoryImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createArgumentsAreDifferentException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/AssertionError;
    .locals 1

    sget-object v0, Lorg/mockito/internal/junit/ExceptionFactory;->factory:Lorg/mockito/internal/junit/ExceptionFactory$ExceptionFactoryImpl;

    .line 59
    invoke-interface {v0, p0, p1, p2}, Lorg/mockito/internal/junit/ExceptionFactory$ExceptionFactoryImpl;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object p0

    return-object p0
.end method
