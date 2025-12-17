.class public Lorg/mockito/internal/creation/MockSettingsImpl;
.super Lorg/mockito/internal/creation/settings/CreationSettings;
.source "MockSettingsImpl.java"

# interfaces
.implements Lorg/mockito/MockSettings;
.implements Lorg/mockito/mock/MockCreationSettings;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mockito/internal/creation/settings/CreationSettings<",
        "TT;>;",
        "Lorg/mockito/MockSettings;",
        "Lorg/mockito/mock/MockCreationSettings<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3e1b73200bdd9971L


# instance fields
.field private constructorArgs:[Ljava/lang/Object;

.field private outerClassInstance:Ljava/lang/Object;

.field private useConstructor:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/mockito/internal/creation/settings/CreationSettings;-><init>()V

    return-void
.end method

.method static addListeners([Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 191
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 194
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 198
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "null listeners."

    .line 196
    invoke-static {p2, p0}, Lorg/mockito/internal/exceptions/Reporter;->methodDoesNotAcceptParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p0

    throw p0

    :cond_1
    return-void

    .line 192
    :cond_2
    invoke-static {p2}, Lorg/mockito/internal/exceptions/Reporter;->requiresAtLeastOneListener(Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p0

    throw p0

    :cond_3
    const-string p0, "null vararg array."

    .line 189
    invoke-static {p2, p0}, Lorg/mockito/internal/exceptions/Reporter;->methodDoesNotAcceptParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p0

    throw p0
.end method

.method private invocationListenersContainsType(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->invocationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/listeners/InvocationListener;

    .line 210
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static prepareExtraInterfaces(Lorg/mockito/internal/creation/settings/CreationSettings;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/creation/settings/CreationSettings;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/mockito/internal/creation/settings/CreationSettings;->getExtraInterfaces()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 260
    invoke-virtual {p0}, Lorg/mockito/internal/creation/settings/CreationSettings;->isSerializable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 261
    const-class p0, Ljava/io/Serializable;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private static validatedSettings(Ljava/lang/Class;Lorg/mockito/internal/creation/settings/CreationSettings;)Lorg/mockito/internal/creation/settings/CreationSettings;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/mockito/internal/creation/settings/CreationSettings<",
            "TT;>;)",
            "Lorg/mockito/internal/creation/settings/CreationSettings<",
            "TT;>;"
        }
    .end annotation

    .line 238
    new-instance v0, Lorg/mockito/internal/util/MockCreationValidator;

    invoke-direct {v0}, Lorg/mockito/internal/util/MockCreationValidator;-><init>()V

    .line 240
    invoke-virtual {v0, p0}, Lorg/mockito/internal/util/MockCreationValidator;->validateType(Ljava/lang/Class;)V

    .line 241
    invoke-virtual {p1}, Lorg/mockito/internal/creation/settings/CreationSettings;->getExtraInterfaces()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/mockito/internal/util/MockCreationValidator;->validateExtraInterfaces(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 242
    invoke-virtual {p1}, Lorg/mockito/internal/creation/settings/CreationSettings;->getSpiedInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/mockito/internal/util/MockCreationValidator;->validateMockedType(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 247
    invoke-virtual {p1}, Lorg/mockito/internal/creation/settings/CreationSettings;->isUsingConstructor()Z

    move-result v1

    invoke-virtual {p1}, Lorg/mockito/internal/creation/settings/CreationSettings;->getSerializableMode()Lorg/mockito/mock/SerializableMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mockito/internal/util/MockCreationValidator;->validateConstructorUse(ZLorg/mockito/mock/SerializableMode;)V

    .line 251
    new-instance v0, Lorg/mockito/internal/creation/settings/CreationSettings;

    invoke-direct {v0, p1}, Lorg/mockito/internal/creation/settings/CreationSettings;-><init>(Lorg/mockito/internal/creation/settings/CreationSettings;)V

    .line 252
    new-instance v1, Lorg/mockito/internal/util/MockNameImpl;

    invoke-virtual {p1}, Lorg/mockito/internal/creation/settings/CreationSettings;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lorg/mockito/internal/util/MockNameImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/mockito/internal/creation/settings/CreationSettings;->setMockName(Lorg/mockito/mock/MockName;)Lorg/mockito/internal/creation/settings/CreationSettings;

    .line 253
    invoke-virtual {v0, p0}, Lorg/mockito/internal/creation/settings/CreationSettings;->setTypeToMock(Ljava/lang/Class;)Lorg/mockito/internal/creation/settings/CreationSettings;

    .line 254
    invoke-static {p1}, Lorg/mockito/internal/creation/MockSettingsImpl;->prepareExtraInterfaces(Lorg/mockito/internal/creation/settings/CreationSettings;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/mockito/internal/creation/settings/CreationSettings;->setExtraInterfaces(Ljava/util/Set;)Lorg/mockito/internal/creation/settings/CreationSettings;

    return-object v0
.end method


# virtual methods
.method public build(Ljava/lang/Class;)Lorg/mockito/mock/MockCreationSettings;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;"
        }
    .end annotation

    .line 228
    invoke-static {p1, p0}, Lorg/mockito/internal/creation/MockSettingsImpl;->validatedSettings(Ljava/lang/Class;Lorg/mockito/internal/creation/settings/CreationSettings;)Lorg/mockito/internal/creation/settings/CreationSettings;

    move-result-object p1

    return-object p1
.end method

.method public defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;
    .locals 0

    .line 101
    iput-object p1, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->defaultAnswer:Lorg/mockito/stubbing/Answer;

    if-eqz p1, :cond_0

    return-object p0

    .line 103
    :cond_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->defaultAnswerDoesNotAcceptNullParameter()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method

.method public varargs extraInterfaces([Ljava/lang/Class;)Lorg/mockito/MockSettings;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/MockSettings;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 57
    array-length v0, p1

    if-eqz v0, :cond_3

    .line 61
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {v2}, Lorg/mockito/internal/exceptions/Reporter;->extraInterfacesAcceptsOnlyInterfaces(Ljava/lang/Class;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    .line 63
    :cond_1
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->extraInterfacesDoesNotAcceptNullParameters()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    .line 68
    :cond_2
    invoke-static {p1}, Lorg/mockito/internal/util/collections/Sets;->newSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->extraInterfaces:Ljava/util/Set;

    return-object p0

    .line 58
    :cond_3
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->extraInterfacesRequiresAtLeastOneInterface()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method

.method public getConstructorArgs()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->outerClassInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->constructorArgs:[Ljava/lang/Object;

    return-object v0

    .line 156
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->constructorArgs:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->outerClassInstance:Ljava/lang/Object;

    .line 157
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->constructorArgs:[Ljava/lang/Object;

    .line 158
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->constructorArgs:[Ljava/lang/Object;

    .line 159
    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

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

    .line 110
    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->defaultAnswer:Lorg/mockito/stubbing/Answer;

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

    .line 79
    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->extraInterfaces:Ljava/util/Set;

    return-object v0
.end method

.method public getMockName()Lorg/mockito/mock/MockName;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->mockName:Lorg/mockito/mock/MockName;

    return-object v0
.end method

.method public getOuterClassInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->outerClassInstance:Ljava/lang/Object;

    return-object v0
.end method

.method public getSpiedInstance()Ljava/lang/Object;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->spiedInstance:Ljava/lang/Object;

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

    .line 223
    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->typeToMock:Ljava/lang/Class;

    return-object v0
.end method

.method public hasInvocationListeners()Z
    .locals 1

    .line 218
    invoke-virtual {p0}, Lorg/mockito/internal/creation/MockSettingsImpl;->getInvocationListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public varargs invocationListeners([Lorg/mockito/listeners/InvocationListener;)Lorg/mockito/MockSettings;
    .locals 2

    .line 177
    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->invocationListeners:Ljava/util/List;

    const-string v1, "invocationListeners"

    invoke-static {p1, v0, v1}, Lorg/mockito/internal/creation/MockSettingsImpl;->addListeners([Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;)V

    return-object p0
.end method

.method public isStubOnly()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->stubOnly:Z

    return v0
.end method

.method public isUsingConstructor()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->useConstructor:Z

    return v0
.end method

.method public lenient()Lorg/mockito/MockSettings;
    .locals 1

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->lenient:Z

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lorg/mockito/MockSettings;
    .locals 0

    .line 89
    iput-object p1, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->name:Ljava/lang/String;

    return-object p0
.end method

.method public outerInstance(Ljava/lang/Object;)Lorg/mockito/MockSettings;
    .locals 0

    iput-object p1, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->outerClassInstance:Ljava/lang/Object;

    return-object p0
.end method

.method public serializable()Lorg/mockito/MockSettings;
    .locals 1

    .line 46
    sget-object v0, Lorg/mockito/mock/SerializableMode;->BASIC:Lorg/mockito/mock/SerializableMode;

    invoke-virtual {p0, v0}, Lorg/mockito/internal/creation/MockSettingsImpl;->serializable(Lorg/mockito/mock/SerializableMode;)Lorg/mockito/MockSettings;

    move-result-object v0

    return-object v0
.end method

.method public serializable(Lorg/mockito/mock/SerializableMode;)Lorg/mockito/MockSettings;
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->serializableMode:Lorg/mockito/mock/SerializableMode;

    return-object p0
.end method

.method public spiedInstance(Ljava/lang/Object;)Lorg/mockito/MockSettings;
    .locals 0

    .line 95
    iput-object p1, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->spiedInstance:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic stubOnly()Lorg/mockito/MockSettings;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/mockito/internal/creation/MockSettingsImpl;->stubOnly()Lorg/mockito/internal/creation/MockSettingsImpl;

    move-result-object v0

    return-object v0
.end method

.method public stubOnly()Lorg/mockito/internal/creation/MockSettingsImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/internal/creation/MockSettingsImpl<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->stubOnly:Z

    return-object p0
.end method

.method public varargs stubbingLookupListeners([Lorg/mockito/listeners/StubbingLookupListener;)Lorg/mockito/MockSettings;
    .locals 2

    .line 183
    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->stubbingLookupListeners:Ljava/util/List;

    const-string v1, "stubbingLookupListeners"

    invoke-static {p1, v0, v1}, Lorg/mockito/internal/creation/MockSettingsImpl;->addListeners([Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;)V

    return-object p0
.end method

.method public varargs useConstructor([Ljava/lang/Object;)Lorg/mockito/MockSettings;
    .locals 2

    const-string v0, "constructorArgs"

    const-string v1, "If you need to pass null, please cast it to the right type, e.g.: useConstructor((String) null)"

    .line 121
    invoke-static {p1, v0, v1}, Lorg/mockito/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->useConstructor:Z

    iput-object p1, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->constructorArgs:[Ljava/lang/Object;

    return-object p0
.end method

.method public verboseLogging()Lorg/mockito/MockSettings;
    .locals 3

    .line 169
    const-class v0, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;

    invoke-direct {p0, v0}, Lorg/mockito/internal/creation/MockSettingsImpl;->invocationListenersContainsType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/mockito/listeners/InvocationListener;

    .line 170
    new-instance v1, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;

    invoke-direct {v1}, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/mockito/internal/creation/MockSettingsImpl;->invocationListeners([Lorg/mockito/listeners/InvocationListener;)Lorg/mockito/MockSettings;

    :cond_0
    return-object p0
.end method

.method public varargs verificationStartedListeners([Lorg/mockito/listeners/VerificationStartedListener;)Lorg/mockito/MockSettings;
    .locals 2

    .line 204
    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->verificationStartedListeners:Ljava/util/List;

    const-string v1, "verificationStartedListeners"

    invoke-static {p1, v0, v1}, Lorg/mockito/internal/creation/MockSettingsImpl;->addListeners([Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;)V

    return-object p0
.end method

.method public withoutAnnotations()Lorg/mockito/MockSettings;
    .locals 1

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->stripAnnotations:Z

    return-object p0
.end method
