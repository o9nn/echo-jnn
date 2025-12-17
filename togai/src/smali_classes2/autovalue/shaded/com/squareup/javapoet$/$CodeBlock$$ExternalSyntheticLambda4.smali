.class public final synthetic Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->lambda$joining$0(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$CodeBlockJoiner;

    move-result-object v0

    return-object v0
.end method
