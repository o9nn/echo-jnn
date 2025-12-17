.class final Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ErrorTypeVisitor;
.super Lautovalue/shaded/com/google$/auto/common/$MoreTypes$CastingTypeVisitor;
.source "$MoreTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/auto/common/$MoreTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ErrorTypeVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/auto/common/$MoreTypes$CastingTypeVisitor<",
        "Ljavax/lang/model/type/ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ErrorTypeVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 607
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ErrorTypeVisitor;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ErrorTypeVisitor;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ErrorTypeVisitor;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ErrorTypeVisitor;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string v0, "error type"

    .line 610
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$CastingTypeVisitor;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ErrorTypeVisitor;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ErrorTypeVisitor;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ErrorTypeVisitor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic visitError(Ljavax/lang/model/type/ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 606
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ErrorTypeVisitor;->visitError(Ljavax/lang/model/type/ErrorType;Ljava/lang/Void;)Ljavax/lang/model/type/ErrorType;

    move-result-object p1

    return-object p1
.end method

.method public visitError(Ljavax/lang/model/type/ErrorType;Ljava/lang/Void;)Ljavax/lang/model/type/ErrorType;
    .locals 0

    return-object p1
.end method
