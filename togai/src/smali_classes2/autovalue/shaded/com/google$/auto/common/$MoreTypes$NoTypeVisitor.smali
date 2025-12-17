.class final Lautovalue/shaded/com/google$/auto/common/$MoreTypes$NoTypeVisitor;
.super Lautovalue/shaded/com/google$/auto/common/$MoreTypes$CastingTypeVisitor;
.source "$MoreTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/auto/common/$MoreTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoTypeVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/auto/common/$MoreTypes$CastingTypeVisitor<",
        "Ljavax/lang/model/type/NoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$NoTypeVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 670
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$NoTypeVisitor;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$NoTypeVisitor;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$NoTypeVisitor;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$NoTypeVisitor;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string v0, "non-type"

    .line 673
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$CastingTypeVisitor;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$NoTypeVisitor;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$NoTypeVisitor;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$NoTypeVisitor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic visitNoType(Ljavax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 669
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$NoTypeVisitor;->visitNoType(Ljavax/lang/model/type/NoType;Ljava/lang/Void;)Ljavax/lang/model/type/NoType;

    move-result-object p1

    return-object p1
.end method

.method public visitNoType(Ljavax/lang/model/type/NoType;Ljava/lang/Void;)Ljavax/lang/model/type/NoType;
    .locals 0

    return-object p1
.end method
