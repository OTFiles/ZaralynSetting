.class public Ljavax/activation/MimetypesFileTypeMap;
.super Ljavax/activation/FileTypeMap;
.source "MimetypesFileTypeMap.java"


# static fields
.field private static final PROG:I

.field private static defDB:Lcom/sun/activation/registries/MimeTypeFile;

.field private static defaultType:Ljava/lang/String;


# instance fields
.field private DB:[Lcom/sun/activation/registries/MimeTypeFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const/4 v0, 0x0

    sput-object v0, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;

    .line 93
    const-string v0, "application/octet-stream"

    sput-object v0, Ljavax/activation/MimetypesFileTypeMap;->defaultType:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 98
    invoke-direct {p0}, Ljavax/activation/FileTypeMap;-><init>()V

    .line 99
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 100
    .local v0, "dbv":Ljava/util/Vector;
    const/4 v1, 0x0

    .line 101
    .local v1, "mf":Lcom/sun/activation/registries/MimeTypeFile;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 103
    const-string v2, "MimetypesFileTypeMap: load HOME"

    invoke-static {v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 105
    :try_start_0
    const-string v2, "user.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "user_home":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mime.types"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "path":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljavax/activation/MimetypesFileTypeMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;

    move-result-object v4

    move-object v1, v4

    .line 110
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .end local v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v2
    :catch_0
    move-exception v2

    .line 115
    :cond_0
    :goto_0
    const-string v2, "MimetypesFileTypeMap: load SYS"

    invoke-static {v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 118
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "java.home"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mime.types"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "system_mimetypes":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljavax/activation/MimetypesFileTypeMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;

    move-result-object v3

    move-object v1, v3

    .line 121
    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 123
    .end local v2
    :catch_1
    move-exception v2

    .line 125
    :cond_1
    :goto_1
    const-string v2, "MimetypesFileTypeMap: load JAR"

    invoke-static {v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 127
    const-string v2, "mime.types"

    invoke-direct {p0, v0, v2}, Ljavax/activation/MimetypesFileTypeMap;->loadAllResources(Ljava/util/Vector;Ljava/lang/String;)V

    .line 129
    const-string v2, "MimetypesFileTypeMap: load DEF"

    invoke-static {v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 130
    const-class v2, Ljavax/activation/MimetypesFileTypeMap;

    monitor-enter v2

    .line 132
    :try_start_2
    sget-object v3, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;

    if-nez v3, :cond_2

    .line 133
    const-string v3, "/mimetypes.default"

    invoke-direct {p0, v3}, Ljavax/activation/MimetypesFileTypeMap;->loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;

    move-result-object v3

    sput-object v3, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;

    .line 130
    :cond_2
    monitor-exit v2

    .line 136
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v2, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;

    if-eqz v2, :cond_3

    .line 137
    sget-object v2, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 139
    :cond_3
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sun/activation/registries/MimeTypeFile;

    iput-object v2, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    .line 140
    iget-object v2, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 141
    return-void

    .line 130
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

    .line 277
    invoke-direct {p0}, Ljavax/activation/MimetypesFileTypeMap;-><init>()V

    .line 279
    :try_start_0
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    const/4 v1, 0x0

    new-instance v2, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v2, p1}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/io/InputStream;)V

    aput-object v2, v0, v1

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 283
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "mimeTypeFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-direct {p0}, Ljavax/activation/MimetypesFileTypeMap;-><init>()V

    .line 267
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    new-instance v1, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v1, p1}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 268
    return-void
.end method

.method private loadAllResources(Ljava/util/Vector;Ljava/lang/String;)V
    .locals 9
    .param p1, "v"    # Ljava/util/Vector;
    .param p2, "name"    # Ljava/lang/String;

    .line 180
    const/4 v0, 0x0

    .line 183
    .local v0, "anyLoaded":Z
    const/4 v1, 0x0

    .line 185
    .local v1, "cld":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v1, v2

    .line 186
    if-nez v1, :cond_0

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v1, v2

    .line 188
    :cond_0
    if-eqz v1, :cond_1

    .line 189
    invoke-static {v1, p2}, Ljavax/activation/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v2

    .local v2, "urls":[Ljava/net/URL;
    goto :goto_0

    .line 191
    .end local v2
    :cond_1
    invoke-static {p2}, Ljavax/activation/SecuritySupport;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v2

    .line 192
    .restart local v2
    :goto_0
    if-eqz v2, :cond_b

    .line 193
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    const-string v3, "MimetypesFileTypeMap: getResources"

    invoke-static {v3}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 195
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-lt v3, v4, :cond_3

    .end local v3
    goto/16 :goto_6

    .line 196
    .restart local v3
    :cond_3
    aget-object v4, v2, v3

    .line 197
    .local v4, "url":Ljava/net/URL;
    const/4 v5, 0x0

    .line 198
    .local v5, "clis":Ljava/io/InputStream;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MimetypesFileTypeMap: URL "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 201
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :cond_4
    :try_start_1
    invoke-static {v4}, Ljavax/activation/SecuritySupport;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v6

    move-object v5, v6

    .line 202
    if-eqz v5, :cond_5

    .line 203
    new-instance v6, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v6, v5}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 204
    const/4 v0, 0x1

    .line 205
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MimetypesFileTypeMap: successfully loaded mime types from URL: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 210
    :cond_5
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MimetypesFileTypeMap: not loading mime types from URL: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 225
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_2
    if-eqz v5, :cond_9

    .line 226
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_3

    .line 227
    :catch_0
    move-exception v6

    .end local v4
    .end local v5
    goto :goto_3

    .line 223
    .restart local v4
    .restart local v5
    :catchall_0
    move-exception v6

    goto :goto_4

    .line 219
    :catch_1
    move-exception v6

    .line 220
    .local v6, "sex":Ljava/lang/SecurityException;
    :try_start_3
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 221
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MimetypesFileTypeMap: can\'t load "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 222
    nop

    .line 221
    invoke-static {v7, v6}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    .end local v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    if-eqz v5, :cond_9

    .line 226
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    .line 227
    :catch_2
    move-exception v6

    goto :goto_3

    .line 215
    :catch_3
    move-exception v6

    .line 216
    .local v6, "ioex":Ljava/io/IOException;
    :try_start_5
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 217
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MimetypesFileTypeMap: can\'t load "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 218
    nop

    .line 217
    invoke-static {v7, v6}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    .end local v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    if-eqz v5, :cond_9

    .line 226
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 195
    .end local v4
    .end local v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :cond_9
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 223
    .restart local v4
    .restart local v5
    :goto_4
    nop

    .line 225
    if-eqz v5, :cond_a

    .line 226
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    .line 227
    :catch_4
    move-exception v7

    .line 228
    :cond_a
    :goto_5
    :try_start_8
    throw v6

    .line 231
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    move-exception v1

    .line 232
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MimetypesFileTypeMap: can\'t load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    .end local v1
    :cond_b
    :goto_6
    if-nez v0, :cond_c

    .line 238
    const-string v1, "MimetypesFileTypeMap: !anyLoaded"

    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavax/activation/MimetypesFileTypeMap;->loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;

    move-result-object v1

    .line 240
    .local v1, "mf":Lcom/sun/activation/registries/MimeTypeFile;
    if-eqz v1, :cond_c

    .line 241
    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 243
    .end local v1
    :cond_c
    return-void
.end method

.method private loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 249
    const/4 v0, 0x0

    .line 252
    .local v0, "mtf":Lcom/sun/activation/registries/MimeTypeFile;
    :try_start_0
    new-instance v1, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v1, p1}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/lang/String;)V

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    .line 256
    :goto_0
    return-object v0
.end method

.method private loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    move-object v1, v0

    .line 149
    .local v1, "clis":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1}, Ljavax/activation/SecuritySupport;->getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 150
    if-eqz v1, :cond_2

    .line 151
    new-instance v2, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v2, v1}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/io/InputStream;)V

    .line 152
    .local v2, "mf":Lcom/sun/activation/registries/MimeTypeFile;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MimetypesFileTypeMap: successfully loaded mime types file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 155
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    nop

    .line 169
    if-eqz v1, :cond_1

    .line 170
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 155
    :cond_1
    :goto_0
    return-object v2

    .line 157
    .end local v2
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MimetypesFileTypeMap: not loading mime types file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 169
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    if-eqz v1, :cond_6

    .line 170
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 171
    :catch_1
    move-exception v2

    goto :goto_1

    .line 167
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 164
    :catch_2
    move-exception v2

    .line 165
    .local v2, "sex":Ljava/lang/SecurityException;
    :try_start_4
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MimetypesFileTypeMap: can\'t load "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    .end local v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    if-eqz v1, :cond_6

    .line 170
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 161
    :catch_3
    move-exception v2

    .line 162
    .local v2, "e":Ljava/io/IOException;
    :try_start_6
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MimetypesFileTypeMap: can\'t load "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    .end local v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    if-eqz v1, :cond_6

    .line 170
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 173
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_6
    :goto_1
    return-object v0

    .line 167
    :goto_2
    nop

    .line 169
    if-eqz v1, :cond_7

    .line 170
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 171
    :catch_4
    move-exception v2

    .line 172
    :cond_7
    :goto_3
    throw v0
.end method


# virtual methods
.method public declared-synchronized addMimeTypes(Ljava/lang/String;)V
    .locals 3
    .param p1, "mime_types"    # Ljava/lang/String;

    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    new-instance v2, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v2}, Lcom/sun/activation/registries/MimeTypeFile;-><init>()V

    aput-object v2, v0, v1

    .line 295
    :cond_0
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sun/activation/registries/MimeTypeFile;->appendToRegistry(Ljava/lang/String;)V

    .line 296
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 291
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public getContentType(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p1, "f"    # Ljava/io/File;

    .line 307
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/activation/MimetypesFileTypeMap;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    monitor-enter p0

    .line 320
    :try_start_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 322
    .local v0, "dot_pos":I
    if-gez v0, :cond_0

    .line 323
    sget-object v1, Ljavax/activation/MimetypesFileTypeMap;->defaultType:Ljava/lang/String;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 325
    :cond_0
    add-int/lit8 v1, v0, 0x1

    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "file_ext":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 327
    sget-object v2, Ljavax/activation/MimetypesFileTypeMap;->defaultType:Ljava/lang/String;

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 329
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_2
    iget-object v3, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 336
    .end local v2
    sget-object v2, Ljavax/activation/MimetypesFileTypeMap;->defaultType:Ljava/lang/String;

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 330
    .restart local v2
    :cond_2
    :try_start_3
    iget-object v3, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    aget-object v3, v3, v2

    if-nez v3, :cond_3

    .line 331
    goto :goto_1

    .line 332
    :cond_3
    iget-object v3, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lcom/sun/activation/registries/MimeTypeFile;->getMIMETypeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, "result":Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_4

    .line 334
    monitor-exit p0

    return-object v3

    .line 329
    .end local v3
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    .end local v0
    .end local v1
    .end local v2
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method
