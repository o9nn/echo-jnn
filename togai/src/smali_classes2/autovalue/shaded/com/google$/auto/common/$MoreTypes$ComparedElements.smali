.class Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;
.super Ljava/lang/Object;
.source "$MoreTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/auto/common/$MoreTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComparedElements"
.end annotation


# instance fields
.field final a:Ljavax/lang/model/element/Element;

.field final aArguments:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljavax/lang/model/element/Element;

.field final bArguments:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavax/lang/model/element/Element;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljavax/lang/model/element/Element;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Ljavax/lang/model/element/Element;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;)V"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;->a:Ljavax/lang/model/element/Element;

    iput-object p2, p0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;->aArguments:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    iput-object p3, p0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;->b:Ljavax/lang/model/element/Element;

    iput-object p4, p0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;->bArguments:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 144
    instance-of v0, p1, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 145
    check-cast p1, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;

    iget-object v0, p0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;->aArguments:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 146
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v0

    iget-object v2, p0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;->a:Ljavax/lang/model/element/Element;

    .line 147
    iget-object v3, p1, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;->a:Ljavax/lang/model/element/Element;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;->b:Ljavax/lang/model/element/Element;

    iget-object p1, p1, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;->b:Ljavax/lang/model/element/Element;

    .line 148
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;->bArguments:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 149
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result p1

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    move p1, v1

    :goto_0
    if-ge p1, v0, :cond_2

    iget-object v2, p0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;->aArguments:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 154
    invoke-virtual {v2, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;->bArguments:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-virtual {v3, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;->a:Ljavax/lang/model/element/Element;

    .line 166
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;->b:Ljavax/lang/model/element/Element;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
