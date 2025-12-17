.class public final enum Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;
.super Ljava/lang/Enum;
.source "ByteBuddyAgent.java"

# interfaces
.implements Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForUserDefinedToolsJar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;",
        ">;",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;

.field public static final PROPERTY:Ljava/lang/String; = "net.bytebuddy.agent.toolsjar"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 927
    new-instance v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;

    filled-new-array {v0}, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 922
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;

    .line 922
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;

    .line 922
    invoke-virtual {v0}, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;

    return-object v0
.end method


# virtual methods
.method public attempt()Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;
    .locals 6

    const-string v0, "net.bytebuddy.agent.toolsjar"

    .line 939
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 941
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;

    return-object v0

    .line 943
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 945
    :try_start_0
    new-instance v0, Ljava/net/URLClassLoader;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/net/URL;

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->access$000()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    new-array v2, v2, [Ljava/io/File;

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Simple;->of(Ljava/lang/ClassLoader;[Ljava/io/File;)Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 947
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not represent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as URL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
