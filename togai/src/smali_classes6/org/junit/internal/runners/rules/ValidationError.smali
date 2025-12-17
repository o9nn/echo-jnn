.class Lorg/junit/internal/runners/rules/ValidationError;
.super Ljava/lang/Exception;
.source "ValidationError.java"


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/FrameworkMember;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMember;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "The @%s \'%s\' %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
