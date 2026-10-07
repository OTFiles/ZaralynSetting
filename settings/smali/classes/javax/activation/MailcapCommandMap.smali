.class public Ljavax/activation/MailcapCommandMap;
.super Ljavax/activation/CommandMap;
.source "MailcapCommandMap.java"


# static fields
.field private static final PROG:I

.field private static defDB:Lcom/sun/activation/registries/MailcapFile;


# instance fields
.field private DB:[Lcom/sun/activation/registries/MailcapFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 140
    const/4 v0, 0x0

    sput-object v0, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/sun/activation/registries/MailcapFile;

    .line 133
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 148
    invoke-direct {p0}, Ljavax/activation/CommandMap;-><init>()V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    .local v0, "dbv":Ljava/util/List;
    const/4 v1, 0x0

    .line 151
    .local v1, "mf":Lcom/sun/activation/registries/MailcapFile;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    const-string v2, "MailcapCommandMap: load HOME"

    invoke-static {v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 155
    :try_start_0
    const-string v2, "user.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "user_home":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mailcap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "path":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljavax/activation/MailcapCommandMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;

    move-result-object v4

    move-object v1, v4

    .line 160
    if-eqz v1, :cond_0

    .line 161
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v2
    :catch_0
    move-exception v2

    .line 165
    :cond_0
    :goto_0
    const-string v2, "MailcapCommandMap: load SYS"

    invoke-static {v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 168
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "java.home"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mailcap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "system_mailcap":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljavax/activation/MailcapCommandMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;

    move-result-object v3

    move-object v1, v3

    .line 171
    if-eqz v1, :cond_1

    .line 172
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 173
    .end local v2
    :catch_1
    move-exception v2

    .line 175
    :cond_1
    :goto_1
    const-string v2, "MailcapCommandMap: load JAR"

    invoke-static {v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 177
    const-string v2, "mailcap"

    invoke-direct {p0, v0, v2}, Ljavax/activation/MailcapCommandMap;->loadAllResources(Ljava/util/List;Ljava/lang/String;)V

    .line 179
    const-string v2, "MailcapCommandMap: load DEF"

    invoke-static {v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 180
    const-class v2, Ljavax/activation/MailcapCommandMap;

    monitor-enter v2

    .line 182
    :try_start_2
    sget-object v3, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/sun/activation/registries/MailcapFile;

    if-nez v3, :cond_2

    .line 183
    const-string v3, "mailcap.default"

    invoke-direct {p0, v3}, Ljavax/activation/MailcapCommandMap;->loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;

    move-result-object v3

    sput-object v3, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/sun/activation/registries/MailcapFile;

    .line 180
    :cond_2
    monitor-exit v2

    .line 186
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v2, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/sun/activation/registries/MailcapFile;

    if-eqz v2, :cond_3

    .line 187
    sget-object v2, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/sun/activation/registries/MailcapFile;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sun/activation/registries/MailcapFile;

    iput-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    .line 190
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sun/activation/registries/MailcapFile;

    iput-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    .line 191
    return-void

    .line 180
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;

    .line 336
    invoke-direct {p0}, Ljavax/activation/MailcapCommandMap;-><init>()V

    .line 338
    const-string v0, "MailcapCommandMap: load PROG"

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 341
    :try_start_0
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    new-instance v2, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v2, p1}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/io/InputStream;)V

    aput-object v2, v0, v1

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 346
    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    invoke-direct {p0}, Ljavax/activation/MailcapCommandMap;-><init>()V

    .line 321
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MailcapCommandMap: load PROG from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 323
    :cond_0
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 324
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    new-instance v2, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v2, p1}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 326
    :cond_1
    return-void
.end method

.method private appendCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    .locals 6
    .param p1, "typeHash"    # Ljava/util/Map;
    .param p2, "cmdList"    # Ljava/util/List;

    .line 459
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 461
    .local v0, "verb_enum":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 472
    return-void

    .line 462
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 463
    .local v1, "verb":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 464
    .local v2, "cmdList2":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 466
    .local v3, "cmd_enum":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .end local v1
    .end local v2
    .end local v3
    goto :goto_0

    .line 467
    .restart local v1
    .restart local v2
    .restart local v3
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 468
    .local v4, "cmd":Ljava/lang/String;
    new-instance v5, Ljavax/activation/CommandInfo;

    invoke-direct {v5, v1, v4}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v4
    goto :goto_1
.end method

.method private appendPrefCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    .locals 5
    .param p1, "cmdHash"    # Ljava/util/Map;
    .param p2, "cmdList"    # Ljava/util/List;

    .line 393
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 395
    .local v0, "verb_enum":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 403
    return-void

    .line 396
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 397
    .local v1, "verb":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Ljavax/activation/MailcapCommandMap;->checkForVerb(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 398
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 399
    .local v2, "cmdList2":Ljava/util/List;
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 400
    .local v3, "className":Ljava/lang/String;
    new-instance v4, Ljavax/activation/CommandInfo;

    invoke-direct {v4, v1, v3}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1
    .end local v2
    .end local v3
    goto :goto_0
.end method

.method private checkForVerb(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cmdList"    # Ljava/util/List;
    .param p2, "verb"    # Ljava/lang/String;

    .line 410
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 411
    .local v0, "ee":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 417
    const/4 v1, 0x0

    return v1

    .line 413
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/activation/CommandInfo;

    invoke-virtual {v1}, Ljavax/activation/CommandInfo;->getCommandName()Ljava/lang/String;

    move-result-object v1

    .line 412
    nop

    .line 414
    .local v1, "enum_verb":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    const/4 v2, 0x1

    return v2
.end method

.method private getDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 591
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    const-string v0, "    got content-handler"

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 593
    :cond_0
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "      class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 596
    :cond_1
    const/4 v0, 0x0

    .line 598
    .local v0, "cld":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v0, v2

    .line 599
    if-nez v0, :cond_2

    .line 600
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    .line 601
    :cond_2
    move-object v2, v1

    .line 603
    .local v2, "cl":Ljava/lang/Class;
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    goto :goto_0

    .line 604
    :catch_0
    move-exception v3

    .line 606
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v2, v4

    .line 608
    .end local v3
    :goto_0
    if-eqz v2, :cond_3

    .line 609
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/activation/DataContentHandler;

    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v3

    .line 616
    .end local v0
    .end local v2
    :catch_1
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t load DCH "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0
    goto :goto_1

    .line 613
    :catch_2
    move-exception v0

    .line 614
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t load DCH "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0
    goto :goto_1

    .line 610
    :catch_3
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t load DCH "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 620
    .end local v0
    :cond_3
    :goto_1
    return-object v1
.end method

.method private loadAllResources(Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .param p1, "v"    # Ljava/util/List;
    .param p2, "name"    # Ljava/lang/String;

    .line 230
    const/4 v0, 0x0

    .line 233
    .local v0, "anyLoaded":Z
    const/4 v1, 0x0

    .line 235
    .local v1, "cld":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v1, v2

    .line 236
    if-nez v1, :cond_0

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v1, v2

    .line 238
    :cond_0
    if-eqz v1, :cond_1

    .line 239
    invoke-static {v1, p2}, Ljavax/activation/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v2

    .local v2, "urls":[Ljava/net/URL;
    goto :goto_0

    .line 241
    .end local v2
    :cond_1
    invoke-static {p2}, Ljavax/activation/SecuritySupport;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v2

    .line 242
    .restart local v2
    :goto_0
    if-eqz v2, :cond_b

    .line 243
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    const-string v3, "MailcapCommandMap: getResources"

    invoke-static {v3}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 245
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-lt v3, v4, :cond_3

    .end local v3
    goto/16 :goto_6

    .line 246
    .restart local v3
    :cond_3
    aget-object v4, v2, v3

    .line 247
    .local v4, "url":Ljava/net/URL;
    const/4 v5, 0x0

    .line 248
    .local v5, "clis":Ljava/io/InputStream;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 249
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MailcapCommandMap: URL "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 251
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :cond_4
    :try_start_1
    invoke-static {v4}, Ljavax/activation/SecuritySupport;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v6

    move-object v5, v6

    .line 252
    if-eqz v5, :cond_5

    .line 253
    new-instance v6, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v6, v5}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    const/4 v0, 0x1

    .line 255
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 256
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MailcapCommandMap: successfully loaded mailcap file from URL: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 261
    :cond_5
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 262
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MailcapCommandMap: not loading mailcap file from URL: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 276
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_2
    if-eqz v5, :cond_9

    .line 277
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_3

    .line 278
    :catch_0
    move-exception v6

    .end local v4
    .end local v5
    goto :goto_3

    .line 274
    .restart local v4
    .restart local v5
    :catchall_0
    move-exception v6

    goto :goto_4

    .line 270
    :catch_1
    move-exception v6

    .line 271
    .local v6, "sex":Ljava/lang/SecurityException;
    :try_start_3
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 272
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MailcapCommandMap: can\'t load "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 273
    nop

    .line 272
    invoke-static {v7, v6}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    .end local v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    if-eqz v5, :cond_9

    .line 277
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    .line 278
    :catch_2
    move-exception v6

    goto :goto_3

    .line 266
    :catch_3
    move-exception v6

    .line 267
    .local v6, "ioex":Ljava/io/IOException;
    :try_start_5
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 268
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MailcapCommandMap: can\'t load "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 269
    nop

    .line 268
    invoke-static {v7, v6}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    .end local v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    if-eqz v5, :cond_9

    .line 277
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 245
    .end local v4
    .end local v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :cond_9
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 274
    .restart local v4
    .restart local v5
    :goto_4
    nop

    .line 276
    if-eqz v5, :cond_a

    .line 277
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    .line 278
    :catch_4
    move-exception v7

    .line 279
    :cond_a
    :goto_5
    :try_start_8
    throw v6

    .line 282
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    move-exception v1

    .line 283
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MailcapCommandMap: can\'t load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    .end local v1
    :cond_b
    :goto_6
    if-nez v0, :cond_d

    .line 289
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 290
    const-string v1, "MailcapCommandMap: !anyLoaded"

    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 291
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavax/activation/MailcapCommandMap;->loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;

    move-result-object v1

    .line 292
    .local v1, "mf":Lcom/sun/activation/registries/MailcapFile;
    if-eqz v1, :cond_d

    .line 293
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    .end local v1
    :cond_d
    return-void
.end method

.method private loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 301
    const/4 v0, 0x0

    .line 304
    .local v0, "mtf":Lcom/sun/activation/registries/MailcapFile;
    :try_start_0
    new-instance v1, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v1, p1}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/lang/String;)V

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 305
    :catch_0
    move-exception v1

    .line 308
    :goto_0
    return-object v0
.end method

.method private loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 197
    const/4 v0, 0x0

    move-object v1, v0

    .line 199
    .local v1, "clis":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1}, Ljavax/activation/SecuritySupport;->getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 200
    if-eqz v1, :cond_2

    .line 201
    new-instance v2, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v2, v1}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/io/InputStream;)V

    .line 202
    .local v2, "mf":Lcom/sun/activation/registries/MailcapFile;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MailcapCommandMap: successfully loaded mailcap file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 205
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    nop

    .line 219
    if-eqz v1, :cond_1

    .line 220
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 205
    :cond_1
    :goto_0
    return-object v2

    .line 207
    .end local v2
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MailcapCommandMap: not loading mailcap file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 219
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    if-eqz v1, :cond_6

    .line 220
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 221
    :catch_1
    move-exception v2

    goto :goto_1

    .line 217
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 214
    :catch_2
    move-exception v2

    .line 215
    .local v2, "sex":Ljava/lang/SecurityException;
    :try_start_4
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MailcapCommandMap: can\'t load "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    .end local v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    if-eqz v1, :cond_6

    .line 220
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 211
    :catch_3
    move-exception v2

    .line 212
    .local v2, "e":Ljava/io/IOException;
    :try_start_6
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MailcapCommandMap: can\'t load "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    .end local v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    if-eqz v1, :cond_6

    .line 220
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 223
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_6
    :goto_1
    return-object v0

    .line 217
    :goto_2
    nop

    .line 219
    if-eqz v1, :cond_7

    .line 220
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 221
    :catch_4
    move-exception v2

    .line 222
    :cond_7
    :goto_3
    throw v0
.end method


# virtual methods
.method public declared-synchronized addMailcap(Ljava/lang/String;)V
    .locals 3
    .param p1, "mail_cap"    # Ljava/lang/String;

    monitor-enter p0

    .line 532
    :try_start_0
    const-string v0, "MailcapCommandMap: add to PROG"

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    new-instance v2, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v2}, Lcom/sun/activation/registries/MailcapFile;-><init>()V

    aput-object v2, v0, v1

    .line 536
    :cond_0
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sun/activation/registries/MailcapFile;->appendToMailcap(Ljava/lang/String;)V

    .line 537
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 531
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized createDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
    .locals 6
    .param p1, "mimeType"    # Ljava/lang/String;

    monitor-enter p0

    .line 547
    :try_start_0
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MailcapCommandMap: createDataContentHandler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 550
    :cond_0
    if-eqz p1, :cond_1

    .line 551
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 553
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v1, v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_6

    .line 571
    .end local v0
    const/4 v0, 0x0

    .restart local v0
    :goto_1
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v1, v1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_2

    .line 587
    .end local v0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 572
    .restart local v0
    :cond_2
    :try_start_1
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 573
    goto :goto_2

    .line 574
    :cond_3
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  search fallback DB #"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 576
    :cond_4
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 577
    .local v1, "cmdMap":Ljava/util/Map;
    if-eqz v1, :cond_5

    .line 578
    const-string v3, "content-handler"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 579
    .local v3, "v":Ljava/util/List;
    if-eqz v3, :cond_5

    .line 580
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 581
    .local v4, "name":Ljava/lang/String;
    invoke-direct {p0, v4}, Ljavax/activation/MailcapCommandMap;->getDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;

    move-result-object v5

    .line 582
    .local v5, "dch":Ljavax/activation/DataContentHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_5

    .line 583
    monitor-exit p0

    return-object v5

    .line 571
    .end local v1
    .end local v3
    .end local v4
    .end local v5
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 554
    :cond_6
    :try_start_2
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v1, v1, v0

    if-nez v1, :cond_7

    .line 555
    goto :goto_3

    .line 556
    :cond_7
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  search DB #"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 558
    :cond_8
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 559
    .restart local v1
    if-eqz v1, :cond_9

    .line 560
    const-string v3, "content-handler"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 561
    .restart local v3
    if-eqz v3, :cond_9

    .line 562
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 563
    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljavax/activation/MailcapCommandMap;->getDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;

    move-result-object v4

    .line 564
    .local v4, "dch":Ljavax/activation/DataContentHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_9

    .line 565
    monitor-exit p0

    return-object v4

    .line 553
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    :cond_9
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 546
    .end local v0
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized getAllCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;

    monitor-enter p0

    .line 428
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v0, "cmdList":Ljava/util/List;
    if-eqz p1, :cond_0

    .line 430
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 432
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v2, v2

    if-lt v1, v2, :cond_4

    .line 441
    .end local v1
    const/4 v1, 0x0

    .restart local v1
    :goto_1
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 449
    .end local v1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/activation/CommandInfo;

    .line 450
    .local v1, "cmdInfos":[Ljavax/activation/CommandInfo;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljavax/activation/CommandInfo;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 452
    monitor-exit p0

    return-object v1

    .line 442
    .local v1, "i":I
    :cond_1
    :try_start_1
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 443
    goto :goto_2

    .line 444
    :cond_2
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 445
    .local v2, "cmdMap":Ljava/util/Map;
    if-eqz v2, :cond_3

    .line 446
    invoke-direct {p0, v2, v0}, Ljavax/activation/MailcapCommandMap;->appendCmdsToList(Ljava/util/Map;Ljava/util/List;)V

    .line 441
    .end local v2
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 433
    :cond_4
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v2, v2, v1

    if-nez v2, :cond_5

    .line 434
    goto :goto_3

    .line 435
    :cond_5
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 436
    .restart local v2
    if-eqz v2, :cond_6

    .line 437
    invoke-direct {p0, v2, v0}, Ljavax/activation/MailcapCommandMap;->appendCmdsToList(Ljava/util/Map;Ljava/util/List;)V

    .line 432
    .end local v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v0
    .end local v1
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized getCommand(Ljava/lang/String;Ljava/lang/String;)Ljavax/activation/CommandInfo;
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "cmdName"    # Ljava/lang/String;

    monitor-enter p0

    .line 483
    if-eqz p1, :cond_0

    .line 484
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    goto :goto_0

    .line 482
    .end local p1
    .end local p2
    :catchall_0
    move-exception p1

    goto :goto_5

    .line 486
    .restart local p1
    .restart local p2
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v1, v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_4

    .line 503
    .end local v0
    const/4 v0, 0x0

    .restart local v0
    :goto_2
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v1, v1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_1

    .line 518
    .end local v0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 504
    .restart local v0
    :cond_1
    :try_start_1
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 505
    goto :goto_3

    .line 506
    :cond_2
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 507
    .local v1, "cmdMap":Ljava/util/Map;
    if-eqz v1, :cond_3

    .line 509
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 510
    .local v3, "v":Ljava/util/List;
    if-eqz v3, :cond_3

    .line 511
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 513
    .local v4, "cmdClassName":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 514
    new-instance v2, Ljavax/activation/CommandInfo;

    invoke-direct {v2, p2, v4}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 503
    .end local v1
    .end local v3
    .end local v4
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 487
    :cond_4
    :try_start_2
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v1, v1, v0

    if-nez v1, :cond_5

    .line 488
    goto :goto_4

    .line 489
    :cond_5
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 490
    .restart local v1
    if-eqz v1, :cond_6

    .line 492
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 493
    .restart local v3
    if-eqz v3, :cond_6

    .line 494
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 496
    .local v2, "cmdClassName":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 497
    new-instance v4, Ljavax/activation/CommandInfo;

    invoke-direct {v4, p2, v2}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v4

    .line 486
    .end local v1
    .end local v2
    .end local v3
    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 482
    .end local v0
    .end local p1
    .end local p2
    :goto_5
    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized getMimeTypes()[Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 630
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v0, "mtList":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 645
    .end local v1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 646
    .local v1, "mts":[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 648
    monitor-exit p0

    return-object v1

    .line 633
    .local v1, "i":I
    :cond_0
    :try_start_1
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 634
    goto :goto_2

    .line 635
    :cond_1
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapFile;->getMimeTypes()[Ljava/lang/String;

    move-result-object v2

    .line 636
    .local v2, "ts":[Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 637
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, v2

    if-lt v3, v4, :cond_2

    .end local v2
    .end local v3
    goto :goto_2

    .line 639
    .restart local v2
    .restart local v3
    :cond_2
    aget-object v4, v2, v3

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 640
    aget-object v4, v2, v3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 632
    .end local v2
    .end local v3
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 629
    .end local v0
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized getNativeCommands(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;

    monitor-enter p0

    .line 666
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v0, "cmdList":Ljava/util/List;
    if-eqz p1, :cond_0

    .line 668
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 670
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 683
    .end local v1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 684
    .local v1, "cmds":[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 686
    monitor-exit p0

    return-object v1

    .line 671
    .local v1, "i":I
    :cond_1
    :try_start_1
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 672
    goto :goto_2

    .line 673
    :cond_2
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/sun/activation/registries/MailcapFile;->getNativeCommands(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 674
    .local v2, "cmds":[Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 675
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, v2

    if-lt v3, v4, :cond_3

    .end local v2
    .end local v3
    goto :goto_2

    .line 677
    .restart local v2
    .restart local v3
    :cond_3
    aget-object v4, v2, v3

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 678
    aget-object v4, v2, v3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 670
    .end local v2
    .end local v3
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 665
    .end local v0
    .end local v1
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized getPreferredCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;

    monitor-enter p0

    .line 362
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v0, "cmdList":Ljava/util/List;
    if-eqz p1, :cond_0

    .line 364
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 366
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v2, v2

    if-lt v1, v2, :cond_4

    .line 375
    .end local v1
    const/4 v1, 0x0

    .restart local v1
    :goto_1
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 383
    .end local v1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/activation/CommandInfo;

    .line 384
    .local v1, "cmdInfos":[Ljavax/activation/CommandInfo;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljavax/activation/CommandInfo;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 386
    monitor-exit p0

    return-object v1

    .line 376
    .local v1, "i":I
    :cond_1
    :try_start_1
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 377
    goto :goto_2

    .line 378
    :cond_2
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 379
    .local v2, "cmdMap":Ljava/util/Map;
    if-eqz v2, :cond_3

    .line 380
    invoke-direct {p0, v2, v0}, Ljavax/activation/MailcapCommandMap;->appendPrefCmdsToList(Ljava/util/Map;Ljava/util/List;)V

    .line 375
    .end local v2
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 367
    :cond_4
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v2, v2, v1

    if-nez v2, :cond_5

    .line 368
    goto :goto_3

    .line 369
    :cond_5
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 370
    .restart local v2
    if-eqz v2, :cond_6

    .line 371
    invoke-direct {p0, v2, v0}, Ljavax/activation/MailcapCommandMap;->appendPrefCmdsToList(Ljava/util/Map;Ljava/util/List;)V

    .line 366
    .end local v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    .end local v0
    .end local v1
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method
