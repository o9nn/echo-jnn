.class final Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IntersectionTypeVisitor;
.super Lautovalue/shaded/com/google$/auto/common/$MoreTypes$CastingTypeVisitor;
.source "$MoreTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/auto/common/$MoreTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntersectionTypeVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/auto/common/$MoreTypes$CastingTypeVisitor<",
        "Ljavax/lang/model/type/IntersectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IntersectionTypeVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 649
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IntersectionTypeVisitor;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IntersectionTypeVisitor;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IntersectionTypeVisitor;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IntersectionTypeVisitor;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string v0, "intersection type"

    .line 652
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$CastingTypeVisitor;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IntersectionTypeVisitor;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IntersectionTypeVisitor;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IntersectionTypeVisitor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic visitIntersection(Ljavax/lang/model/type/IntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 648
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IntersectionTypeVisitor;->visitIntersection(Ljavax/lang/model/type/IntersectionType;Ljava/lang/Void;)Ljavax/lang/model/type/IntersectionType;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection(Ljavax/lang/model/type/IntersectionType;Ljava/lang/Void;)Ljavax/lang/model/type/IntersectionType;
    .locals 0

    return-object p1
.end method
