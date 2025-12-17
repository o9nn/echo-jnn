.class public final Lcom/tom_roush/pdfbox/pdmodel/font/FontMappers;
.super Ljava/lang/Object;
.source "FontMappers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdmodel/font/FontMappers$DefaultFontMapper;
    }
.end annotation


# static fields
.field private static instance:Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMappers;->instance:Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMappers$DefaultFontMapper;->access$000()Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMappers;->instance:Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;

    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMappers;->instance:Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;

    return-object v0
.end method

.method public static declared-synchronized set(Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;)V
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMappers;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMappers;->instance:Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
