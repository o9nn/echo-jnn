.class public final synthetic Lautovalue/shaded/com/google$/escapevelocity/$Template$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lautovalue/shaded/com/google$/escapevelocity/$Template$ResourceOpener;


# instance fields
.field public final synthetic f$0:Ljava/io/Reader;


# direct methods
.method public synthetic constructor <init>(Ljava/io/Reader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Template$$ExternalSyntheticLambda0;->f$0:Ljava/io/Reader;

    return-void
.end method


# virtual methods
.method public final openResource(Ljava/lang/String;)Ljava/io/Reader;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Template$$ExternalSyntheticLambda0;->f$0:Ljava/io/Reader;

    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Template;->lambda$parseFrom$0(Ljava/io/Reader;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method
