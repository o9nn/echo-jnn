.class Lcom/tom_roush/fontbox/cff/CFFCIDFont$PrivateType1CharStringReader;
.super Ljava/lang/Object;
.source "CFFCIDFont.java"

# interfaces
.implements Lcom/tom_roush/fontbox/type1/Type1CharStringReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/cff/CFFCIDFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateType1CharStringReader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tom_roush/fontbox/cff/CFFCIDFont;


# direct methods
.method private constructor <init>(Lcom/tom_roush/fontbox/cff/CFFCIDFont;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont$PrivateType1CharStringReader;->this$0:Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/fontbox/cff/CFFCIDFont;Lcom/tom_roush/fontbox/cff/CFFCIDFont$1;)V
    .locals 0

    .line 290
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFCIDFont$PrivateType1CharStringReader;-><init>(Lcom/tom_roush/fontbox/cff/CFFCIDFont;)V

    return-void
.end method


# virtual methods
.method public getType1CharString(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/Type1CharString;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont$PrivateType1CharStringReader;->this$0:Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p1, v0}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->getType2CharString(I)Lcom/tom_roush/fontbox/cff/CIDKeyedType2CharString;

    move-result-object p1

    return-object p1
.end method
