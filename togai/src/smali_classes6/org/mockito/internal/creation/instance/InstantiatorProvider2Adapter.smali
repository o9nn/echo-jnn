.class public Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter;
.super Ljava/lang/Object;
.source "InstantiatorProvider2Adapter.java"

# interfaces
.implements Lorg/mockito/plugins/InstantiatorProvider;


# instance fields
.field private final provider:Lorg/mockito/plugins/InstantiatorProvider2;


# direct methods
.method public constructor <init>(Lorg/mockito/plugins/InstantiatorProvider2;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter;->provider:Lorg/mockito/plugins/InstantiatorProvider2;

    return-void
.end method

.method static synthetic access$000(Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter;)Lorg/mockito/plugins/InstantiatorProvider2;
    .locals 0

    .line 14
    iget-object p0, p0, Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter;->provider:Lorg/mockito/plugins/InstantiatorProvider2;

    return-object p0
.end method


# virtual methods
.method public getInstantiator(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/creation/instance/Instantiator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "*>;)",
            "Lorg/mockito/internal/creation/instance/Instantiator;"
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter$1;

    invoke-direct {v0, p0, p1}, Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter$1;-><init>(Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter;Lorg/mockito/mock/MockCreationSettings;)V

    return-object v0
.end method
