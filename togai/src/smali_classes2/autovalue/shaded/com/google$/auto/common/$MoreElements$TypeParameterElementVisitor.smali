.class final Lautovalue/shaded/com/google$/auto/common/$MoreElements$TypeParameterElementVisitor;
.super Lautovalue/shaded/com/google$/auto/common/$MoreElements$CastingElementVisitor;
.source "$MoreElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/auto/common/$MoreElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeParameterElementVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/auto/common/$MoreElements$CastingElementVisitor<",
        "Ljavax/lang/model/element/TypeParameterElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreElements$TypeParameterElementVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$MoreElements$TypeParameterElementVisitor;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements$TypeParameterElementVisitor;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreElements$TypeParameterElementVisitor;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreElements$TypeParameterElementVisitor;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string/jumbo v0, "type parameter element"

    .line 152
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements$CastingElementVisitor;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Lautovalue/shaded/com/google$/auto/common/$MoreElements$TypeParameterElementVisitor;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreElements$TypeParameterElementVisitor;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreElements$TypeParameterElementVisitor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic visitTypeParameter(Ljavax/lang/model/element/TypeParameterElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 147
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreElements$TypeParameterElementVisitor;->visitTypeParameter(Ljavax/lang/model/element/TypeParameterElement;Ljava/lang/Void;)Ljavax/lang/model/element/TypeParameterElement;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeParameter(Ljavax/lang/model/element/TypeParameterElement;Ljava/lang/Void;)Ljavax/lang/model/element/TypeParameterElement;
    .locals 0

    return-object p1
.end method
