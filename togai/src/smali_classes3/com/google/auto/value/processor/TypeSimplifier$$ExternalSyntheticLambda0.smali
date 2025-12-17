.class public final synthetic Lcom/google/auto/value/processor/TypeSimplifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljavax/lang/model/util/Types;


# direct methods
.method public synthetic constructor <init>(Ljavax/lang/model/util/Types;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/TypeSimplifier$$ExternalSyntheticLambda0;->f$0:Ljavax/lang/model/util/Types;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/TypeSimplifier$$ExternalSyntheticLambda0;->f$0:Ljavax/lang/model/util/Types;

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    invoke-static {v0, p1}, Lcom/google/auto/value/processor/TypeSimplifier;->lambda$topLevelTypes$1(Ljavax/lang/model/util/Types;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    return-object p1
.end method
