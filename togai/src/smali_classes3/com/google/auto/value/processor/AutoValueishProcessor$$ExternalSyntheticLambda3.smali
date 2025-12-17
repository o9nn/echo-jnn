.class public final synthetic Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/google/auto/value/processor/AutoValueishProcessor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/auto/value/processor/AutoValueishProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda3;->f$0:Lcom/google/auto/value/processor/AutoValueishProcessor;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda3;->f$0:Lcom/google/auto/value/processor/AutoValueishProcessor;

    check-cast p1, Ljavax/lang/model/element/TypeElement;

    invoke-virtual {v0, p1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->lambda$propertyFieldAnnotations$10$com-google-auto-value-processor-AutoValueishProcessor(Ljavax/lang/model/element/TypeElement;)Z

    move-result p1

    return p1
.end method
