.class final Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$ValuePredicate;
.super Ljava/lang/Object;
.source "$FilteredEntryMultimap.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/base/$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValuePredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lautovalue/shaded/com/google$/common/base/$Predicate<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$ValuePredicate;->this$0:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$ValuePredicate;->key:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$ValuePredicate;->this$0:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$ValuePredicate;->key:Ljava/lang/Object;

    .line 82
    invoke-static {v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;->access$000(Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
