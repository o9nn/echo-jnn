.class final Lautovalue/shaded/com/google$/auto/common/$MoreElements$PackageElementVisitor;
.super Lautovalue/shaded/com/google$/auto/common/$MoreElements$CastingElementVisitor;
.source "$MoreElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/auto/common/$MoreElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageElementVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/auto/common/$MoreElements$CastingElementVisitor<",
        "Ljavax/lang/model/element/PackageElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreElements$PackageElementVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$MoreElements$PackageElementVisitor;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements$PackageElementVisitor;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreElements$PackageElementVisitor;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreElements$PackageElementVisitor;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string v0, "package element"

    .line 74
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements$CastingElementVisitor;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Lautovalue/shaded/com/google$/auto/common/$MoreElements$PackageElementVisitor;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreElements$PackageElementVisitor;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreElements$PackageElementVisitor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreElements$PackageElementVisitor;->visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Void;)Ljavax/lang/model/element/PackageElement;

    move-result-object p1

    return-object p1
.end method

.method public visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Void;)Ljavax/lang/model/element/PackageElement;
    .locals 0

    return-object p1
.end method
