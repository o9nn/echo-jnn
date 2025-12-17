.class final Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;
.super Ljava/lang/Object;
.source "CMapParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/cmap/CMapParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LiteralName"
.end annotation


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;->name:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/tom_roush/fontbox/cmap/CMapParser$1;)V
    .locals 0

    .line 820
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;)Ljava/lang/String;
    .locals 0

    .line 820
    iget-object p0, p0, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;->name:Ljava/lang/String;

    return-object p0
.end method
