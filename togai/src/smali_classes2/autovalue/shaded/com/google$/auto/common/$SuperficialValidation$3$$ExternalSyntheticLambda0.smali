.class public final synthetic Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation$3;

.field public final synthetic f$1:Ljavax/lang/model/type/TypeMirror;


# direct methods
.method public synthetic constructor <init>(Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation$3;Ljavax/lang/model/type/TypeMirror;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation$3$$ExternalSyntheticLambda0;->f$0:Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation$3;

    iput-object p2, p0, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation$3$$ExternalSyntheticLambda0;->f$1:Ljavax/lang/model/type/TypeMirror;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation$3$$ExternalSyntheticLambda0;->f$0:Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation$3;

    iget-object v1, p0, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation$3$$ExternalSyntheticLambda0;->f$1:Ljavax/lang/model/type/TypeMirror;

    check-cast p1, Ljavax/lang/model/element/AnnotationValue;

    invoke-virtual {v0, v1, p1}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation$3;->lambda$visitArray$0$autovalue-shaded-com-google$-auto-common-$SuperficialValidation$3(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/AnnotationValue;)Z

    move-result p1

    return p1
.end method
