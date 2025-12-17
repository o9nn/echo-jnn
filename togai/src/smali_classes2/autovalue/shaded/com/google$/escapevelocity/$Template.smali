.class public Lautovalue/shaded/com/google$/escapevelocity/$Template;
.super Ljava/lang/Object;
.source "$Template.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/escapevelocity/$Template$ResourceOpener;
    }
.end annotation


# instance fields
.field private final methodFinder:Lautovalue/shaded/com/google$/escapevelocity/$MethodFinder;

.field private final root:Lautovalue/shaded/com/google$/escapevelocity/$Node;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/escapevelocity/$Node;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lautovalue/shaded/com/google$/escapevelocity/$MethodFinder;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/escapevelocity/$MethodFinder;-><init>()V

    iput-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Template;->methodFinder:Lautovalue/shaded/com/google$/escapevelocity/$MethodFinder;

    iput-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Template;->root:Lautovalue/shaded/com/google$/escapevelocity/$Node;

    return-void
.end method

.method static synthetic lambda$parseFrom$0(Ljava/io/Reader;Ljava/lang/String;)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 90
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No ResourceOpener has been configured to read "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseFrom(Ljava/io/Reader;)Lautovalue/shaded/com/google$/escapevelocity/$Template;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    new-instance v0, Lautovalue/shaded/com/google$/escapevelocity/$Template$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/escapevelocity/$Template$$ExternalSyntheticLambda0;-><init>(Ljava/io/Reader;)V

    const/4 v1, 0x0

    .line 94
    :try_start_0
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Template;->parseFrom(Ljava/lang/String;Lautovalue/shaded/com/google$/escapevelocity/$Template$ResourceOpener;)Lautovalue/shaded/com/google$/escapevelocity/$Template;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 97
    throw v0
.end method

.method public static parseFrom(Ljava/lang/String;Lautovalue/shaded/com/google$/escapevelocity/$Template$ResourceOpener;)Lautovalue/shaded/com/google$/escapevelocity/$Template;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-interface {p1, p0}, Lautovalue/shaded/com/google$/escapevelocity/$Template$ResourceOpener;->openResource(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    .line 112
    :try_start_0
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$Parser;

    invoke-direct {v1, v0, p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;-><init>(Ljava/io/Reader;Ljava/lang/String;Lautovalue/shaded/com/google$/escapevelocity/$Template$ResourceOpener;)V

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parse()Lautovalue/shaded/com/google$/escapevelocity/$Template;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    .line 111
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_1

    .line 113
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method


# virtual methods
.method public evaluate(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 130
    new-instance v0, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext$PlainEvaluationContext;

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Template;->methodFinder:Lautovalue/shaded/com/google$/escapevelocity/$MethodFinder;

    invoke-direct {v0, p1, v1}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext$PlainEvaluationContext;-><init>(Ljava/util/Map;Lautovalue/shaded/com/google$/escapevelocity/$MethodFinder;)V

    iget-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Template;->root:Lautovalue/shaded/com/google$/escapevelocity/$Node;

    .line 131
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Node;->evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
