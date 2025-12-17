.class public Lorg/mockito/internal/creation/settings/CreationSettings;
.super Ljava/lang/Object;
.source "CreationSettings.java"

# interfaces
.implements Lorg/mockito/mock/MockCreationSettings;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/mock/MockCreationSettings<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5e3a37b4d7e3ec6dL


# instance fields
.field private constructorArgs:[Ljava/lang/Object;

.field protected defaultAnswer:Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected extraInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected invocationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mockito/listeners/InvocationListener;",
            ">;"
        }
    .end annotation
.end field

.field protected lenient:Z

.field protected mockName:Lorg/mockito/mock/MockName;

.field protected name:Ljava/lang/String;

.field private outerClassInstance:Ljava/lang/Object;

.field protected serializableMode:Lorg/mockito/mock/SerializableMode;

.field protected spiedInstance:Ljava/lang/Object;

.field protected stripAnnotations:Z

.field protected stubOnly:Z

.field protected stubbingLookupListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mockito/listeners/StubbingLookupListener;",
            ">;"
        }
    .end annotation
.end field

.field protected typeToMock:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private useConstructor:Z

.field protected verificationStartedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mockito/listeners/VerificationStartedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->extraInterfaces:Ljava/util/Set;

    .line 32
    sget-object v0, Lorg/mockito/mock/SerializableMode;->NONE:Lorg/mockito/mock/SerializableMode;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->serializableMode:Lorg/mockito/mock/SerializableMode;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->invocationListeners:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->stubbingLookupListeners:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->verificationStartedListeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/mockito/internal/creation/settings/CreationSettings;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->extraInterfaces:Ljava/util/Set;

    .line 32
    sget-object v0, Lorg/mockito/mock/SerializableMode;->NONE:Lorg/mockito/mock/SerializableMode;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->serializableMode:Lorg/mockito/mock/SerializableMode;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->invocationListeners:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->stubbingLookupListeners:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->verificationStartedListeners:Ljava/util/List;

    .line 52
    iget-object v0, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->typeToMock:Ljava/lang/Class;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->typeToMock:Ljava/lang/Class;

    .line 53
    iget-object v0, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->extraInterfaces:Ljava/util/Set;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->extraInterfaces:Ljava/util/Set;

    .line 54
    iget-object v0, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->name:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->spiedInstance:Ljava/lang/Object;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->spiedInstance:Ljava/lang/Object;

    .line 56
    iget-object v0, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->defaultAnswer:Lorg/mockito/stubbing/Answer;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->defaultAnswer:Lorg/mockito/stubbing/Answer;

    .line 57
    iget-object v0, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->mockName:Lorg/mockito/mock/MockName;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->mockName:Lorg/mockito/mock/MockName;

    .line 58
    iget-object v0, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->serializableMode:Lorg/mockito/mock/SerializableMode;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->serializableMode:Lorg/mockito/mock/SerializableMode;

    .line 59
    iget-object v0, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->invocationListeners:Ljava/util/List;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->invocationListeners:Ljava/util/List;

    .line 60
    iget-object v0, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->stubbingLookupListeners:Ljava/util/List;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->stubbingLookupListeners:Ljava/util/List;

    .line 61
    iget-object v0, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->verificationStartedListeners:Ljava/util/List;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->verificationStartedListeners:Ljava/util/List;

    .line 62
    iget-boolean v0, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->stubOnly:Z

    iput-boolean v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->stubOnly:Z

    .line 63
    invoke-virtual {p1}, Lorg/mockito/internal/creation/settings/CreationSettings;->isUsingConstructor()Z

    move-result v0

    iput-boolean v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->useConstructor:Z

    .line 64
    invoke-virtual {p1}, Lorg/mockito/internal/creation/settings/CreationSettings;->getOuterClassInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->outerClassInstance:Ljava/lang/Object;

    .line 65
    invoke-virtual {p1}, Lorg/mockito/internal/creation/settings/CreationSettings;->getConstructorArgs()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->constructorArgs:[Ljava/lang/Object;

    .line 66
    iget-boolean v0, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->lenient:Z

    iput-boolean v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->lenient:Z

    .line 67
    iget-boolean p1, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->stripAnnotations:Z

    iput-boolean p1, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->stripAnnotations:Z

    return-void
.end method


# virtual methods
.method public getConstructorArgs()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->constructorArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method public getDefaultAnswer()Lorg/mockito/stubbing/Answer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->defaultAnswer:Lorg/mockito/stubbing/Answer;

    return-object v0
.end method

.method public getExtraInterfaces()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->extraInterfaces:Ljava/util/Set;

    return-object v0
.end method

.method public getInvocationListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/listeners/InvocationListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->invocationListeners:Ljava/util/List;

    return-object v0
.end method

.method public getMockName()Lorg/mockito/mock/MockName;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->mockName:Lorg/mockito/mock/MockName;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOuterClassInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->outerClassInstance:Ljava/lang/Object;

    return-object v0
.end method

.method public getSerializableMode()Lorg/mockito/mock/SerializableMode;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->serializableMode:Lorg/mockito/mock/SerializableMode;

    return-object v0
.end method

.method public getSpiedInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->spiedInstance:Ljava/lang/Object;

    return-object v0
.end method

.method public getStubbingLookupListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/listeners/StubbingLookupListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->stubbingLookupListeners:Ljava/util/List;

    return-object v0
.end method

.method public getTypeToMock()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->typeToMock:Ljava/lang/Class;

    return-object v0
.end method

.method public getVerificationStartedListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/listeners/VerificationStartedListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->verificationStartedListeners:Ljava/util/List;

    return-object v0
.end method

.method public isLenient()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->lenient:Z

    return v0
.end method

.method public isSerializable()Z
    .locals 2

    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->serializableMode:Lorg/mockito/mock/SerializableMode;

    .line 115
    sget-object v1, Lorg/mockito/mock/SerializableMode;->NONE:Lorg/mockito/mock/SerializableMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStripAnnotations()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->stripAnnotations:Z

    return v0
.end method

.method public isStubOnly()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->stubOnly:Z

    return v0
.end method

.method public isUsingConstructor()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->useConstructor:Z

    return v0
.end method

.method public setExtraInterfaces(Ljava/util/Set;)Lorg/mockito/internal/creation/settings/CreationSettings;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lorg/mockito/internal/creation/settings/CreationSettings<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->extraInterfaces:Ljava/util/Set;

    return-object p0
.end method

.method public setMockName(Lorg/mockito/mock/MockName;)Lorg/mockito/internal/creation/settings/CreationSettings;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/mock/MockName;",
            ")",
            "Lorg/mockito/internal/creation/settings/CreationSettings<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->mockName:Lorg/mockito/mock/MockName;

    return-object p0
.end method

.method public setSerializableMode(Lorg/mockito/mock/SerializableMode;)Lorg/mockito/internal/creation/settings/CreationSettings;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/mock/SerializableMode;",
            ")",
            "Lorg/mockito/internal/creation/settings/CreationSettings<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->serializableMode:Lorg/mockito/mock/SerializableMode;

    return-object p0
.end method

.method public setTypeToMock(Ljava/lang/Class;)Lorg/mockito/internal/creation/settings/CreationSettings;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/mockito/internal/creation/settings/CreationSettings<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->typeToMock:Ljava/lang/Class;

    return-object p0
.end method
