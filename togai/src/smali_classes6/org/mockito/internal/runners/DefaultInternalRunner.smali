.class public Lorg/mockito/internal/runners/DefaultInternalRunner;
.super Ljava/lang/Object;
.source "DefaultInternalRunner.java"

# interfaces
.implements Lorg/mockito/internal/runners/InternalRunner;


# instance fields
.field private final runner:Lorg/junit/runners/BlockJUnit4ClassRunner;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/mockito/internal/util/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/mockito/internal/util/Supplier<",
            "Lorg/mockito/internal/junit/MockitoTestListener;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lorg/mockito/internal/runners/DefaultInternalRunner$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/mockito/internal/runners/DefaultInternalRunner$1;-><init>(Lorg/mockito/internal/runners/DefaultInternalRunner;Ljava/lang/Class;Lorg/mockito/internal/util/Supplier;)V

    iput-object v0, p0, Lorg/mockito/internal/runners/DefaultInternalRunner;->runner:Lorg/junit/runners/BlockJUnit4ClassRunner;

    return-void
.end method


# virtual methods
.method public filter(Lorg/junit/runner/manipulation/Filter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/runners/DefaultInternalRunner;->runner:Lorg/junit/runners/BlockJUnit4ClassRunner;

    .line 88
    invoke-virtual {v0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->filter(Lorg/junit/runner/manipulation/Filter;)V

    return-void
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/runners/DefaultInternalRunner;->runner:Lorg/junit/runners/BlockJUnit4ClassRunner;

    .line 84
    invoke-virtual {v0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/runners/DefaultInternalRunner;->runner:Lorg/junit/runners/BlockJUnit4ClassRunner;

    .line 80
    invoke-virtual {v0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->run(Lorg/junit/runner/notification/RunNotifier;)V

    return-void
.end method
