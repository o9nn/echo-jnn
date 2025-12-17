.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;
.source "PDActionLaunch.java"


# static fields
.field public static final SUB_TYPE:Ljava/lang/String; = "Launch"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;-><init>()V

    const-string v0, "Launch"

    .line 46
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;->setSubType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method public getD()Ljava/lang/String;
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getF()Ljava/lang/String;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;->createFS(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;

    move-result-object v0

    return-object v0
.end method

.method public getO()Ljava/lang/String;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->O:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpenInNewWindow()Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;
    .locals 2

    .line 249
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NEW_WINDOW:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    instance-of v0, v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NEW_WINDOW:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;

    .line 252
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSBoolean;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;->NEW_WINDOW:Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;->SAME_WINDOW:Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;

    :goto_0
    return-object v0

    .line 254
    :cond_1
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;->USER_PREFERENCE:Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;

    return-object v0
.end method

.method public getP()Ljava/lang/String;
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWinLaunchParams()Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDWindowsLaunchParams;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "Win"

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 100
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDWindowsLaunchParams;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDWindowsLaunchParams;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public setD(Ljava/lang/String;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setF(Ljava/lang/String;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setFile(Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;)V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setO(Ljava/lang/String;)V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->O:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setOpenInNewWindow(Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;)V
    .locals 2

    if-nez p1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->NEW_WINDOW:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    return-void

    .line 269
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch$1;->$SwitchMap$com$tom_roush$pdfbox$pdmodel$interactive$action$OpenMode:[I

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NEW_WINDOW:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    goto :goto_0

    .line 275
    :cond_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->NEW_WINDOW:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    goto :goto_0

    .line 272
    :cond_3
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->NEW_WINDOW:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    :goto_0
    return-void
.end method

.method public setOpenInNewWindow(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NEW_WINDOW:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setP(Ljava/lang/String;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setWinLaunchParams(Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDWindowsLaunchParams;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "Win"

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public shouldOpenInNewWindow()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionLaunch;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NEW_WINDOW:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method
