.class public Lorg/mockito/internal/junit/DefaultTestFinishedEvent;
.super Ljava/lang/Object;
.source "DefaultTestFinishedEvent.java"

# interfaces
.implements Lorg/mockito/internal/junit/TestFinishedEvent;


# instance fields
.field private final testClassInstance:Ljava/lang/Object;

.field private final testFailure:Ljava/lang/Throwable;

.field private final testMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/junit/DefaultTestFinishedEvent;->testClassInstance:Ljava/lang/Object;

    iput-object p2, p0, Lorg/mockito/internal/junit/DefaultTestFinishedEvent;->testMethodName:Ljava/lang/String;

    iput-object p3, p0, Lorg/mockito/internal/junit/DefaultTestFinishedEvent;->testFailure:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getFailure()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/junit/DefaultTestFinishedEvent;->testFailure:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getTestName()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/mockito/internal/junit/DefaultTestFinishedEvent;->testClassInstance:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/junit/DefaultTestFinishedEvent;->testMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
