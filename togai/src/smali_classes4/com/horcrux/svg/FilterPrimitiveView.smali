.class Lcom/horcrux/svg/FilterPrimitiveView;
.super Lcom/horcrux/svg/DefinitionView;
.source "FilterPrimitiveView.java"


# instance fields
.field public final mFilterSubregion:Lcom/horcrux/svg/FilterRegion;

.field private mResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/horcrux/svg/DefinitionView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 16
    new-instance p1, Lcom/horcrux/svg/FilterRegion;

    invoke-direct {p1}, Lcom/horcrux/svg/FilterRegion;-><init>()V

    iput-object p1, p0, Lcom/horcrux/svg/FilterPrimitiveView;->mFilterSubregion:Lcom/horcrux/svg/FilterRegion;

    return-void
.end method

.method protected static getSource(Ljava/util/HashMap;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    move-object p1, p0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public applyFilter(Ljava/util/HashMap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/horcrux/svg/FilterPrimitiveView;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method saveDefinition()V
    .locals 0

    return-void
.end method

.method public setHeight(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1

    iget-object v0, p0, Lcom/horcrux/svg/FilterPrimitiveView;->mFilterSubregion:Lcom/horcrux/svg/FilterRegion;

    .line 35
    invoke-virtual {v0, p1}, Lcom/horcrux/svg/FilterRegion;->setHeight(Lcom/facebook/react/bridge/Dynamic;)V

    .line 36
    invoke-virtual {p0}, Lcom/horcrux/svg/FilterPrimitiveView;->invalidate()V

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/horcrux/svg/FilterPrimitiveView;->mResult:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/horcrux/svg/FilterPrimitiveView;->invalidate()V

    return-void
.end method

.method public setWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1

    iget-object v0, p0, Lcom/horcrux/svg/FilterPrimitiveView;->mFilterSubregion:Lcom/horcrux/svg/FilterRegion;

    .line 30
    invoke-virtual {v0, p1}, Lcom/horcrux/svg/FilterRegion;->setWidth(Lcom/facebook/react/bridge/Dynamic;)V

    .line 31
    invoke-virtual {p0}, Lcom/horcrux/svg/FilterPrimitiveView;->invalidate()V

    return-void
.end method

.method public setX(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1

    iget-object v0, p0, Lcom/horcrux/svg/FilterPrimitiveView;->mFilterSubregion:Lcom/horcrux/svg/FilterRegion;

    .line 20
    invoke-virtual {v0, p1}, Lcom/horcrux/svg/FilterRegion;->setX(Lcom/facebook/react/bridge/Dynamic;)V

    .line 21
    invoke-virtual {p0}, Lcom/horcrux/svg/FilterPrimitiveView;->invalidate()V

    return-void
.end method

.method public setY(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1

    iget-object v0, p0, Lcom/horcrux/svg/FilterPrimitiveView;->mFilterSubregion:Lcom/horcrux/svg/FilterRegion;

    .line 25
    invoke-virtual {v0, p1}, Lcom/horcrux/svg/FilterRegion;->setY(Lcom/facebook/react/bridge/Dynamic;)V

    .line 26
    invoke-virtual {p0}, Lcom/horcrux/svg/FilterPrimitiveView;->invalidate()V

    return-void
.end method
