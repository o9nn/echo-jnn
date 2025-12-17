.class public final synthetic Lcom/google/auto/value/processor/BuilderMethodClassifier$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/auto/value/processor/BuilderMethodClassifier;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/auto/value/processor/BuilderMethodClassifier;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier$$ExternalSyntheticLambda5;->f$0:Lcom/google/auto/value/processor/BuilderMethodClassifier;

    iput-object p2, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier$$ExternalSyntheticLambda5;->f$0:Lcom/google/auto/value/processor/BuilderMethodClassifier;

    iget-object v1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;

    invoke-virtual {v0, v1, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->lambda$classifyPropertyBuilderOneArg$0$com-google-auto-value-processor-BuilderMethodClassifier(Ljava/lang/String;Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;)V

    return-void
.end method
