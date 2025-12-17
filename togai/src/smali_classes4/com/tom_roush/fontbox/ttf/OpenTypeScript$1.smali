.class Lcom/tom_roush/fontbox/ttf/OpenTypeScript$1;
.super Ljava/lang/Object;
.source "OpenTypeScript.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tom_roush/fontbox/ttf/OpenTypeScript;->parseScriptsFile(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[I>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 262
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/fontbox/ttf/OpenTypeScript$1;->compare([I[I)I

    move-result p1

    return p1
.end method

.method public compare([I[I)I
    .locals 1

    const/4 v0, 0x0

    .line 266
    aget p1, p1, v0

    aget p2, p2, v0

    if-ge p1, p2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
