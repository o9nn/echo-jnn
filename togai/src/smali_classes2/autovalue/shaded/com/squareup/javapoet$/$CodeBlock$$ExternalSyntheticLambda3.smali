.class public final synthetic Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$$ExternalSyntheticLambda3;->f$0:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    iput-object p2, p0, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$$ExternalSyntheticLambda3;->f$0:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    iget-object v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    check-cast p1, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$CodeBlockJoiner;

    invoke-static {v0, v1, p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->lambda$joining$2(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$CodeBlockJoiner;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method
