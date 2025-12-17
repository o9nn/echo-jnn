.class public final synthetic Lcom/google/auto/value/processor/TypeEncoder$AnnotatedEncodingTypeVisitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/google/auto/value/processor/TypeEncoder$AnnotatedEncodingTypeVisitor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/auto/value/processor/TypeEncoder$AnnotatedEncodingTypeVisitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/TypeEncoder$AnnotatedEncodingTypeVisitor$$ExternalSyntheticLambda0;->f$0:Lcom/google/auto/value/processor/TypeEncoder$AnnotatedEncodingTypeVisitor;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/TypeEncoder$AnnotatedEncodingTypeVisitor$$ExternalSyntheticLambda0;->f$0:Lcom/google/auto/value/processor/TypeEncoder$AnnotatedEncodingTypeVisitor;

    check-cast p1, Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, p1}, Lcom/google/auto/value/processor/TypeEncoder$AnnotatedEncodingTypeVisitor;->lambda$appendAnnotationsWithExclusions$0$com-google-auto-value-processor-TypeEncoder$AnnotatedEncodingTypeVisitor(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result p1

    return p1
.end method
