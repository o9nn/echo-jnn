.class Lcom/tom_roush/fontbox/cff/Type1CharString$1;
.super Lcom/tom_roush/fontbox/cff/CharStringHandler;
.source "Type1CharString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tom_roush/fontbox/cff/Type1CharString;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tom_roush/fontbox/cff/Type1CharString;


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/cff/Type1CharString;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString$1;->this$0:Lcom/tom_roush/fontbox/cff/Type1CharString;

    .line 146
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/CharStringHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;",
            "Lcom/tom_roush/fontbox/cff/CharStringCommand;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString$1;->this$0:Lcom/tom_roush/fontbox/cff/Type1CharString;

    .line 150
    invoke-static {v0, p1, p2}, Lcom/tom_roush/fontbox/cff/Type1CharString;->access$000(Lcom/tom_roush/fontbox/cff/Type1CharString;Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
