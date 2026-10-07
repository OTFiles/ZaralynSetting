.class public abstract Ljavax/activation/CommandMap;
.super Ljava/lang/Object;
.source "CommandMap.java"


# static fields
.field private static defaultCommandMap:Ljavax/activation/CommandMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    sput-object v0, Ljavax/activation/CommandMap;->defaultCommandMap:Ljavax/activation/CommandMap;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultCommandMap()Ljavax/activation/CommandMap;
    .locals 1

    .line 73
    sget-object v0, Ljavax/activation/CommandMap;->defaultCommandMap:Ljavax/activation/CommandMap;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljavax/activation/MailcapCommandMap;

    invoke-direct {v0}, Ljavax/activation/MailcapCommandMap;-><init>()V

    sput-object v0, Ljavax/activation/CommandMap;->defaultCommandMap:Ljavax/activation/CommandMap;

    .line 76
    :cond_0
    sget-object v0, Ljavax/activation/CommandMap;->defaultCommandMap:Ljavax/activation/CommandMap;

    return-object v0
.end method

.method public static setDefaultCommandMap(Ljavax/activation/CommandMap;)V
    .locals 4
    .param p0, "commandMap"    # Ljavax/activation/CommandMap;

    .line 88
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 89
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    .line 92
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 97
    .local v1, "ex":Ljava/lang/SecurityException;
    const-class v2, Ljavax/activation/CommandMap;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 97
    if-ne v2, v3, :cond_0

    .end local v1
    goto :goto_0

    .line 99
    .restart local v1
    :cond_0
    throw v1

    .line 102
    .end local v1
    :cond_1
    :goto_0
    sput-object p0, Ljavax/activation/CommandMap;->defaultCommandMap:Ljavax/activation/CommandMap;

    .line 103
    return-void
.end method


# virtual methods
.method public abstract createDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
.end method

.method public createDataContentHandler(Ljava/lang/String;Ljavax/activation/DataSource;)Ljavax/activation/DataContentHandler;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "ds"    # Ljavax/activation/DataSource;

    .line 219
    invoke-virtual {p0, p1}, Ljavax/activation/CommandMap;->createDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAllCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;
.end method

.method public getAllCommands(Ljava/lang/String;Ljavax/activation/DataSource;)[Ljavax/activation/CommandInfo;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "ds"    # Ljavax/activation/DataSource;

    .line 158
    invoke-virtual {p0, p1}, Ljavax/activation/CommandMap;->getAllCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCommand(Ljava/lang/String;Ljava/lang/String;)Ljavax/activation/CommandInfo;
.end method

.method public getCommand(Ljava/lang/String;Ljava/lang/String;Ljavax/activation/DataSource;)Ljavax/activation/CommandInfo;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "cmdName"    # Ljava/lang/String;
    .param p3, "ds"    # Ljavax/activation/DataSource;

    .line 187
    invoke-virtual {p0, p1, p2}, Ljavax/activation/CommandMap;->getCommand(Ljava/lang/String;Ljava/lang/String;)Ljavax/activation/CommandInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMimeTypes()[Ljava/lang/String;
    .locals 1

    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPreferredCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;
.end method

.method public getPreferredCommands(Ljava/lang/String;Ljavax/activation/DataSource;)[Ljavax/activation/CommandInfo;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "ds"    # Ljavax/activation/DataSource;

    .line 130
    invoke-virtual {p0, p1}, Ljavax/activation/CommandMap;->getPreferredCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;

    move-result-object v0

    return-object v0
.end method
