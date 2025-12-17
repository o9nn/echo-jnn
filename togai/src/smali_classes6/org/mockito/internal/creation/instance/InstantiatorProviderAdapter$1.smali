.class Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter$1;
.super Ljava/lang/Object;
.source "InstantiatorProviderAdapter.java"

# interfaces
.implements Lorg/mockito/creation/instance/Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;->getInstantiator(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/creation/instance/Instantiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;

.field final synthetic val$settings:Lorg/mockito/mock/MockCreationSettings;


# direct methods
.method constructor <init>(Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 0

    iput-object p1, p0, Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter$1;->this$0:Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;

    iput-object p2, p0, Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter$1;->val$settings:Lorg/mockito/mock/MockCreationSettings;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mockito/creation/instance/InstantiationException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter$1;->this$0:Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;

    .line 29
    invoke-static {v0}, Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;->access$000(Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;)Lorg/mockito/plugins/InstantiatorProvider;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter$1;->val$settings:Lorg/mockito/mock/MockCreationSettings;

    invoke-interface {v0, v1}, Lorg/mockito/plugins/InstantiatorProvider;->getInstantiator(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/creation/instance/Instantiator;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/internal/creation/instance/Instantiator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/mockito/internal/creation/instance/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 31
    new-instance v0, Lorg/mockito/creation/instance/InstantiationException;

    invoke-virtual {p1}, Lorg/mockito/internal/creation/instance/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mockito/internal/creation/instance/InstantiationException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/mockito/creation/instance/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
