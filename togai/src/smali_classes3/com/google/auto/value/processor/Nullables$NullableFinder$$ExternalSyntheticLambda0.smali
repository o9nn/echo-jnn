.class public final synthetic Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/auto/value/processor/Nullables$NullableFinder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/auto/value/processor/Nullables$NullableFinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda0;->f$0:Lcom/google/auto/value/processor/Nullables$NullableFinder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda0;->f$0:Lcom/google/auto/value/processor/Nullables$NullableFinder;

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    invoke-static {v0, p1}, Lcom/google/auto/value/processor/Nullables$NullableFinder;->$r8$lambda$OP3XUcuFATZGI0aRnSgVLPt48F4(Lcom/google/auto/value/processor/Nullables$NullableFinder;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    return-object p1
.end method
