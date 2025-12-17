.class public final synthetic Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    check-cast p1, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs;->lambda$generatedAnnotationSpec$1(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    move-result-object p1

    return-object p1
.end method
