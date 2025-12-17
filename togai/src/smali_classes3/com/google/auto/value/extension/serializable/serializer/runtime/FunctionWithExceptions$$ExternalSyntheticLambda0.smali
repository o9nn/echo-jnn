.class public final synthetic Lcom/google/auto/value/extension/serializable/serializer/runtime/FunctionWithExceptions$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/auto/value/extension/serializable/serializer/runtime/FunctionWithExceptions$FunctionWithException;


# direct methods
.method public synthetic constructor <init>(Lcom/google/auto/value/extension/serializable/serializer/runtime/FunctionWithExceptions$FunctionWithException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/extension/serializable/serializer/runtime/FunctionWithExceptions$$ExternalSyntheticLambda0;->f$0:Lcom/google/auto/value/extension/serializable/serializer/runtime/FunctionWithExceptions$FunctionWithException;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/extension/serializable/serializer/runtime/FunctionWithExceptions$$ExternalSyntheticLambda0;->f$0:Lcom/google/auto/value/extension/serializable/serializer/runtime/FunctionWithExceptions$FunctionWithException;

    invoke-static {v0, p1}, Lcom/google/auto/value/extension/serializable/serializer/runtime/FunctionWithExceptions;->lambda$wrapper$0(Lcom/google/auto/value/extension/serializable/serializer/runtime/FunctionWithExceptions$FunctionWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
