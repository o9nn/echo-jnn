.class public final synthetic Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    check-cast p1, Ljavax/lang/model/element/ExecutableElement;

    invoke-static {v0, p1}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->lambda$findRelevantExecutables$3(Ljava/lang/String;Ljavax/lang/model/element/ExecutableElement;)Z

    move-result p1

    return p1
.end method
