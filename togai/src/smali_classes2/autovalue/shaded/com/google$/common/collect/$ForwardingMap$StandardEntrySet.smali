.class public abstract Lautovalue/shaded/com/google$/common/collect/$ForwardingMap$StandardEntrySet;
.super Lautovalue/shaded/com/google$/common/collect/$Maps$EntrySet;
.source "$ForwardingMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ForwardingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "StandardEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$Maps$EntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$ForwardingMap;


# direct methods
.method public constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ForwardingMap;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ForwardingMap$StandardEntrySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$ForwardingMap;

    .line 254
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ForwardingMap$StandardEntrySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$ForwardingMap;

    return-object v0
.end method
