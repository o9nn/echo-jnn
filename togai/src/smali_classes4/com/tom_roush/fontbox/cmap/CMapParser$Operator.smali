.class final Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;
.super Ljava/lang/Object;
.source "CMapParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/cmap/CMapParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Operator"
.end annotation


# instance fields
.field private op:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;->op:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/tom_roush/fontbox/cmap/CMapParser$1;)V
    .locals 0

    .line 833
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;)Ljava/lang/String;
    .locals 0

    .line 833
    iget-object p0, p0, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;->op:Ljava/lang/String;

    return-object p0
.end method
