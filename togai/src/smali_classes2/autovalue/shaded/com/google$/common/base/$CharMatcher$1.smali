.class Lautovalue/shaded/com/google$/common/base/$CharMatcher$1;
.super Lautovalue/shaded/com/google$/common/base/$CharMatcher$NegatedFastMatcher;
.source "$CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/base/$CharMatcher;->precomputedInternal()Lautovalue/shaded/com/google$/common/base/$CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$description:Ljava/lang/String;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/base/$CharMatcher;Lautovalue/shaded/com/google$/common/base/$CharMatcher;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lautovalue/shaded/com/google$/common/base/$CharMatcher$1;->val$description:Ljava/lang/String;

    .line 432
    invoke-direct {p0, p2}, Lautovalue/shaded/com/google$/common/base/$CharMatcher$NegatedFastMatcher;-><init>(Lautovalue/shaded/com/google$/common/base/$CharMatcher;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$CharMatcher$1;->val$description:Ljava/lang/String;

    return-object v0
.end method
