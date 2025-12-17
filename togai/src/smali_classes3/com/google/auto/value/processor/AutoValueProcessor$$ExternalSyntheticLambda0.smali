.class public final synthetic Lcom/google/auto/value/processor/AutoValueProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/auto/value/processor/SimpleMethod;

    check-cast p1, Ljavax/lang/model/element/ExecutableElement;

    invoke-direct {v0, p1}, Lcom/google/auto/value/processor/SimpleMethod;-><init>(Ljavax/lang/model/element/ExecutableElement;)V

    return-object v0
.end method
