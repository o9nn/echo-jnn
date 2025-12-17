.class public final synthetic Lcom/google/auto/value/extension/memoized/processor/MemoizedValidator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljavax/lang/model/element/TypeElement;

    invoke-static {p1}, Lcom/google/auto/value/extension/memoized/processor/MemoizedValidator;->lambda$isAutoValue$1(Ljavax/lang/model/element/TypeElement;)Z

    move-result p1

    return p1
.end method
