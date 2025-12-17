.class public final synthetic Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljavax/lang/model/type/TypeMirror;


# direct methods
.method public synthetic constructor <init>(Ljavax/lang/model/type/TypeMirror;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda0;->f$0:Ljavax/lang/model/type/TypeMirror;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda0;->f$0:Ljavax/lang/model/type/TypeMirror;

    check-cast p1, Ljavax/lang/model/element/ExecutableElement;

    invoke-static {v0, p1}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->lambda$findKindGetterOrAbort$6(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/ExecutableElement;)Z

    move-result p1

    return p1
.end method
