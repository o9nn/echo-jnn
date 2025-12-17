.class public final Lcom/google/common/flogger/backend/NoOpContextDataProvider;
.super Lcom/google/common/flogger/context/ContextDataProvider;
.source "NoOpContextDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext;
    }
.end annotation


# static fields
.field private static final NO_OP_INSTANCE:Lcom/google/common/flogger/context/ContextDataProvider;


# instance fields
.field private final noOpContext:Lcom/google/common/flogger/context/ScopedLoggingContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/google/common/flogger/backend/NoOpContextDataProvider;

    invoke-direct {v0}, Lcom/google/common/flogger/backend/NoOpContextDataProvider;-><init>()V

    sput-object v0, Lcom/google/common/flogger/backend/NoOpContextDataProvider;->NO_OP_INSTANCE:Lcom/google/common/flogger/context/ContextDataProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/google/common/flogger/context/ContextDataProvider;-><init>()V

    .line 95
    new-instance v0, Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext;-><init>(Lcom/google/common/flogger/backend/NoOpContextDataProvider$1;)V

    iput-object v0, p0, Lcom/google/common/flogger/backend/NoOpContextDataProvider;->noOpContext:Lcom/google/common/flogger/context/ScopedLoggingContext;

    return-void
.end method

.method public static final getInstance()Lcom/google/common/flogger/context/ContextDataProvider;
    .locals 1

    sget-object v0, Lcom/google/common/flogger/backend/NoOpContextDataProvider;->NO_OP_INSTANCE:Lcom/google/common/flogger/context/ContextDataProvider;

    return-object v0
.end method


# virtual methods
.method public getContextApiSingleton()Lcom/google/common/flogger/context/ScopedLoggingContext;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/backend/NoOpContextDataProvider;->noOpContext:Lcom/google/common/flogger/context/ScopedLoggingContext;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "No-op Provider"

    return-object v0
.end method
