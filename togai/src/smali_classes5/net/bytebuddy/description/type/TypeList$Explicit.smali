.class public Lnet/bytebuddy/description/type/TypeList$Explicit;
.super Lnet/bytebuddy/description/type/TypeList$AbstractBase;
.source "TypeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Explicit"
.end annotation


# instance fields
.field private final typeDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)V"
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeList$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeList$Explicit;->typeDescriptions:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    .line 169
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 156
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeList$Explicit;->get(I)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Explicit;->typeDescriptions:Ljava/util/List;

    .line 185
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription;

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Explicit;->typeDescriptions:Ljava/util/List;

    .line 192
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
