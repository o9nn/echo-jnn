.class Lcom/tom_roush/fontbox/cff/CFFType1Font$PrivateType1CharStringReader;
.super Ljava/lang/Object;
.source "CFFType1Font.java"

# interfaces
.implements Lcom/tom_roush/fontbox/type1/Type1CharStringReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/cff/CFFType1Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateType1CharStringReader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tom_roush/fontbox/cff/CFFType1Font;


# direct methods
.method private constructor <init>(Lcom/tom_roush/fontbox/cff/CFFType1Font;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font$PrivateType1CharStringReader;->this$0:Lcom/tom_roush/fontbox/cff/CFFType1Font;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/fontbox/cff/CFFType1Font;Lcom/tom_roush/fontbox/cff/CFFType1Font$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFType1Font$PrivateType1CharStringReader;-><init>(Lcom/tom_roush/fontbox/cff/CFFType1Font;)V

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

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font$PrivateType1CharStringReader;->this$0:Lcom/tom_roush/fontbox/cff/CFFType1Font;

    .line 55
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cff/CFFType1Font;->getType1CharString(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/Type1CharString;

    move-result-object p1

    return-object p1
.end method
