.class public final synthetic Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/auto/value/processor/AutoOneOfProcessor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/auto/value/processor/AutoOneOfProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda2;->f$0:Lcom/google/auto/value/processor/AutoOneOfProcessor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda2;->f$0:Lcom/google/auto/value/processor/AutoOneOfProcessor;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->$r8$lambda$d8asp7u7Q_DwgobgEKKGonwYnhU(Lcom/google/auto/value/processor/AutoOneOfProcessor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
