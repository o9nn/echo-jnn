.class public final Lcom/google/common/flogger/context/ScopeType;
.super Ljava/lang/Object;
.source "ScopeType.java"

# interfaces
.implements Lcom/google/common/flogger/LoggingScopeProvider;


# static fields
.field public static final REQUEST:Lcom/google/common/flogger/context/ScopeType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "request"

    .line 57
    invoke-static {v0}, Lcom/google/common/flogger/context/ScopeType;->create(Ljava/lang/String;)Lcom/google/common/flogger/context/ScopeType;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/context/ScopeType;->REQUEST:Lcom/google/common/flogger/context/ScopeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    .line 74
    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/flogger/context/ScopeType;->name:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/google/common/flogger/context/ScopeType;
    .locals 1

    .line 68
    new-instance v0, Lcom/google/common/flogger/context/ScopeType;

    invoke-direct {v0, p0}, Lcom/google/common/flogger/context/ScopeType;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCurrentScope()Lcom/google/common/flogger/LoggingScope;
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 86
    invoke-static {}, Lcom/google/common/flogger/context/ContextDataProvider;->getInstance()Lcom/google/common/flogger/context/ContextDataProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/flogger/context/ContextDataProvider;->getScope(Lcom/google/common/flogger/context/ScopeType;)Lcom/google/common/flogger/LoggingScope;

    move-result-object v0

    return-object v0
.end method

.method newScope()Lcom/google/common/flogger/LoggingScope;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/context/ScopeType;->name:Ljava/lang/String;

    .line 80
    invoke-static {v0}, Lcom/google/common/flogger/LoggingScope;->create(Ljava/lang/String;)Lcom/google/common/flogger/LoggingScope;

    move-result-object v0

    return-object v0
.end method
