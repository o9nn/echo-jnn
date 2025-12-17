.class Lcom/google/auto/value/processor/AutoValueishProcessor$ContainsMutableVisitor;
.super Ljavax/lang/model/util/SimpleAnnotationValueVisitor8;
.source "AutoValueishProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/AutoValueishProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContainsMutableVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleAnnotationValueVisitor8<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$366ak3MzeIlucZVLkJ8gr7TzeR0(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 871
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor8;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/auto/value/processor/AutoValueishProcessor$1;)V
    .locals 0

    .line 871
    invoke-direct {p0}, Lcom/google/auto/value/processor/AutoValueishProcessor$ContainsMutableVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitArray(Ljava/util/List;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 874
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/google/auto/value/processor/AutoValueishProcessor$ContainsMutableVisitor$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/google/auto/value/processor/AutoValueishProcessor$ContainsMutableVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/google/auto/value/processor/AutoValueishProcessor$ContainsMutableVisitor$$ExternalSyntheticLambda1;

    const-string v0, "mutable"

    invoke-direct {p2, v0}, Lcom/google/auto/value/processor/AutoValueishProcessor$ContainsMutableVisitor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitArray(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 871
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/AutoValueishProcessor$ContainsMutableVisitor;->visitArray(Ljava/util/List;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
