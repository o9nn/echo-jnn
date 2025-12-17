.class final Lautovalue/shaded/com/google$/auto/common/$MoreTypes$PrimitiveTypeVisitor;
.super Lautovalue/shaded/com/google$/auto/common/$MoreTypes$CastingTypeVisitor;
.source "$MoreTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/auto/common/$MoreTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrimitiveTypeVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/auto/common/$MoreTypes$CastingTypeVisitor<",
        "Ljavax/lang/model/type/PrimitiveType;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$PrimitiveTypeVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 712
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$PrimitiveTypeVisitor;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$PrimitiveTypeVisitor;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$PrimitiveTypeVisitor;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$PrimitiveTypeVisitor;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string v0, "primitive type"

    .line 715
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$CastingTypeVisitor;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$PrimitiveTypeVisitor;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$PrimitiveTypeVisitor;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$PrimitiveTypeVisitor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 711
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$PrimitiveTypeVisitor;->visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Void;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Void;)Ljavax/lang/model/type/PrimitiveType;
    .locals 0

    return-object p1
.end method
