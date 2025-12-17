.class public final synthetic Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;


# direct methods
.method public synthetic constructor <init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda10;->f$0:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda10;->f$0:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    check-cast p1, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addAnnotation(Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    return-void
.end method
