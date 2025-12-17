.class Lorg/mockito/internal/junit/ExceptionFactory$3;
.super Ljava/lang/Object;
.source "ExceptionFactory.java"

# interfaces
.implements Lorg/mockito/internal/junit/ExceptionFactory$ExceptionFactoryImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/junit/ExceptionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/AssertionError;
    .locals 1

    .line 44
    new-instance v0, Lorg/mockito/exceptions/verification/ArgumentsAreDifferent;

    invoke-direct {v0, p1, p2, p3}, Lorg/mockito/exceptions/verification/ArgumentsAreDifferent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
