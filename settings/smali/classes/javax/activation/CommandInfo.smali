.class public Ljavax/activation/CommandInfo;
.super Ljava/lang/Object;
.source "CommandInfo.java"


# instance fields
.field private className:Ljava/lang/String;

.field private verb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "verb"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Ljavax/activation/CommandInfo;->verb:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Ljavax/activation/CommandInfo;->className:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public getCommandClass()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Ljavax/activation/CommandInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Ljavax/activation/CommandInfo;->verb:Ljava/lang/String;

    return-object v0
.end method

.method public getCommandObject(Ljavax/activation/DataHandler;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 4
    .param p1, "dh"    # Ljavax/activation/DataHandler;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    .line 132
    .local v0, "new_bean":Ljava/lang/Object;
    iget-object v1, p0, Ljavax/activation/CommandInfo;->className:Ljava/lang/String;

    invoke-static {p2, v1}, Ljava/beans/Beans;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_1

    .line 136
    instance-of v1, v0, Ljavax/activation/CommandObject;

    if-eqz v1, :cond_0

    .line 137
    move-object v1, v0

    check-cast v1, Ljavax/activation/CommandObject;

    iget-object v2, p0, Ljavax/activation/CommandInfo;->verb:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljavax/activation/CommandObject;->setCommandContext(Ljava/lang/String;Ljavax/activation/DataHandler;)V

    goto :goto_0

    .line 138
    :cond_0
    instance-of v1, v0, Ljava/io/Externalizable;

    if-eqz v1, :cond_1

    .line 139
    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p1}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 141
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 142
    move-object v2, v0

    check-cast v2, Ljava/io/Externalizable;

    .line 143
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 142
    invoke-interface {v2, v3}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V

    .line 149
    .end local v1
    :cond_1
    :goto_0
    return-object v0
.end method
