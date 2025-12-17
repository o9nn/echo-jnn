.class public final synthetic Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;


# direct methods
.method public synthetic constructor <init>(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode$$ExternalSyntheticLambda0;->f$0:Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode$$ExternalSyntheticLambda0;->f$0:Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;

    check-cast p1, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->lambda$evaluate$0(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
