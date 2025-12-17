.class public abstract Lcom/tom_roush/fontbox/cff/FDSelect;
.super Ljava/lang/Object;
.source "FDSelect.java"


# instance fields
.field protected final owner:Lcom/tom_roush/fontbox/cff/CFFCIDFont;


# direct methods
.method public constructor <init>(Lcom/tom_roush/fontbox/cff/CFFCIDFont;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/FDSelect;->owner:Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    return-void
.end method


# virtual methods
.method public abstract getFDIndex(I)I
.end method
