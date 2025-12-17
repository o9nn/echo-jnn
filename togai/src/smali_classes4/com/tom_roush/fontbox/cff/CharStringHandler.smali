.class public abstract Lcom/tom_roush/fontbox/cff/CharStringHandler;
.super Ljava/lang/Object;
.source "CharStringHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract handleCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;",
            "Lcom/tom_roush/fontbox/cff/CharStringCommand;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end method

.method public handleSequence(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 43
    instance-of v2, v1, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    if-eqz v2, :cond_1

    .line 45
    check-cast v1, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/fontbox/cff/CharStringHandler;->handleCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)Ljava/util/List;

    move-result-object v1

    .line 46
    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz v1, :cond_0

    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 54
    :cond_1
    check-cast v1, Ljava/lang/Number;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
