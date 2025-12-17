.class public final Lcom/google/common/flogger/context/Tags$Builder;
.super Ljava/lang/Object;
.source "Tags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/Tags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final keyValuePairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/common/flogger/context/Tags$KeyValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$Builder;->keyValuePairs:Ljava/util/List;

    return-void
.end method

.method private addImpl(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/flogger/context/Tags$Builder;
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$Builder;->keyValuePairs:Ljava/util/List;

    .line 222
    new-instance v1, Lcom/google/common/flogger/context/Tags$KeyValuePair;

    invoke-static {p1}, Lcom/google/common/flogger/util/Checks;->checkMetadataIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/common/flogger/context/Tags$KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/google/common/flogger/context/Tags$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method public addTag(Ljava/lang/String;)Lcom/google/common/flogger/context/Tags$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/google/common/flogger/context/Tags$Builder;->addImpl(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/flogger/context/Tags$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addTag(Ljava/lang/String;D)Lcom/google/common/flogger/context/Tags$Builder;
    .locals 0

    .line 218
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/context/Tags$Builder;->addImpl(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/flogger/context/Tags$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addTag(Ljava/lang/String;J)Lcom/google/common/flogger/context/Tags$Builder;
    .locals 0

    .line 205
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/context/Tags$Builder;->addImpl(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/flogger/context/Tags$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addTag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/flogger/context/Tags$Builder;
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "tag value"

    .line 182
    invoke-static {v0, v1}, Lcom/google/common/flogger/util/Checks;->checkArgument(ZLjava/lang/String;)V

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/context/Tags$Builder;->addImpl(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/flogger/context/Tags$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addTag(Ljava/lang/String;Z)Lcom/google/common/flogger/context/Tags$Builder;
    .locals 0

    .line 192
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/context/Tags$Builder;->addImpl(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/flogger/context/Tags$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/common/flogger/context/Tags;
    .locals 3

    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$Builder;->keyValuePairs:Ljava/util/List;

    .line 228
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-static {}, Lcom/google/common/flogger/context/Tags;->access$600()Lcom/google/common/flogger/context/Tags;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$Builder;->keyValuePairs:Ljava/util/List;

    .line 233
    invoke-static {}, Lcom/google/common/flogger/context/Tags;->access$700()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 234
    new-instance v0, Lcom/google/common/flogger/context/Tags;

    new-instance v1, Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    iget-object v2, p0, Lcom/google/common/flogger/context/Tags$Builder;->keyValuePairs:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;-><init>(Ljava/util/List;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/flogger/context/Tags;-><init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap;Lcom/google/common/flogger/context/Tags$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 239
    invoke-virtual {p0}, Lcom/google/common/flogger/context/Tags$Builder;->build()Lcom/google/common/flogger/context/Tags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/flogger/context/Tags;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
