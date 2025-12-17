.class public final synthetic Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;


# direct methods
.method public synthetic constructor <init>(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda1;->f$0:Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda1;->f$0:Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-static {v0, p1, p2}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->lambda$constructor$1(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;)V

    return-void
.end method
