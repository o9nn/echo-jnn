.class public Lautovalue/shaded/com/google$/common/collect/$ForwardingMap$StandardValues;
.super Lautovalue/shaded/com/google$/common/collect/$Maps$Values;
.source "$ForwardingMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ForwardingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$Maps$Values<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ForwardingMap;)V
    .locals 0

    .line 227
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$Values;-><init>(Ljava/util/Map;)V

    return-void
.end method
