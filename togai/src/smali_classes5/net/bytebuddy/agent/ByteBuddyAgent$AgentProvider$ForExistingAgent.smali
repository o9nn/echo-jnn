.class public Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;
.super Ljava/lang/Object;
.source "ByteBuddyAgent.java"

# interfaces
.implements Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForExistingAgent"
.end annotation


# instance fields
.field private agent:Ljava/io/File;


# direct methods
.method protected constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 1300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;->agent:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public resolve()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;->agent:Ljava/io/File;

    return-object v0
.end method
