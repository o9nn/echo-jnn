.class Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1$2;
.super Ljavax/lang/model/util/SimpleAnnotationValueVisitor8;
.source "$AnnotationValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1;->visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleAnnotationValueVisitor8<",
        "Ljava/lang/Boolean;",
        "Ljavax/lang/model/element/AnnotationMirror;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1$2;->this$1:Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1;

    .line 56
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor8;-><init>()V

    return-void
.end method


# virtual methods
.method protected defaultAction(Ljava/lang/Object;Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    .line 58
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p2, Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1$2;->defaultAction(Ljava/lang/Object;Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/Boolean;
    .locals 1

    .line 62
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$AnnotationMirrors;->equivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p2, Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$1$1$2;->visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
