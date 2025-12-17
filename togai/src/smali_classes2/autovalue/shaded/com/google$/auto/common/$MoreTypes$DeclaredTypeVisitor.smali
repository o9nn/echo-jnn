.class final Lautovalue/shaded/com/google$/auto/common/$MoreTypes$DeclaredTypeVisitor;
.super Lautovalue/shaded/com/google$/auto/common/$MoreTypes$CastingTypeVisitor;
.source "$MoreTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/auto/common/$MoreTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeclaredTypeVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/auto/common/$MoreTypes$CastingTypeVisitor<",
        "Ljavax/lang/model/type/DeclaredType;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$DeclaredTypeVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 586
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$DeclaredTypeVisitor;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$DeclaredTypeVisitor;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$DeclaredTypeVisitor;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$DeclaredTypeVisitor;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string v0, "declared type"

    .line 589
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$CastingTypeVisitor;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$DeclaredTypeVisitor;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$DeclaredTypeVisitor;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$DeclaredTypeVisitor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 585
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$DeclaredTypeVisitor;->visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Void;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Void;)Ljavax/lang/model/type/DeclaredType;
    .locals 0

    return-object p1
.end method
