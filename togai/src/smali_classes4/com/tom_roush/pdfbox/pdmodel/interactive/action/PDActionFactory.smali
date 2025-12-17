.class public final Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionFactory;
.super Ljava/lang/Object;
.source "PDActionFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAction(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;
    .locals 2

    if-eqz p0, :cond_d

    .line 51
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavaScript"

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionJavaScript;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionJavaScript;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "GoTo"

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionGoTo;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionGoTo;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "Launch"

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "GoToR"

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionRemoteGoTo;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionRemoteGoTo;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "URI"

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionURI;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionURI;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "Named"

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 74
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionNamed;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionNamed;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "Sound"

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 78
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionSound;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionSound;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_6
    const-string v1, "Movie"

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 82
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionMovie;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionMovie;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_7
    const-string v1, "ImportData"

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 86
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionImportData;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionImportData;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_8
    const-string v1, "ResetForm"

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 90
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionResetForm;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionResetForm;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_9
    const-string v1, "Hide"

    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 94
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionHide;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionHide;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_a
    const-string v1, "SubmitForm"

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 98
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionSubmitForm;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionSubmitForm;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_b
    const-string v1, "Thread"

    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 102
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionThread;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionThread;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_c
    const-string v1, "GoToE"

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 106
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionEmbeddedGoTo;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionEmbeddedGoTo;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_d
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
